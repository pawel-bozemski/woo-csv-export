<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitCSVExporter
{
    public static $files = array (
        '9e4824c5afbdc1482b6025ce3d4dfde8' => __DIR__ . '/..' . '/league/csv/src/functions_include.php',
    );

    public static $prefixLengthsPsr4 = array (
        'W' => 
        array (
            'WPDesk\\CSVExporter\\' => 19,
        ),
        'P' => 
        array (
            'Psr\\Log\\' => 8,
        ),
        'L' => 
        array (
            'League\\Csv\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'WPDesk\\CSVExporter\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
        'League\\Csv\\' => 
        array (
            0 => __DIR__ . '/..' . '/league/csv/src',
        ),
    );

    public static $classMap = array (
        'CSVExporterVendor\\Psr\\Container\\ContainerExceptionInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/container/src/ContainerExceptionInterface.php',
        'CSVExporterVendor\\Psr\\Container\\ContainerInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/container/src/ContainerInterface.php',
        'CSVExporterVendor\\Psr\\Container\\NotFoundExceptionInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/container/src/NotFoundExceptionInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\MessageInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/MessageInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\RequestInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/RequestInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\ResponseInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/ResponseInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\ServerRequestInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/ServerRequestInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\StreamInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/StreamInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\UploadedFileInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/UploadedFileInterface.php',
        'CSVExporterVendor\\Psr\\Http\\Message\\UriInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/http-message/src/UriInterface.php',
        'CSVExporterVendor\\Psr\\Log\\AbstractLogger' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/AbstractLogger.php',
        'CSVExporterVendor\\Psr\\Log\\InvalidArgumentException' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/InvalidArgumentException.php',
        'CSVExporterVendor\\Psr\\Log\\LogLevel' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/LogLevel.php',
        'CSVExporterVendor\\Psr\\Log\\LoggerAwareInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/LoggerAwareInterface.php',
        'CSVExporterVendor\\Psr\\Log\\LoggerAwareTrait' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/LoggerAwareTrait.php',
        'CSVExporterVendor\\Psr\\Log\\LoggerInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/LoggerInterface.php',
        'CSVExporterVendor\\Psr\\Log\\LoggerTrait' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/LoggerTrait.php',
        'CSVExporterVendor\\Psr\\Log\\NullLogger' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/NullLogger.php',
        'CSVExporterVendor\\Psr\\Log\\Test\\DummyTest' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/Test/DummyTest.php',
        'CSVExporterVendor\\Psr\\Log\\Test\\LoggerInterfaceTest' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/Test/LoggerInterfaceTest.php',
        'CSVExporterVendor\\Psr\\Log\\Test\\TestLogger' => __DIR__ . '/../..' . '/vendor_prefixed/psr/log/Psr/Log/Test/TestLogger.php',
        'CSVExporterVendor\\Psr\\SimpleCache\\CacheException' => __DIR__ . '/../..' . '/vendor_prefixed/psr/simple-cache/src/CacheException.php',
        'CSVExporterVendor\\Psr\\SimpleCache\\CacheInterface' => __DIR__ . '/../..' . '/vendor_prefixed/psr/simple-cache/src/CacheInterface.php',
        'CSVExporterVendor\\Psr\\SimpleCache\\InvalidArgumentException' => __DIR__ . '/../..' . '/vendor_prefixed/psr/simple-cache/src/InvalidArgumentException.php',
        'CSVExporterVendor\\WPDesk\\Notice\\AjaxHandler' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-notice/src/WPDesk/Notice/AjaxHandler.php',
        'CSVExporterVendor\\WPDesk\\Notice\\Factory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-notice/src/WPDesk/Notice/Factory.php',
        'CSVExporterVendor\\WPDesk\\Notice\\Notice' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-notice/src/WPDesk/Notice/Notice.php',
        'CSVExporterVendor\\WPDesk\\Notice\\PermanentDismissibleNotice' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-notice/src/WPDesk/Notice/PermanentDismissibleNotice.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\BuildDirector\\LegacyBuildDirector' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/BuildDirector/LegacyBuildDirector.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Builder\\AbstractBuilder' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Builder/AbstractBuilder.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Builder\\InfoActivationBuilder' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Builder/InfoActivationBuilder.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Builder\\InfoBuilder' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Builder/InfoBuilder.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\AbstractPlugin' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/AbstractPlugin.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\Activateable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/Activateable.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\ActivationAware' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/ActivationAware.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\ActivationTracker' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/ActivationTracker.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\Conditional' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/Conditional.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\Deactivateable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/Deactivateable.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\Hookable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/Hookable.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\HookableCollection' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/HookableCollection.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\HookableParent' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/HookableParent.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\HookablePluginDependant' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/HookablePluginDependant.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\PluginAccess' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/PluginAccess.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\SlimPlugin' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/SlimPlugin.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Plugin\\TemplateLoad' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/TemplateLoad.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\Exception\\ClassAlreadyExists' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/Exception/ClassAlreadyExists.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\Exception\\ClassNotExists' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/Exception/ClassNotExists.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\PluginStorage' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/PluginStorage.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\StaticStorage' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/StaticStorage.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\StorageFactory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/StorageFactory.php',
        'CSVExporterVendor\\WPDesk\\PluginBuilder\\Storage\\WordpressFilterStorage' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Storage/WordpressFilterStorage.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\BuilderTrait' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/BuilderTrait.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\InitializationFactory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/InitializationFactory.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\InitializationStrategy' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/InitializationStrategy.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\PluginDisablerByFileTrait' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/PluginDisablerByFileTrait.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\Simple\\SimpleFactory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/Simple/SimpleFactory.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\Simple\\SimpleFreeStrategy' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/Simple/SimpleFreeStrategy.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\Simple\\SimplePaidStrategy' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/Simple/SimplePaidStrategy.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\Initialization\\Simple\\TrackerInstanceAsFilterTrait' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/Initialization/TrackerInstanceAsFilterTrait.php',
        'CSVExporterVendor\\WPDesk\\Plugin\\Flow\\PluginBootstrap' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-plugin-flow-common/src/PluginBootstrap.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\Assets' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/Assets.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\OptInOptOut' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/OptInOptOut.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\OptInPage' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/OptInPage.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\OptOut' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/OptOut.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\PluginActionLinks' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/PluginActionLinks.php',
        'CSVExporterVendor\\WPDesk\\Tracker\\Shop' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/PSR/WPDesk/Tracker/Shop.php',
        'CSVExporterVendor\\WPDesk\\View\\PluginViewBuilder' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/PluginViewBuilder.php',
        'CSVExporterVendor\\WPDesk\\View\\Renderer\\LoadTemplatePlugin' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Renderer/LoadTemplatePlugin.php',
        'CSVExporterVendor\\WPDesk\\View\\Renderer\\Renderer' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Renderer/Renderer.php',
        'CSVExporterVendor\\WPDesk\\View\\Renderer\\SimplePhpRenderer' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Renderer/SimplePhpRenderer.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\ChainResolver' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/ChainResolver.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\DirResolver' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/DirResolver.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\Exception\\CanNotResolve' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/Exception/CanNotResolve.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\NullResolver' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/NullResolver.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\Resolver' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/Resolver.php',
        'CSVExporterVendor\\WPDesk\\View\\Resolver\\WPThemeResolver' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-view/src/Resolver/WPThemeResolver.php',
        'CSVExporterVendor\\WPDesk_Basic_Requirement_Checker' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-basic-requirements/src/Basic_Requirement_Checker.php',
        'CSVExporterVendor\\WPDesk_Basic_Requirement_Checker_Factory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-basic-requirements/src/Basic_Requirement_Checker_Factory.php',
        'CSVExporterVendor\\WPDesk_Basic_Requirement_Checker_With_Update_Disable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-basic-requirements/src/Basic_Requirement_Checker_With_Update_Disable.php',
        'CSVExporterVendor\\WPDesk_Buildable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/WithoutNamespace/Buildable.php',
        'CSVExporterVendor\\WPDesk_Has_Plugin_Info' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/WithoutNamespace/Has_Plugin_Info.php',
        'CSVExporterVendor\\WPDesk_Plugin_Info' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/WithoutNamespace/Plugin_Info.php',
        'CSVExporterVendor\\WPDesk_Requirement_Checker' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-basic-requirements/src/Requirement_Checker.php',
        'CSVExporterVendor\\WPDesk_Requirement_Checker_Factory' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-basic-requirements/src/Requirement_Checker_Factory.php',
        'CSVExporterVendor\\WPDesk_Tracker' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/class-wpdesk-tracker.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Gateways' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-gateways.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Identification' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-identification.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Identification_Gdpr' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-identification-gdpr.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Jetpack' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-jetpack.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_License_Emails' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-license-emails.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Orders' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-orders.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Orders_Country' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-orders-country.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Orders_Month' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-orders-month.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Plugins' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-plugins.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Products' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-products.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Products_Variations' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-products-variations.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Server' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-server.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Settings' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-settings.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Shipping_Classes' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-shipping-classes.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Shipping_Methods' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-shipping-methods.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Shipping_Methods_Zones' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-shipping-methods-zones.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Templates' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-templates.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Theme' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-theme.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_User_Agent' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-user-agent.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Users' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-users.php',
        'CSVExporterVendor\\WPDesk_Tracker_Data_Provider_Wordpress' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/data_provider/class-wpdesk-tracker-data-provider-wordpress.php',
        'CSVExporterVendor\\WPDesk_Tracker_Factory_Prefixed' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/class-wpdesk-tracker-factory-prefixed.php',
        'CSVExporterVendor\\WPDesk_Tracker_Interface' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/class-wpdesk-tracker-interface.php',
        'CSVExporterVendor\\WPDesk_Tracker_Persistence_Consent' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/persistence/class-wpdesk-tracker-persistence-consent.php',
        'CSVExporterVendor\\WPDesk_Tracker_Sender' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/sender/class-wpdesk-tracker-sender.php',
        'CSVExporterVendor\\WPDesk_Tracker_Sender_Exception_WpError' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/sender/Exception/class-wpdesk-tracker-sender-exception-wperror.php',
        'CSVExporterVendor\\WPDesk_Tracker_Sender_Logged' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/sender/class-wpdesk-tracker-sender-logged.php',
        'CSVExporterVendor\\WPDesk_Tracker_Sender_Wordpress_To_WPDesk' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-wpdesk-tracker/src/sender/class-wpdesk-tracker-sender-wordpress-to-wpdesk.php',
        'CSVExporterVendor\\WPDesk_Translable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/WithoutNamespace/Translable.php',
        'CSVExporterVendor\\WPDesk_Translatable' => __DIR__ . '/../..' . '/vendor_prefixed/wpdesk/wp-builder/src/Plugin/WithoutNamespace/Translatable.php',
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'WPDesk\\Helper\\HelperAsLibrary' => __DIR__ . '/..' . '/wpdesk/wp-wpdesk-helper-override/src/Helper/HelperAsLibrary.php',
        'WPDesk_Tracker_Data_Provider' => __DIR__ . '/..' . '/wpdesk/wp-wpdesk-helper-override/src/Interop/Tracker/class-wpdesk-tracker-data-provider.php',
        'WPDesk_Tracker_Factory' => __DIR__ . '/..' . '/wpdesk/wp-wpdesk-helper-override/src/Helper/TrackerFactory.php',
        'WPDesk_Tracker_Interface' => __DIR__ . '/..' . '/wpdesk/wp-wpdesk-helper-override/src/Interop/Tracker/class-wpdesk-tracker-interface.php',
        'WPDesk_Tracker_Sender' => __DIR__ . '/..' . '/wpdesk/wp-wpdesk-helper-override/src/Interop/Tracker/class-wpdesk-tracker-sender.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitCSVExporter::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitCSVExporter::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitCSVExporter::$classMap;

        }, null, ClassLoader::class);
    }
}
