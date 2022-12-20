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
		add_submenu_page(
			'woocommerce',
			'CSV Exporter',
			__( 'Export Products', 'csv-exporter' ),
			'manage_options',
			'csv-exporter',
			function () {
				include 'View.php';
			}
		);
	}
}
