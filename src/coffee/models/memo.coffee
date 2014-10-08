define [
	'backbone'
], (Backbone) ->
	'use strict'

	Memo = Backbone.Model.extend
		defaults:
			contents: ""
		parse: (response) ->
			result = null
			if response.memos?.Memo?
				result = response.memos.Memo
			else if response.Memo?
				result = response.Memo
			else
				result = response
			result


	Memo
