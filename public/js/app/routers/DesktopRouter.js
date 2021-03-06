// Generated by CoffeeScript 1.3.3
(function() {

  define(["zepto", "backbone", "models/Model", "views/IndexView", "views/SubView", "collections/Collection"], function($, Backbone, Model, IndexView, SubView, Collection) {
    var DesktopRouter;
    return DesktopRouter = Backbone.Router.extend({
      initialize: function() {
        return Backbone.history.start();
      },
      routes: {
        "": "index",
        "next": "sub"
      },
      index: function() {
        return this.currentView = new IndexView();
      },
      sub: function() {
        return this.currentView = new SubView();
      }
    });
  });

}).call(this);
