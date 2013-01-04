# View.js
# -------
define ["zepto", "backbone", "models/Model", "text!templates/View1.html"],

  ($, Backbone, Model, template) ->

    return View1 = Backbone.View.extend

      # The DOM Element associated with @view
      el: "body",

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
        @template = _.template template, {}

          # Dynamically updates the UI with the view's template
        @$el.html @template

          # Maintains chainability
        return @

      show: () ->
        $('.page').css position: "absolute"

        direction_coefficient = @options.back ? 1 : -1

        if $('.page').length

          $old = $('.page').not @el

          # This fix was hard-won -
          # just doing .css(property, '') doesn't work!
          $old.get(0).style["margin-left"] = ""
          $old.get(0).style["-webkit-transform"] = ""

          @$el.appendTo('body').hide()

          @$el.show().css "margin-left": 320 * direction_coefficient

          @$el.anim translate3d: -320 * direction_coefficient +'px,0,0',
            0.3,
            'linear'

          $old.anim translate3d: -320 * direction_coefficient + 'px,0,0',
            0.3, 
            'linear', 
            () ->
              $old.remove()
              $('.page').css position: "static"
        else
          @$el.appendTo('body').hide()
          @$el.show()
        
        window.scrollTo 0, 0