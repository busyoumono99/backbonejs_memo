define(['backbone', 'views/memoView'], function(Backbone, MemoView) {
  'use strict';
  var ListView;
  ListView = Backbone.View.extend({
    el: '#memoList',
    initialize: function() {
      var _this;
      this.listenTo(this.collection, 'add', this.addChildView);
      _this = this;
      this.collection.fetch({
        reset: true
      }).done(function() {
        _this.render();
      });
    },
    render: function() {
      this.collection.each(function(item) {
        return this.addChildView(item);
      }, this);
      return this;
    },
    addChildView: function(item) {
      this.$el.append(new MemoView({
        model: item
      }).render().el);
    }
  });
  return ListView;
});
