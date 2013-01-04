
define ["zepto", "backbone", "models/Model", "views/NavigationView"],
  ($, Backbone, Model, NavigationView) ->
    class IndexView extends NavigationView

      initialize: ->
          # Setting the view's template property using the Underscore template method
        @config.template = _.merge @config.template,
          {
            titleBar:
              title: "Index"
          }
        super()