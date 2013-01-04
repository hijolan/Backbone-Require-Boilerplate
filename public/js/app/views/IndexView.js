// Generated by CoffeeScript 1.3.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(["zepto", "backbone", "models/Model", "views/NavigationView"], function($, Backbone, Model, NavigationView) {
    var IndexView;
    return IndexView = (function(_super) {

      __extends(IndexView, _super);

      function IndexView() {
        return IndexView.__super__.constructor.apply(this, arguments);
      }

      IndexView.prototype.initialize = function() {
        this.config.template = _.merge(this.config.template, {
          titleBar: {
            title: "Index"
          }
        });
        return IndexView.__super__.initialize.call(this);
      };

      return IndexView;

    })(NavigationView);
  });

}).call(this);
