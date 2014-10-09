define [
	'backbone'
	'require'
	'models/memo'
], (Backbone, require, Memo) ->
	'use strict'

	AppRouter = Backbone.Router.extend
		routes:
			'': 'home'
			'create': 'add'
			':id/edit': 'edit'
		getApp: ->
			require('app')
		home: ->
			@getApp().editView.hideView()
			return
		add: ->
			@getApp().editView.model = new Memo(null, {
				collection: @getApp().collection
				}
			)
			@getApp().editView.render()
			return
		edit: (id) ->
			@getApp().editView.model = @getApp().collection.get(id)
			if @getApp().editView.model
				@getApp().editView.render()
			return

	AppRouter
