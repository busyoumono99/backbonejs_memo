define [
	'backbone'
	'router/appRouter'
	'collections/memoList'
], (Backbone, AppRouter, MemoList) ->
	'use strict'

	app = {}
	app.collection = new MemoList()
	app.router = new AppRouter()

	console.log app.router


	Window.app = app

