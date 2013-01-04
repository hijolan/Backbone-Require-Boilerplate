
define ["zepto", "backbone", "models/Model", "views/NavigationView", "views/IndexViewContent"],
  ($, Backbone, Model, NavigationView, IndexViewContent) ->
    class IndexView extends NavigationView
      config:
          template:
            titleBar:
              actionButton: 
                title:  "Next" 
                href:   "#next"
              backButton:
                title:  ""
                href:   "#"
              title: "Index"
            content: ""

      initialize: =>
          # Setting the view's template property using the Underscore template method

        @render()

        new IndexViewContent({el: @$('.content')})