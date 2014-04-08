// For more information see: http://emberjs.com/guides/routing/

Backend.Router.map(function() {
  this.resource('orders', function() {
    this.resource('order', { path: '/:order_id' }, function() {
      this.route('edit');
    });
  });
});

Backend.Router.reopen({
  location: 'history',
  rootURL: '/admin'
});
