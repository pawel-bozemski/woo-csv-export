<?php

namespace CSVExporterVendor\WPDesk\PluginBuilder\Storage;

class StorageFactory
{
    /**
     * @return PluginStorage
     */
    public function create_storage()
    {
        return new \CSVExporterVendor\WPDesk\PluginBuilder\Storage\WordpressFilterStorage();
    }
}
