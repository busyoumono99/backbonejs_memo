define(['backbone', 'collections/memoList'], function(Backbone, MemoList) {
  'use strict';
  var app;
  app = {};
  app.collection = new MemoList();
  app.collection.fetch().done(function() {
    return console.log(JSON.stringify(app.collection));
  });
  return Window.app = app;
});
