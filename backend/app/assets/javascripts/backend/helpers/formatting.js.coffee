Ember.Handlebars.helper "prettyDate", (date) ->
  moment(date).format(I18n.t('date.format'))

Ember.Handlebars.registerHelper 'i18n', (property, options) ->
  params = options.hash
  self = this

  #Support variable interpolation for our string
  Object.keys(params).forEach (key) ->
    params[key] = Em.Handlebars.get(self, params[key], options)

  return I18n.t(property, params)