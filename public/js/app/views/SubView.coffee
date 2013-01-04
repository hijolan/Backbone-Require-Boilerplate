
define ["zepto", "backbone", "models/Model", "views/NavigationView", "views/SubViewContent"],
  ($, Backbone, Model, NavigationView, SubViewContent) ->
    class SubView extends NavigationView
      config:
          template:
            titleBar:
              actionButton: 
                title:  "" 
                href:   "#next"
              backButton:
                title:  "Back"
                href:   "#"
              title: "Sub"
            content: ""

      initialize: =>
          # Setting the view's template property using the Underscore template method


        @render()

        new SubViewContent({el: @$('.content')})