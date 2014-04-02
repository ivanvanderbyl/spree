Backend.Order = Ember.Object.extend({
  find: function(number) {
    order = null
    $.getJSON("http://localhost:3000/api/orders/R123456789").then(function (response) {
      order = response
    })
  }
})