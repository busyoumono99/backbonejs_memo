define(['backbone', 'collections/memoList', 'views/editView', 'views/headerView'], function(Backbone, MemoList, EditView, HeaderView) {
  'use strict';
  var app;
  app = {};
  app.collection = new MemoList();
  app.editView = new EditView();
  app.headerView = new HeaderView();

  /* チェック：ヘッダービューの＋ボタンで入力フォームが表示される */
  console.log(app.headerView);
  return Window.app = app;
});
