
define ["zepto", "backbone", "models/Model", "views/NavigationView"],
  ($, Backbone, Model, NavigationView) ->
    class SubView extends NavigationView

      initialize: ->
          # Setting the view's template property using the Underscore template method
        @config.template = _.merge @config.template,
          {
            titleBar:
              title: "Sub"
          }
        super()