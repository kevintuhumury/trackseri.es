class App.Views.TvShows extends Backbone.View

  tagName: "ul"

  view: ->
    new App.Views.TvShowItem model: []

  render: =>
    $(@el).append @view().render().el
    @
