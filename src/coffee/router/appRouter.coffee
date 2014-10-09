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
			@getApp.editView.hideview()
			return
		add: ->
			@getApp.editView.model = new Memo(null, {
				collection: @getApp.collection
				}
			)
			@editView.render()
			return
		edit: (id) ->
			@getApp.editView.model = @getApp.collection.get(id)
			if @getApp.editView.model
				@editView.render()
			return

	AppRouter
