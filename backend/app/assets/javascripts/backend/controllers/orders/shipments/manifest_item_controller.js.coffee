Backend.OrdersShipmentsManifestItemController = Ember.ObjectController.extend
  states: (->
    $.map @get("model.states"), (state, count) ->
      count + " x " + state
  ).property("states")
  canUpdate: (->
    this.get('shipment.permissions.can_update')
  ).property("canUpdate")
