define [
	'backbone'
	'collections/memoList'
], (Backbone, MemoList) ->
	'use strict'

	app = {}
	app.collection = new MemoList()
	app.collection.fetch().done( ->
		console.log JSON.stringify(app.collection)
	)


	Window.app = app

