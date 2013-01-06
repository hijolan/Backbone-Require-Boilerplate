# Collection.js
# -------------
define ["zepto","backbone","models/Model"],

  ($, Backbone, Model) ->

    # Creates a new Backbone Collection class object
    return Collection = Backbone.Collection.extend({

      # Tells the Backbone Collection that all of it's models will be of type Model (listed up top as a dependency)
      model: Model

    });