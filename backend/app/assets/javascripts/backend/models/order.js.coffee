Backend.Order = Ember.Object.extend
  init: ->
    @linkShipmentsToOrder()

  linkShipmentsToOrder: ->
    order = this
    shipments = $.map this.get('shipments'), (shipment) ->
      shipment = Backend.Shipment.create(shipment)
      shipment.set('order', order)
      shipment
    order.set('shipments', shipments)

Backend.Order.reopenClass
  find: (number) ->
    $.getJSON("http://localhost:3000/api/orders/#{number}").then (attrs) ->
      Backend.Order.create(attrs)
