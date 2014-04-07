Backend.OrdersRoute = Ember.Route.extend
  model: ->
    return this.store.find('order');