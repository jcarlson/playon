class App.EventsShow extends Spine.Controller
  
  constructor: ->
    super
    @event = new App.Event
    @event.bind "change", @render
    @active @change
  
  change: (params) =>
    if App.Event.exists(params.id)
      @event.load App.Event.find(params.id).attributes()
      @render()
    else
      @event.load params
      @event.trigger "change", "reload"
  
  render: =>
    @log "rendering show view"
    @html @view("events/show")(event: @event) unless @event.isNew()
