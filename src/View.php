<?php

namespace WPDesk\CSVExporter;

// phpcs:ignore
if ( isset( $_POST['btn-csv'] ) ) {
	$func = new PluginFunctions();
	$func->create_csv();
}
?>

<div class="exporter__wrapper">
	<form class="exporter" method="post">
		<h1><?php echo esc_html( __( 'CSV Exporter', 'csv-exporter' ) ); ?></h1>
		<p><?php echo esc_html( __( 'This tool allows you to export all products to csv file', 'csv-exporter' ) ); ?></p>
		<button type="submit" value="Generate csv" name="btn-csv"> <?php echo esc_html( __( 'Export Products', 'csv-exporter' ) ); ?> </button>
	</form>
</div>

