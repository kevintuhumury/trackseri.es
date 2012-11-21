class App.Collections.TvShows extends Backbone.Collection

  model: App.Models.TvShow

  url: ->
    "trackseri.es.json"

  parse: (response) ->
    console.log response
