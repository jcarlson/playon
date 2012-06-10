window.Playon = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  init: function() {
      new Playon.Routers.Events();
      Backbone.history.start();
  }
};

$(function() {
    Playon.init();
});