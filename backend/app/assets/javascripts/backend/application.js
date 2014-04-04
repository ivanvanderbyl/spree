//= require jquery
//= require handlebars
//= require ember
//= require moment
//= require i18n
//= require backend/translations
//= require_self

// for more details see: http://emberjs.com/guides/application/

Backend = Ember.Application.create({
  LOG_TRANSITIONS: true,
  LOG_TRANSITIONS_INTERNAL: true,
  LOG_VIEW_LOOKUPS: true,
  LOG_ACTIVE_GENERATION: true,
  Resolver: Ember.DefaultResolver.extend({
    resolveTemplate: function(parsedName) {
      parsedName.fullNameWithoutType = "backend/" + parsedName.fullNameWithoutType;
      return this._super(parsedName);
    }
  }),
  rootElement: '#orders'
});

Ember.Handlebars.helper("prettyDate", function(date) {
  return moment(date).format(I18n.t('date.format'))
})

Ember.Handlebars.registerHelper('i18n', function(property, options) {
  var params = options.hash,
  self = this;

  // Support variable interpolation for our string
  Object.keys(params).forEach(function (key) {
    params[key] = Em.Handlebars.get(self, params[key], options);
  });

  return I18n.t(property, params);
});
