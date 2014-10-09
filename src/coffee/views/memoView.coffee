define [
	'jquery'
	'underscore'
	'backbone'
	'require'
	'text!templates/memo.html'
], ($, _, Backbone, require, memoTemp) ->
	'use strict'

	MemoView = Backbone.View.extend
		tagName: 'tr'
		tmpl: _.template(memoTemp)
		className: 'view'
		events:
			'click .edit': 'onEdit'
			'dblclick': 'onEdit'
			'click .delete': 'onDelete'
		initialize: ->
			@listenTo(@model, 'change', @render)
			@listenTo(@model, 'destroy', @onDestroy)
			return
		getApp: ->
			require('app')
		onEdit: ->
			@getApp().router.navigate(@model.get('id') + '/edit', {trigger: true})
			return
		onDelete: ->
			@model.destroy()
			return
		onDestroy: ->
			@remove()
			return
		render: ->
			@$el.html(@tmpl(@model.toJSON()))
			@
	MemoView
