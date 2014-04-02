//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require_self

// for more details see: http://emberjs.com/guides/application/

Backend = Ember.Application.create({
  LOG_TRANSITIONS: true,
  LOG_TRANSITIONS_INTERNAL: true,
  LOG_VIEW_LOOKUPS: true,
  LOG_ACTIVE_GENERATION: true,
  resolver: Ember.DefaultResolver.extend({
    resolveTemplate: function(parsedName) {
      parsedName.fullNameWithoutType = "backend/" + parsedName.fullNameWithoutType;
      return this._super(parsedName);
    }
  }),
  rootElement: '#order'
});

