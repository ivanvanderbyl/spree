Backend.ShipmentController = Ember.ObjectController.extend({
  canUpdate: function() {
    return this.get('model.permissions.can_update')
  }.property("model.can_update"),
  state: function() {
    return Spree.translations.shipment_states[this.get('model.state')]
  }.property("model.state"),
  canShip: function() {
    return this.canUpdate && this.state == 'ready'
  }.property("model.ready"),
  translate: function(key) {
    return Spree.translations[key]
  }

})