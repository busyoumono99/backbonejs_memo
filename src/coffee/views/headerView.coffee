define [
	'backbone'
	'require'
], (Backbone, require) ->
	'use strict'

	HeaderView = Backbone.View.extend
		el: '.navbar'
		events:
			'click .create': 'onCreate'
		initialize: ->
			return
		onCreate: ->
			app = require('app')
			app.router.navigate('create', {trigger: true})
			false

	HeaderView
