Backend.Order = DS.Model.extend
  shipments: DS.hasMany('shipment')
  line_items: DS.hasMany('line_item')
  completed_at: DS.attr('string')
  state: DS.attr('string')
  shipment_state: DS.attr('string')
  payment_state: DS.attr('string')
  email: DS.attr('string')
  display_total: DS.attr('string')

  variantByID: (variant_id) ->
    item = this.get('line_items').filter (line_item) ->
      line_item.get('variant')
      debugger