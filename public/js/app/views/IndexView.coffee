
define ["zepto", "backbone", "models/Model", "views/NavigationView", "views/IndexViewContent"],
  ($, Backbone, Model, NavigationView, IndexViewContent) ->
    class IndexView extends NavigationView

      initialize: ->
        # Setting the view's template property using the Underscore template method
        @config = _.merge { }, @config,
          {
            template:
              titleBar:
                title: "Index"
                backButton:
                  title: ""
          }

          super()

      render: ->
        super()

        new IndexViewContent({el: @$(@config.template.content.el)})