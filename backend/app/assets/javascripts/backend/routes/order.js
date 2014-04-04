Backend.OrderRoute = Ember.Route.extend({
  model: function(params) {
    return Backend.Order.find(params.order_id)
  },

  renderTemplate: function() {
    this.render('orders/show');
  }
});