// Generated by CoffeeScript 1.3.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(["zepto", "backbone", "models/Model", "text!templates/NavigationView.html"], function($, Backbone, Model, Template) {
    var NavigationView;
    return NavigationView = (function(_super) {

      __extends(NavigationView, _super);

      function NavigationView() {
        return NavigationView.__super__.constructor.apply(this, arguments);
      }

      NavigationView.prototype.config = {
        template: {
          titleBar: {
            actionButton: {
              title: "Next",
              href: "#next"
            },
            backButton: {
              title: "Back",
              href: "#"
            },
            title: "Backbone-Require-Boilerplate (BRB)"
          },
          content: {
            text: "",
            el: ".content"
          }
        }
      };

      NavigationView.prototype.el = ".content-container";

      NavigationView.prototype.events = {};

      NavigationView.prototype.initialize = function() {
        NavigationView.__super__.initialize.call(this);
        this.template = Template;
        return this.render();
      };

      NavigationView.prototype.render = function() {
        var viewConfig;
        viewConfig = _.merge({}, this.config.template, {});
        this.$el.html(_.template(this.template, viewConfig));
        return this;
      };

      return NavigationView;

    })(Backbone.View);
  });

}).call(this);
