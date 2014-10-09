define(['backbone', 'collections/memoList', 'views/editView', 'views/headerView', 'views/listView'], function(Backbone, MemoList, EditView, HeaderView, ListView) {
  'use strict';
  var app;
  app = {};
  app.collection = new MemoList();
  app.editView = new EditView();
  app.headerView = new HeaderView();
  app.listView = new ListView({
    collection: app.collection
  });
  console.log(app.listView);
  return Window.app = app;
});
