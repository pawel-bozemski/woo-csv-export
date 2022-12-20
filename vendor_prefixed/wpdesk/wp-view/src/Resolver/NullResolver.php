<?php

namespace CSVExporterVendor\WPDesk\View\Resolver;

use CSVExporterVendor\WPDesk\View\Renderer\Renderer;
use CSVExporterVendor\WPDesk\View\Resolver\Exception\CanNotResolve;
/**
 * This resolver never finds the file
 *
 * @package WPDesk\View\Resolver
 */
class NullResolver implements \CSVExporterVendor\WPDesk\View\Resolver\Resolver
{
    public function resolve($name, \CSVExporterVendor\WPDesk\View\Renderer\Renderer $renderer = null)
    {
        throw new \CSVExporterVendor\WPDesk\View\Resolver\Exception\CanNotResolve("Null Cannot resolve");
    }
}
