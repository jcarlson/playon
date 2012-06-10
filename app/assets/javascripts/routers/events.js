Playon.Routers.Events = Backbone.Router.extend({
    
    routes: {
        '': 'index'
    },
    
    index: function() {
        alert("This is the index action");
    }
    
});
