define [
	'backbone'
	'collections/memoList'
	'views/editView'
	'views/headerView'
	'views/listView'
], (Backbone, MemoList, EditView, HeaderView, ListView) ->
	'use strict'

	app = {}
	app.collection = new MemoList()
	app.editView = new EditView()
	app.headerView = new HeaderView()
	app.listView = new ListView({
		collection: app.collection
	})

	console.log app.listView


	Window.app = app

