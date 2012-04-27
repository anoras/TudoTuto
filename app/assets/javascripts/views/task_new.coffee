class @TodoApp.Views.TaskNew extends Backbone.View
  tagName: 'form'
  id: "new-task"
  
  events:
	  'submit': 'save'
  
  initialize: ->
	  @newTask()
  
  newTask: ->
	  @model = new TodoApp.Models.Task()
	  
  render: ->
	  @$el.html(JST['tasks/form_fields']())
	  @$('input[name=title]').focus()
	  @
	  
  save: (e) ->
	  e.preventDefault()
	  @model.set(title: @$('input[name=title]').val())
	  @model.save({}, success: =>
		  alert("Saved")
		  @collection.add(@model)
		  @newTask()
		  @render()
	  )
	  false