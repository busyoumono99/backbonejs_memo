define(['backbone', 'require'], function(Backbone, require) {
  'use strict';
  var HeaderView;
  HeaderView = Backbone.View.extend({
    el: '.navbar',
    events: {
      'click .create': 'onCreate'
    },
    initialize: function() {},
    onCreate: function() {
      var app;
      app = require('app');
      app.router.navigate('create', {
        trigger: true
      });
      return false;
    }
  });
  return HeaderView;
});
