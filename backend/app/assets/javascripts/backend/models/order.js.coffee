Backend.Order = Ember.Object.extend({})

Backend.Order.reopenClass
  find: (number) ->
    $.getJSON("http://localhost:3000/api/orders/#{number}").then (attrs) ->
      Backend.Order.create(attrs)
