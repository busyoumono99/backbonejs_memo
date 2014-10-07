'use strict'

require.config
	paths:
		jquery:			'../bower_components/jquery/dist/jquery'
		underscore:		'../bower_components/underscore/underscore'
		backbone:		'../bower_components/backbone/backbone'
		localStorage:	'../bower_components/backbone.localStorage/backbone.localStorage'
		text:			'../bower_components/requirejs-text/text'
	shim:
		localStorage:
			deps: ['backbone']
			exports: 'Store'

require [
	'backbone'
], (Backbone) ->
	model_obj = new Backbone.Model()
	model_obj.set('title', 'test')
	console.log model_obj.get('title')
