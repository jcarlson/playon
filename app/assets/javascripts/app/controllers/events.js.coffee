#= require_tree ./events

class App.Events extends Spine.Stack
  
  constructor: ->
    super
    @delay -> App.Event.fetch()
  
  controllers:
    index: App.EventsIndex
    show:  App.EventsShow
    
  routes:
    "!/events/:id": "show"
    "!/events":     "index"
    "!/":           "index"
    "/":            "index"
  