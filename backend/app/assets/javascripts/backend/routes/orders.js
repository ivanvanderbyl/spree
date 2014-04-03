Backend.OrdersRoute = Ember.Route.extend({
  model: function() {
    return Backend.Order.findAll()
  },

  renderTemplate: function() {
    this.render('orders/index');
  }
});