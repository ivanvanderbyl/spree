Backend.Shipment = DS.Model.extend
  order: DS.belongsTo('order')
  number: DS.attr('string')
  stock_location_name: DS.attr('string')
  manifest: (->
    order = this.get('order')
    $.map this._data['manifest'], (manifest) ->
      
      manifest.variant = order.variantByID(manifest.variant_id)
      Backend.ManifestItem.create(manifest)
  ).property('manifest')