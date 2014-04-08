Backend.IndexRoute = Ember.Route.extend({
  activate: function() {
    this.replaceWith('orders.index');
  }
})
