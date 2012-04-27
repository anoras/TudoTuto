class @TodoApp.Routers.TodoAppRouter extends Support.SwappingRouter
	routes:
		''		: 'index'
		'new'	: 'new'
	
	initialize: (options) ->
		@el = $('#tasks')
		@collection = options.collection
	index: ->
		view = new TodoApp.Views.TaskIndex(collection: @collection)
		@swap(view) 
	new: ->
		view = new TodoApp.Views.TaskNew(collection: @collection)
		@swap(view)