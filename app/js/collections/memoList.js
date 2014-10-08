define(['backbone', 'models/memo'], function(Backbone, Memo) {
  'use strict';
  var MemoList;
  MemoList = Backbone.Collection.extend({
    model: Memo,
    url: 'http://local_dream-travel.boo.jp/data.basic_memo/memos',
    parse: function(response) {
      if (response.memos != null) {
        return response.memos;
      } else {
        return response;
      }
    }
  });
  return MemoList;
});
