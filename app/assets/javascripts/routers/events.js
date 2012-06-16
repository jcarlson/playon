Playon.Routers.Events = Backbone.Router.extend({
    
    routes: {
        '': 'index',
        'events': 'index',
        'events/:id': 'show'
    },
    
    index: function() {
        var view = new Playon.Views.EventsIndex({
            collection: new Playon.Collections.Events()
        });
        $("#events").html(view.render().el)
    },
    
    show: function(id) {
        var view = new Playon.Views.EventsShow({
            model: new Playon.Models.Event({id:id})
        });
        $("#events").html(view.render().el);
    }
    
});
