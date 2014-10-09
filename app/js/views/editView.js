define(['backbone', 'require'], function(Backbone, require) {
  'use strict';
  var EditView;
  EditView = Backbone.View.extend({
    el: '#editForm',
    events: {
      'click #saveBtn': 'onSave',
      'click #cancelBtn': 'hideView'
    },
    initialize: function() {
      this.$title = this.$el.find('#js-title');
      this.$content = this.$el.find('#js-content');
    },
    render: function() {
      this.$title.val(this.model.get('title'));
      this.$content.val(this.model.get('content'));
      this.$el.show();
      this.$title.focus();
    },
    onSave: function() {
      var _this;
      _this = this;
      this.model.save({
        title: this.$title.val().trim(),
        content: this.$content.val().trim()
      }).done(function() {
        _this.collection.add(_this.model, {
          merge: true
        });
      });
    },
    hideView: function() {
      this.$el.hide();
      require('app').router.navigate('', {
        trigger: true
      });
    }
  });
  return EditView;
});
