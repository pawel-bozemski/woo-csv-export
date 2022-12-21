<?php

/**
 * Plugin function class.
 */

namespace WPDesk\CSVExporter;

use League\Csv\CannotInsertRecord;
use League\Csv\Writer;
use League\Csv\Reader;
use SplTempFileObject;

/**
 * Plugin function class. The most important flow decisions are made here.
 *
 * @codeCoverageIgnore
 */
class PluginFunctions {



	/**
	 * Get woo products.
	 *
	 * @return array<mixed>
	 */
	public function get_products( $offset ): array {
		$products = [];
		$query    = new \WP_Query(
			[
				'posts_per_page' => 250,
				'offset'         => $offset,
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
					is_array( $product_cats ) ? implode( ' ', $product_cats ) : $product_cats,
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
	public function create_csv( $offset ) {
		$header[] = [
			__( 'Product name', 'csv-exporter' ),
			__( 'SKU', 'csv-exporter' ),
			__( 'Categories', 'csv-exporter' ),
			__( 'Regural Price', 'csv-exporter' ),
			__( 'Sale Price', 'csv-exporter' ),
		];
		$products = $this->get_products( $offset );
		try {
			$file = Writer::createFromFileObject( new SplTempFileObject() );
			$file->setOutputBOM( Reader::BOM_UTF8 );
			$file->setDelimiter( ',' );
			if ( count( $products ) == 0 ) {
				$products[] = __( 'No products found', 'csv-exporter' );
				$file->insertOne( $products );
			} else {
				$file->insertAll( $products );
			}
			ob_end_clean();
			$file->output( 'produkty.csv' );
			die;
		} catch ( CannotInsertRecord $e ) {
			$e->getRecord();
		}
	}
}
