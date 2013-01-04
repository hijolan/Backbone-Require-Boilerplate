// Generated by CoffeeScript 1.3.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(["zepto", "backbone", "models/Model", "text!templates/LoremIpsum.html"], function($, Backbone, Model, template) {
    var SubViewContent;
    return SubViewContent = (function(_super) {

      __extends(SubViewContent, _super);

      function SubViewContent() {
        return SubViewContent.__super__.constructor.apply(this, arguments);
      }

      SubViewContent.prototype.initialize = function() {
        return this.render();
      };

      SubViewContent.prototype.render = function() {
        this.template = _.template(template, {});
        this.$el.html(this.template);
        return this;
      };

      return SubViewContent;

    })(Backbone.View);
  });

}).call(this);