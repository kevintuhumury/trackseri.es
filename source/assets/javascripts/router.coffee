class App.Router extends Backbone.Router

  routes:
    "": "shows"
    "shows": "shows"
    "show/:id": "show"

  initialize: ->
    console.log "init"

  shows: ->
    @collection().fetch success: =>
      @view new App.Views.TvShows collection: @tvShows

  show: (id) ->
    @view new App.Views.TvShow model: []

  view: (view) ->
    $("#content").html view.render().el

  collection: ->
    @tvShows = new App.Collections.TvShows()

$ ->
  new App.Router()
  Backbone.history.start()
