#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require moment
#= require i18n
#= require backend/translations
#= require_self
#= require_tree ./templates
#= require_tree ./mixins
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./serializers
#= require ./store
#= require ./router
#= require_tree ./routes

# for more details see: http://emberjs.com/guides/application/

window.Backend = Ember.Application.create
  rootElement: '#backend'

  # TODO: Disable this in production
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
