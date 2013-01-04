# DesktopRouter.js
# ----------------
define ["zepto", "backbone", "models/Model", "views/NavigationView", "collections/Collection"],

  ($, Backbone, Model, View1, Collection) -> 

    return DesktopRouter = Backbone.Router.extend

      initialize: () ->

                  # Tells Backbone to start watching for hashchange events
        Backbone.history.start()

      # All of your Backbone Routes (add more)
      routes: {

        # When there is no hash on the url, the home method is called
        "": "index"

      }

      index: () ->
        # Instantiates a new view which will render the header text to the page
        new View1()