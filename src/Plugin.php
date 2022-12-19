<?php

/**
 * Plugin main class.
 */

namespace WPDesk\CSVExporter;

use CSVExporterVendor\WPDesk\PluginBuilder\Plugin\AbstractPlugin;
use CSVExporterVendor\WPDesk\PluginBuilder\Plugin\HookableCollection;
use CSVExporterVendor\WPDesk\PluginBuilder\Plugin\HookableParent;
use Psr\Log\LoggerAwareInterface;
use Psr\Log\LoggerAwareTrait;

use League\Csv\CannotInsertRecord;
use League\Csv\Writer;
use League\Csv\Reader;
use SplTempFileObject;

/**
 * Main plugin class. The most important flow decisions are made here.
 *
 * @codeCoverageIgnore
 */
class Plugin extends AbstractPlugin implements LoggerAwareInterface, HookableCollection {







	use LoggerAwareTrait;
	use HookableParent;

	/**
	 * Init.
	 *
	 * @return void
	 */
	public function init() {
		parent::init();
		$this->hooks();
	}
	/**
	 * Init hooks.
	 *
	 * @return void
	 */
	public function hooks(): void {
		parent::hooks();
		add_action( 'admin_menu', [ $this, 'register_menu' ] );
	}
	/**
	 * Add to admin menu.
	 *
	 * @return void
	 */
	public function register_menu(): void {
		add_menu_page(
			'CSV Exporter',
			'Eksport produktów',
			'manage_options',
			'csv-exporter',
			function () {
				$this->create_csv();
			}
		);
	}
	/**
	 * Get woo products.
	 *
	 * @return array<mixed>
	 */
	public function get_products(): array {
		$products = [];
		$query    = new \WP_Query(
			[
				'posts_per_page' => -1,
				'post_type'      => [ 'product', 'product_variation' ],
			]
		);

		while ( $query->have_posts() ) {
			$query->the_post();
			$product_id = wc_get_product( get_the_ID() );
			if ( $product_id ) {
				if ( $product_id->is_type( 'variation' ) ) {
					$id = $product_id->get_parent_id();
				} else {
					$id = $product_id->get_id();
				}
				$product_cats = [];
				$cats         = get_the_terms( $id, 'product_cat' );
				if ( is_array( $cats ) ) {
					foreach ( $cats as $cat ) {
						$product_cats[] = $cat->name;
					}
				} else {
					$product_cats = $cats;
				}
				$products[] = [
					$product_id->get_name(),
					$product_id->get_sku(),
					is_array( $product_cats ) ? implode( ',', $product_cats ) : $product_cats,
					$product_id->get_regular_price(),
					$product_id->get_sale_price() ? $product_id->get_sale_price() : $product_id->get_regular_price(),

				];
			}

			wp_reset_postdata();
		}

		return $products;
	}

	/**
	 * Generate csv.
	 *
	 * @return void
	 */
	public function create_csv() {
		$header[] = [
			'Nazwa',
			'SKU',
			'Kategorie',
			'Cena',
			'Cena ze zniżką',
		];
		$products = $this->get_products();
		$products = array_merge( $header, $products );
		try {
			$file = Writer::createFromFileObject( new SplTempFileObject() );
			$file->setOutputBOM( Reader::BOM_UTF8 );
			$file->setDelimiter( ';' );

			$file->insertAll( $products );
			ob_end_clean();
			$file->output( 'produkty.csv' );
			die;
		} catch ( CannotInsertRecord $e ) {
			$e->getRecord();
		}
	}
}
