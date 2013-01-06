# View.js
# -------
define ["zepto", "backbone", "models/Model", "text!templates/NavigationView.html"],

  ($, Backbone, Model, Template) ->

    class NavigationView extends Backbone.View

      config:
        template:
          titleBar:
            actionButton: 
              title:  "Next" 
              href:   "#next"
            backButton:
              title:  "Back"
              href:   "#"
            title: "Backbone-Require-Boilerplate (BRB)"
          content: {
            text: ""
            el: ".content"
          }

      # The DOM Element associated with @view
      el: ".content-container"

      # View Event Handlers
      events: {
      }

      initialize: () ->
        super()

        @template = Template

        @render()

      # Renders the view's template to the UI
      render: () ->

          # Setting the view's template property using the Underscore template method
        viewConfig = _.merge {}, @config.template,
          {}

          # Dynamically updates the UI with the view's template
        @$el.html _.template @template, 
          viewConfig

          # Maintains chainability
        return @
        