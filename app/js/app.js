define(['backbone', 'router/appRouter', 'collections/memoList'], function(Backbone, AppRouter, MemoList) {
  'use strict';
  var app;
  app = {};
  app.collection = new MemoList();
  app.router = new AppRouter();
  console.log(app.router);
  return Window.app = app;
});
