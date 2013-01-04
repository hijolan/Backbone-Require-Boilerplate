
define ["zepto", "backbone", "models/Model", "views/NavigationView", "views/SubViewContent"],
  ($, Backbone, Model, NavigationView, SubViewContent) ->
    class SubView extends NavigationView

      initialize: ->
        # Setting the view's template property using the Underscore template method
        @config = _.merge { }, @config,
          {
            template:
              titleBar:
                title: "Sub"
                actionButton:
                  title: ""
          }

        @render()

        new SubViewContent({el: @$('.content')})