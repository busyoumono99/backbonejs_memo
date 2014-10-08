'use strict'

require.config
	paths:
		jquery:			'../bower_components/jquery/dist/jquery'
		underscore:		'../bower_components/underscore/underscore'
		backbone:		'../bower_components/backbone/backbone'
		localStorage:	'../bower_components/backbone.localStorage/backbone.localStorage'
		text:			'../bower_components/requirejs-text/text'
		bootstrap:		'../bower_components/bootstrap/dist/js/bootstrap'
	shim:
		localStorage:
			deps: ['backbone']
			exports: 'Store'
		bootstrap:
			deps: ['jquery']
			exports: 'Bootatrap'


require [
	'collections/memoList'
	'bootstrap'
], (MemoList) ->
	memos = new MemoList()
	memos.fetch()
	console.log memos
