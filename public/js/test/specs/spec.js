// Jasmine Unit Testing Suite
// --------------------------
define(["zepto", "backbone", "text!templates/NavigationView.html", "views/IndexView","models/Model", "collections/Collection", "routers/DesktopRouter", "jasminejquery"],

    function($, Backbone, NavigationView, Index, Model, Collection, DesktopRouter) {

        // Test suite that includes all of the Jasmine unit tests   
        describe("Backbone-Require-Boilerplate (BRB)", function() {

            // Backbone Index Suite: contains all tests related to views
            describe("Backbone views", function() {

                // Runs before every View spec
                beforeEach(function() {

                    // Instantiates a new View instance
                    this.view = new Index();

                });

                it("should contain the correct view element focus", function() {

                    this.router = new DesktopRouter();

                    expect(this.view.$el.selector).toEqual(".content-container");

                });

                it("should contain the appropriate template", function() {

                    expect(this.view.template).toEqual(NavigationView);

                });

            }); // End of the View test suite

            // Backbone Model Suite: contains all tests related to models
            describe("Backbone models", function() {

                // Runs before every Model spec
                beforeEach(function() {

                    // Instantiates a new Model instance
                    this.model = new Model();

                    // We are spying on the _validate method to see if it gets called
                    spyOn(Model.prototype, "validate").andCallThrough();

                });

                it("should be in a valid state", function() {

                    expect(this.model.isValid()).toBe(true);

                });

                it("should call the validate method when setting a property", function() {

                    this.model.set({ example: "test" });

                    expect(Model.prototype.validate).toHaveBeenCalled();

                });

            }); // End of the Model test suite

        // Backbone Collection Suite: contains all tests related to collections
        describe("Backbone collections", function() {

            // Runs before every Collection spec
            beforeEach(function() {

                // Instantiates a new Collection instance
                this.collection = new Collection();

            });

            it("should contain the correct number of models", function() {

                expect(this.collection.length).toEqual(0);

            });

        }); // End of the Collection test suite

        // Backbone Desktop Router Suite: contains all tests related to Desktop routers
        describe("Backbone desktop routers", function () {

            // Runs before every Desktop Router spec
            beforeEach(function () {

                // Stops the router from listening to hashchange events (Required because Backbone will only allow you to run Backbone.history.start() once for each page load.)
                Backbone.history.stop();

                // Instantiates a new Router instance
                this.router = new DesktopRouter();

                // Creates a Jasmine spy
                this.routeSpy = jasmine.createSpy("home");

                // When the route index method is called, the Jasmine spy is also called
                this.router.on("route:index", this.routeSpy);

            });

            it("should call the desktop router home method when there is no hash on the url", function() {

                // Navigates to a different route
                this.router.navigate("elsewhere");

                // Navigates to the default route
                this.router.navigate("", { trigger: true });
    
                // Expects the Jasmine spy to have been called
                expect(this.routeSpy).toHaveBeenCalled();

            });

        }); // End of the Desktop Router test suite

    }); // End of the BRB test suite

});