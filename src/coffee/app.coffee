define [
	'backbone'
	'collections/memoList'
	'views/editView'
	'views/headerView'
], (Backbone, MemoList, EditView, HeaderView) ->
	'use strict'

	app = {}
	app.collection = new MemoList()
	app.editView = new EditView()
	app.headerView = new HeaderView()

	### チェック：ヘッダービューの＋ボタンで入力フォームが表示される ###
	console.log app.headerView


	Window.app = app

