class Playon.Views.EventsShow extends Backbone.View
    
  template: JST['events/show']
  
  initialize: ->
    @model.on("change", @render, @)
    @model.fetch()
  
  render: ->
    @$el.html(@template({event: @model}))
    @
