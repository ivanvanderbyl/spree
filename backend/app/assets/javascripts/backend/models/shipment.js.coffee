Backend.Shipment = Ember.Object.extend
  init: ->
    @linkItemsToShipment()

  linkItemsToShipment: ->
    shipment = this
    manifest = $.map this.get('manifest'), (item) ->
      item = Backend.ManifestItem.create(item)
      item.set('shipment', shipment)
      item
    shipment.set('manifest', manifest)

