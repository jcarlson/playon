class App.EventsIndex extends Spine.Controller
  
  constructor: ->
    super
    App.Event.bind "refresh", @render
    @active @render
  
  render: =>
    @html @view("events/index")(events: App.Event.all())