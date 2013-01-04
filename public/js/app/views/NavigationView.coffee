# View.js
# -------
define ["zepto", "backbone", "models/Model", "text!templates/NavigationView.html"],

  ($, Backbone, Model, template) ->

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

      # The DOM Element associated with @view
      el: "body"

      # View constructor
      initialize: () ->

        # Calls the view's render method
        @render()

      # View Event Handlers
      events: {
      }

      # Renders the view's template to the UI
      render: () ->

          # Setting the view's template property using the Underscore template method
        viewConfig = _.merge @config.template,
          {}

        @template = _.template template, 
          viewConfig

          # Dynamically updates the UI with the view's template
        @$el.html @template

          # Maintains chainability
        return @
        