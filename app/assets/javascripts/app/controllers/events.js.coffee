class App.Events extends Spine.Controller
  # elements:
  #   '.items': items
  # 
  # events:
  #   'click .item': 'itemClick'
  
  #template: JST['app/views/events/test']

  constructor: ->
    super
    App.Event.bind("refresh change", @render)
    App.Event.fetch()
    
  render: =>
    @html @view("events/index")(events: App.Event.all())
