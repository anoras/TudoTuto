class @TodoApp.Views.TaskIndex extends Backbone.View
	render: ->
		@$el.html(JST['tasks/index']({ tasks: this.collection }));
		@collection.each (task) =>
			row = new TodoApp.Views.TaskItem(model: task)
			@.$('tbody').append(row.render().el)
			#@$el.append("<BR>#{task.get('title')}")
		@		