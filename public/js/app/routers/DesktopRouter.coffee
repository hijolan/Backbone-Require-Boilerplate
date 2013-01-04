# DesktopRouter.js
# ----------------
define ["zepto", "backbone", "models/Model", "views/IndexView", "views/SubView", "collections/Collection"],

  ($, Backbone, Model, IndexView, SubView, Collection) -> 

    return DesktopRouter = Backbone.Router.extend

      initialize: () ->
        # Tells Backbone to start watching for hashchange events
        Backbone.history.start()

      # All of your Backbone Routes (add more)
      routes:
        "": "index"
        "next": "sub"

      index: () ->
        # Instantiates a new view which will render the header text to the page
        @currentView = new IndexView()

      sub: () ->
        @currentView = new SubView()