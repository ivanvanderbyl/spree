// For more information see: http://emberjs.com/guides/routing/

Backend.Router.map(function() {
  this.resource('orders', { path: '/admin/orders'});
  this.resource('order', { path: '/admin/orders/:order_id' });
});

Backend.Router.reopen({
  location: 'history'
});
