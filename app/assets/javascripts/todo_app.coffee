window.TodoApp=
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: (data) ->
		@tasks = new TodoApp.Collections.Tasks(data.tasks)
		new TodoApp.Routers.TodoAppRouter(collection: @tasks)
		Backbone.history.start() unless Backbone.history.started