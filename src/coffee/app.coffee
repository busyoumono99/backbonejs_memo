define [
	'backbone'
	'router/appRouter'
	'collections/memoList'
	'views/editView'
	'models/memo'
], (Backbone, AppRouter, MemoList, EditView, Memo) ->
	'use strict'

	app = {}
	app.collection = new MemoList()
	app.editView = new EditView()
	app.router = new AppRouter()

	# app.editView.$title.val('hoge')
	# app.editView.$content.val('fuga')
	app.editView.model = new Memo {title: 'hoge', content: 'fuga'}
	app.editView.render()

	console.log app.editView


	Window.app = app

