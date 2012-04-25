class TasksController < ApplicationController
  respond_to :html, :json
  def index
    @tasks = Task.all
  end
end
