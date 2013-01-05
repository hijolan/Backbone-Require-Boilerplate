# Model.js
# --------
define ["zepto", "backbone"], ($, Backbone) -> 

  # Creates a new Backbone Model class object
  return Model = Backbone.Model.extend 

            # Model Constructor
    initialize: () -> {

    },

      # Default values for all of the Model attributes
    defaults: {

    },

      # Get's called automatically by Backbone when the set and/or save methods are called (Add your own logic)
    validate: (attrs) -> {

    }