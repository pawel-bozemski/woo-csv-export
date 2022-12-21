<?php

namespace WPDesk\CSVExporter;

// phpcs:ignore
if (isset($_POST['btn-csv'])) {
	$func = new PluginFunctions();
	$func->create_csv( $_POST['offset'] );
}
?>

<div class="exporter__wrapper">
	<form class="exporter" method="post">
		<h1><?php echo esc_html( __( 'CSV Exporter', 'csv-exporter' ) ); ?></h1>
		<p><?php echo esc_html( __( 'This tool allows you to export products to csv file', 'csv-exporter' ) ); ?></p>
		<p><?php echo esc_html( __( 'You can export 250 products at once', 'csv-exporter' ) ); ?></p>
		<p><?php echo esc_html( __( 'If you want to export more than 250 products, skip products already exported, by typing number of products to skip', 'csv-exporter' ) ); ?></p>
		<label for="offset"><?php echo esc_html( __( 'How many products to skip?', 'csv-exporter' ) ); ?></label>
		<input type="number" name="offset" id="offset" value="0" min="0" step="1"> <br> <br>
		<button type="submit" value="Generate csv" name="btn-csv"> <?php echo esc_html( __( 'Export Products', 'csv-exporter' ) ); ?> </button>
	</form>
</div>
