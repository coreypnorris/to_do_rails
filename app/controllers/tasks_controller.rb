class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.create(:description => params[:description])
    render('tasks/success.html.erb')
  end

  def update
    @tasks = Task.all
    @task = Task.find(params[:id])
    @task.update(:done => params[:done])
    render('tasks/index.html.erb')
  end
end
