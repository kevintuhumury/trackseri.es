class App.Views.TvShowItem extends Backbone.View

  tagName: "li"

  template: ->
    JST["app/templates/tv_show_item"] model: @model

  render: =>
    $(@el).html @template()
    @
