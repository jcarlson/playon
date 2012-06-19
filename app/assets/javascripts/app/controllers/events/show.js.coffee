class App.EventsShow extends Spine.Controller
  
  constructor: ->
    super
    @event = new App.Event
    @active @change
  
  change: (params) =>
    @event.unbind()
    @event = App.Event.findOrFetch params.id
    @event.bind "change", @render
    @render()
  
  render: =>
    @html @view("events/show")(event: @event) unless @event.isNew()
  