define(['jquery', 'underscore', 'backbone', 'require', 'text!templates/memo.html'], function($, _, Backbone, require, memoTemp) {
  'use strict';
  var MemoView;
  MemoView = Backbone.View.extend({
    tagName: 'tr',
    tmpl: _.template(memoTemp),
    className: 'view',
    events: {
      'click .edit': 'onEdit',
      'dblclick': 'onEdit',
      'click .delete': 'onDelete'
    },
    initialize: function() {
      this.listenTo(this.model, 'change', this.render);
      this.listenTo(this.model, 'destroy', this.onDestroy);
    },
    getApp: function() {
      return require('app');
    },
    onEdit: function() {
      this.getApp().router.navigate(this.model.get('id') + '/edit', {
        trigger: true
      });
    },
    onDelete: function() {
      this.model.destroy();
    },
    onDestroy: function() {
      this.remove();
    },
    render: function() {
      this.$el.html(this.tmpl(this.model.toJSON()));
      return this;
    }
  });
  return MemoView;
});
