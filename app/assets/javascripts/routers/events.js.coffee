class Playon.Routers.Events extends Backbone.Router
  
  routes:
    '': 'index',
    'events': 'index',
    'events/:id': 'show'
  
  index: ->
    view = new Playon.Views.EventsIndex collection: new Playon.Collections.Events()
    $("#events").html(view.render().el)
  
  show: (id) ->
    view = new Playon.Views.EventsShow model: new Playon.Models.Event({id:id})
    $("#events").html(view.render().el)
