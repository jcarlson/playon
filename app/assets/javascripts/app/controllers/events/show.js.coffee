class App.EventsShow extends Spine.Controller
  
  constructor: ->
    super
    App.Event.bind "refresh", @render
    @active @change
  
  change: (params) =>
    @currentId = params.id
    if App.Event.exists(@currentId)
      @render()
    else
      App.Event.fetch(params)
    
  
  render: (params) =>
    @html @view("events/show")(event: App.Event.find(@currentId)) if @currentId
