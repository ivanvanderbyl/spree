Backend.IndexRoute = Ember.Route.extend({
  model: function() {
    return { number: 'R123456789', shipments: [{ number: 'H123456789'}] }
  }
  // setupController: function(indexController) {
  //   order = new(Backend.Order)
  //   indexController.set('order', { number: 'R123456789'});
  // },
});