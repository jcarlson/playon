Playon.Routers.Events = Backbone.Router.extend({
    
    routes: {
        '': 'index'
    },
    
    initialize: function() {
        this.collection = new Playon.Collections.Events();
        this.collection.fetch();
    },
    
    index: function() {
        var view = new Playon.Views.EventsIndex({
            collection: this.collection
        });
        $("#events").html(view.render().el)
    }
    
});
