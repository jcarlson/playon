class Playon.Views.EventsIndex extends Backbone.View

  template: JST['events/index']
  
  initialize: ->
    @collection.on("reset", @render, @)
    @collection.fetch()
  
  render: ->
    @$el.html(@template({events: @collection}))
    @
