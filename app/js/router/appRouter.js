define(['backbone', 'require', 'models/memo'], function(Backbone, require, Memo) {
  'use strict';
  var AppRouter;
  AppRouter = Backbone.Router.extend({
    routes: {
      '': 'home',
      'create': 'add',
      ':id/edit': 'edit'
    },
    getApp: function() {
      return require('app');
    },
    home: function() {
      this.getApp().editView.hideView();
    },
    add: function() {
      this.getApp().editView.model = new Memo(null, {
        collection: this.getApp().collection
      });
      this.getApp().editView.render();
    },
    edit: function(id) {
      this.getApp().editView.model = this.getApp().collection.get(id);
      if (this.getApp().editView.model) {
        this.getApp().editView.render();
      }
    }
  });
  return AppRouter;
});
