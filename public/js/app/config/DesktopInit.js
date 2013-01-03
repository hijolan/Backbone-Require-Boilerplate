// DesktopInit.js
// --------------
require.config({

  // Sets the js folder as the base directory for all future relative paths
  baseUrl: "./js",

  // 3rd party script alias names (Easier to type "jquery" than "libs/jquery, etc")
  // probably a good idea to keep version numbers in the file names for updates checking
  paths: {

      // Core Libraries
      // --------------
      // zepto
      "zepto": ["libs/zepto"],

      "underscore": "libs/lodash",

      "backbone": "libs/backbone",

      // Plugins
      // -------
      "backbone.validateAll": "libs/plugins/Backbone.validateAll",

      "bootstrap": "libs/plugins/bootstrap",

      "text": "libs/plugins/text",

      // Application Folders
      // -------------------
      "collections": "app/collections",

      "models": "app/models",

      "routers": "app/routers",

      "templates": "app/templates",

      "views": "app/views"

  },

  // Sets the configuration for your third party scripts that are not AMD compatible
  shim: {

      // Twitter Bootstrap jQuery plugins
      "bootstrap": ["zepto"],

      // Backbone
      "backbone": {

        // Depends on underscore/lodash and zepto
        "deps": ["underscore", "zepto"],

        // Exports the global window.Backbone object
        "exports": "Backbone"

      },

      // Backbone.validateAll plugin that depends on Backbone
      "backbone.validateAll": ["backbone"]

  }

});

// Includes Desktop Specific JavaScript files here (or inside of your Desktop router)
require(["zepto", "backbone", "routers/DesktopRouter", "bootstrap", "backbone.validateAll"],

  function($, Backbone, DesktopRouter) {

    // Instantiates a new Desktop Router instance
    new DesktopRouter();

  }

);