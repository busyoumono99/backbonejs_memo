define(['backbone', 'router/appRouter', 'collections/memoList', 'views/editView', 'models/memo'], function(Backbone, AppRouter, MemoList, EditView, Memo) {
  'use strict';
  var app;
  app = {};
  app.collection = new MemoList();
  app.editView = new EditView();
  app.router = new AppRouter();
  app.editView.model = new Memo({
    title: 'hoge',
    content: 'fuga'
  });
  app.editView.render();
  console.log(app.editView);
  return Window.app = app;
});
