class @TodoApp.Views.TaskIndex extends Backbone.View
	render: ->
		@$el.html("Tasks will appear here, for sure")
		@collection.each (task) =>
			@$el.append("<BR>#{task.get('title')}")
		@