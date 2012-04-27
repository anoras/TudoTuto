class @TodoApp.Views.TaskItem extends Backbone.View
	tagName: "tr"
	render: ->
		@$el.attr('id',"task_#{@model.id}")
		@$el.html(JST['tasks/item'](task: @model))
		@