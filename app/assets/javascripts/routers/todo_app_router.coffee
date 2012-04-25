class @TodoApp.Routers.TodoAppRouter extends Support.SwappingRouter
	routes:
		''		: 'index'
	
	initialize: (options) ->
		@el = $('#tasks')
		@collection = options.collection
	index: ->
		view = new TodoApp.Views.TaskIndex(collection: @collection)
		@swap(view) 