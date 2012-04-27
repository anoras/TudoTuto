class TasksController < ApplicationController
  respond_to :html, :json
  def index
    @tasks = Task.all
  end
  def create
    respond_with(Task.create(params[:task]))
  end
end
