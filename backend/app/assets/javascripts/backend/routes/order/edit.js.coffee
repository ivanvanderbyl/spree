Backend.OrderEditRoute = Ember.Route.extend
  model: (params) ->
    console.log(params)
    # return this.store.find('order', params.order_id);
