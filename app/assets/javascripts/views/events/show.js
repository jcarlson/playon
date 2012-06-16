Playon.Views.EventsShow = Backbone.View.extend({
    
    template: JST['events/show'],
    
    initialize: function() {
        this.model.on("change", this.render, this);
        this.model.fetch();
    },
    
    render: function() {
        this.$el.html(this.template({event: this.model}));
        return this;
    }
    
});