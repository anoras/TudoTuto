class @TodoApp.Collections.Tasks extends Backbone.Collection
	model: TodoApp.Models.Task
	url: '/tasks'