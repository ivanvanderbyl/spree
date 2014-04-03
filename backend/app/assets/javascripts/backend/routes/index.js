Backend.IndexRoute = Ember.Route.extend({
  model: function() {
    return Backend.Order.find("R123456789")
  }
  // setupController: function(indexController) {
  //   order = new(Backend.Order)
  //   indexController.set('order', { number: 'R123456789'});
  // },
});