# Backend.Order = Ember.Object.extend
#   init: ->
#     if this.get('shipments')
#       @linkShipmentsToOrder()

#   linkShipmentsToOrder: ->
#     order = this
#     shipments = $.map this.get('shipments'), (shipment) ->
#       shipment = Backend.Shipment.create(shipment)
#       shipment.set('order', order)
#       shipment
#     order.set('shipments', shipments)

# Backend.Order.reopenClass
#   find: (number) ->
#     $.getJSON("http://localhost:3000/api/orders/#{number}").then (attrs) ->
#       Backend.Order.create(attrs)

#   findAll: ->
#     return Em.$.getJSON("http://localhost:3000/api/orders").then (result) ->
#       orders = Em.A()
#       Em.run ->
#         result.orders.forEach (order) ->
#           orders.pushObject(Backend.Order.create(order))
#       return orders;


Backend.Order = DS.Model.extend({
  completed_at: DS.attr('string')
  number: DS.attr('string')
  state: DS.attr('string')
  shipment_state: DS.attr('string')
  payment_state: DS.attr('string')
  email: DS.attr('string')
  display_total: DS.attr('string')
  shipments: DS.hasMany('shipments')
  })