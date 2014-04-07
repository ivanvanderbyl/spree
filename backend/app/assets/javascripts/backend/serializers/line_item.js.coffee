#= require backend/serializers/application

Backend.LineItemSerializer = Backend.ApplicationSerializer.extend DS.EmbeddedRecordsMixin,
  attrs:
    variant:
      embedded: 'always'