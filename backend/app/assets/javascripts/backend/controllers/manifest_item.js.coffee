Backend.ManifestItemController = Ember.ObjectController.extend(
  init: ->
    debugger
  line_item: (->
    item = this
    line_item = _.find(item.get("shipment.order.line_items"), (line_item) ->
      line_item.variant_id is item.get("variant_id")
    )
  ).property("line_item")
  variant: (->
    @get "line_item.variant"
  ).property("variant")
  variantImage: (->
    @get("variant").images[0].mini_url
  ).property("variantImage")
  states: (->
    states = $.map @get("model.states"), (state, count) ->
      count + " x " + state
  ).property("states")
  canUpdate: (->
    this.get('shipment.permissions.can_update')
  ).property("canUpdate")

  actions:
    edit: ->
      debugger
)