class App.Views.TvShow extends Backbone.View

  template: ->
    JST["app/templates/tv_show"] model: @model

  render: =>
    $(@el).html @template()
    @
