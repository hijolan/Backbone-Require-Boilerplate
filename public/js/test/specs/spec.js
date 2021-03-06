// Generated by CoffeeScript 1.3.3
(function() {

  define(["zepto", "backbone", "text!templates/NavigationView.html", "views/IndexView", "models/Model", "collections/Collection", "routers/DesktopRouter", "jasminejquery"], function($, Backbone, NavigationView, Index, Model, Collection, DesktopRouter) {
    return describe("Backbone-Require-Boilerplate (BRB)", function() {
      describe("Backbone views", function() {
        beforeEach(function() {
          return this.view = new Index();
        });
        it("should contain the correct view element focus", function() {
          this.router = new DesktopRouter();
          return expect(this.view.$el.selector).toEqual(".content-container");
        });
        return it("should contain the appropriate template", function() {
          return expect(this.view.template).toEqual(NavigationView);
        });
      });
      describe("Backbone models", function() {
        beforeEach(function() {
          this.model = new Model();
          return spyOn(Model.prototype, "validate").andCallThrough();
        });
        it("should be in a valid state", function() {
          return expect(this.model.isValid()).toBe(true);
        });
        return it("should call the validate method when setting a property", function() {
          this.model.set({
            example: "test"
          });
          return expect(Model.prototype.validate).toHaveBeenCalled();
        });
      });
      describe("Backbone collections", function() {
        beforeEach(function() {
          return this.collection = new Collection();
        });
        return it("should contain the correct number of models", function() {
          return expect(this.collection.length).toEqual(0);
        });
      });
      return describe("Backbone desktop routers", function() {
        beforeEach(function() {
          Backbone.history.stop();
          this.router = new DesktopRouter();
          this.routeSpy = jasmine.createSpy("home");
          return this.router.on("route:index", this.routeSpy);
        });
        return it("should call the desktop router home method when there is no hash on the url", function() {
          this.router.navigate("elsewhere");
          this.router.navigate("", {
            trigger: true
          });
          return expect(this.routeSpy).toHaveBeenCalled();
        });
      });
    });
  });

}).call(this);
