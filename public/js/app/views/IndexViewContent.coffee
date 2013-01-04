define ["zepto", "backbone", "models/Model", "text!templates/LoremIpsum.html"],

  ($, Backbone, Model, template) ->

    class SubViewContent extends Backbone.View

      # View constructor
      initialize: () ->
        # Calls the view's render method
        @render()

      # Renders the view's template to the UI
      render: () ->
        @template = _.template template, 
          {}

        @$el.html @template

          # Maintains chainability
        return @