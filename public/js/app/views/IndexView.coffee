
define ["zepto", "backbone", "models/Model", "views/NavigationView", "text!templates/LoremIpsum.html"],
  ($, Backbone, Model, NavigationView, contentText) ->
    class IndexView extends NavigationView

      initialize: ->
          # Setting the view's template property using the Underscore template method
        @config.template = _.merge @config.template,
          {
            titleBar:
              title: "Index"
            content: contentText
          }
        super()