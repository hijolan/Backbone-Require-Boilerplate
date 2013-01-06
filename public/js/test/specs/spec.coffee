# Jasmine Unit Testing Suite
# --------------------------
define ["zepto", "backbone", "text!templates/NavigationView.html", "views/IndexView","models/Model", "collections/Collection", "routers/DesktopRouter", "jasminejquery"],

($, Backbone, NavigationView, Index, Model, Collection, DesktopRouter) ->

  # Test suite that includes all of the Jasmine unit tests   
  describe "Backbone-Require-Boilerplate (BRB)", () ->

    # Backbone Index Suite: contains all tests related to views
    describe "Backbone views", () ->

      # Runs before every View spec
      beforeEach () ->

        # Instantiates a new View instance
        @view = new Index()

      it "should contain the correct view element focus", () ->

        @router = new DesktopRouter()

        expect(@view.$el.selector).toEqual(".content-container")

      it "should contain the appropriate template", () ->

        expect(@view.template).toEqual(NavigationView)

    # Backbone Model Suite: contains all tests related to models
    describe "Backbone models", ->

      # Runs before every Model spec
      beforeEach () ->

        # Instantiates a new Model instance
        @model = new Model()
          # We are spying on the _validate method to see if it gets called
        spyOn(Model.prototype, "validate").andCallThrough()

      it "should be in a valid state", () ->
        expect(@model.isValid()).toBe(true)

      it "should call the validate method when setting a property", () ->

        @model.set { example: "test" }

        expect(Model.prototype.validate).toHaveBeenCalled()

    # Backbone Collection Suite: contains all tests related to collections
    describe "Backbone collections", () ->

      # Runs before every Collection spec
      beforeEach () ->

        # Instantiates a new Collection instance
        @collection = new Collection()

      it "should contain the correct number of models", () ->

        expect(@collection.length).toEqual(0)

  # Backbone Desktop Router Suite: contains all tests related to Desktop routers
    describe "Backbone desktop routers", () ->
      # Runs before every Desktop Router spec
      beforeEach () ->

        # Stops the router from listening to hashchange events (Required because Backbone will only allow you to run Backbone.history.start() once for each page load.)
        Backbone.history.stop()

        # Instantiates a new Router instance
        @router = new DesktopRouter()

        # Creates a Jasmine spy
        @routeSpy = jasmine.createSpy "home" 

        # When the route index method is called, the Jasmine spy is also called
        @router.on "route:index", @routeSpy

      it "should call the desktop router home method when there is no hash on the url", () ->
        # Navigates to a different route
        @router.navigate "elsewhere"

        # Navigates to the default route
        @router.navigate "", { trigger: true }

        # Expects the Jasmine spy to have been called
        expect(@routeSpy).toHaveBeenCalled()