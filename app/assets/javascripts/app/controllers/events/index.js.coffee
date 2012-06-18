class App.EventsIndex extends Spine.Controller
  
  constructor: ->
    super
    App.Event.bind "refresh", @render
    App.Event.fetch()
    @active @render
  
  render: =>
    @html @view("events/index")(events: App.Event.all())