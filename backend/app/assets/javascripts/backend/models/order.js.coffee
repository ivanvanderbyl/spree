Backend.Order = DS.Model.extend
  shipments: DS.hasMany('shipment')
  lineItems: DS.hasMany('line_item')
  completedAt: DS.attr()
  state: DS.attr()
  shipmentState: DS.attr()
  paymentState: DS.attr()
  email: DS.attr()
  displayTotal: DS.attr()

  variantByID: (variant_id) ->
    item = this.get('line_items').filter (line_item) ->
      line_item.get('variant')
      # debugger