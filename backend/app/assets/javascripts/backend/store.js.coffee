Backend.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api'

Backend.ApplicationSerializer = DS.ActiveModelSerializer.extend
  normalizePayload: (type, payload) ->
    delete payload['count']
    delete payload['current_page']
    delete payload['pages']

    this._super.apply(this, arguments)
