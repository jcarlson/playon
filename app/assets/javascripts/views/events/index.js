Playon.Views.EventsIndex = Backbone.View.extend({

    template: JST['events/index'],
    
    initialize: function() {
        this.collection.on("reset", this.render, this);
    },
    
    render: function() {
        this.$el.html(this.template({events: this.collection}));
        return this;
    }

});
