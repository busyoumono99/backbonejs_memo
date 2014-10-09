define [
	'backbone'
	'require'
], (Backbone, require) ->
	'use strict'

	EditView = Backbone.View.extend
		el: '#editForm'
		events:
			'click #saveBtn': 'onSave'
			'click #cancelBtn': 'hideView'
		initialize: ->
			@$title = @$el.find('#js-title')
			@$content = @$el.find('#js-content')
			return
		render: ->
			@$title.val(@model.get('title'))
			@$content.val(@model.get('content'))
			@$el.show()
			@$title.focus()
			return
		onSave: ->
			_this = @
			@model.save({
				title: @$title.val().trim()
				content: @$content.val().trim()
			}).done( ->
				_this.collection.add(_this.model, {merge: true})
				return
			)
			return
		hideView: ->
			@$el.hide()
			require('app').router.navigate('', {trigger: true})
			return

	EditView
