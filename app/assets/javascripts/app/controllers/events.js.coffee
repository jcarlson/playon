#= require_tree ./events

class App.Events extends Spine.Stack
  
  controllers:
    index: App.EventsIndex
    show:  App.EventsShow
    
  routes:
    "!/events/:id": "show"
    "!/events":     "index"
    "!/":           "index"
    "/":            "index"
  