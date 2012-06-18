class App.EventsIndex extends Spine.Controller
  
  constructor: ->
    super
    App.Event.bind "refresh", @render
    @active @render
  
  render: =>
    @log "rendering index view"
    @html @view("events/index")(events: App.Event.all())