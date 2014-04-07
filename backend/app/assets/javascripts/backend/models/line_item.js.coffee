Backend.LineItem = DS.Model.extend
  order: DS.belongsTo('order')

  # I don't understand why this embedded object is not picked up
  # Is it because it's embedded two levels deep?
  variant: ( ->
    new Backend.Variant(this._data.variant)
  ).property("variant")