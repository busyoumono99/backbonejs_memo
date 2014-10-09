define [
	'backbone'
	'views/memoView'
], (Backbone, MemoView) ->
	'use strict'

	ListView = Backbone.View.extend
		el: '#memoList'
		initialize: ->
			@listenTo(@collection, 'add', @addChildView)
			_this = @
			@collection.fetch({reset: true}).done( ->
				_this.render()
				return
				)
			return
		render: ->
			@collection.each( (item) ->
				@addChildView(item)
			, @)
			@
		addChildView: (item) ->
			@$el.append(new MemoView({model: item}).render().el)
			return
	ListView
