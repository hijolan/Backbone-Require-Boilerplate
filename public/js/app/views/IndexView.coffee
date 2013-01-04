
define ["zepto", "backbone", "models/Model", "views/NavigationView", "views/IndexViewContent"],
  ($, Backbone, Model, NavigationView, IndexViewContent) ->
    class IndexView extends NavigationView

      initialize: ->
          # Setting the view's template property using the Underscore template method
        @config.template = _.merge @config.template,
          {
            titleBar:
              title: "Index"
            content: ""
          }

        super()

        new IndexViewContent({el: @$('.content')})