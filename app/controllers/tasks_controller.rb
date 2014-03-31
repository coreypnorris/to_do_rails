class TasksController < ApplicationController
  def index
    @list_done = Task.list_done
    @list_not_done = Task.list_not_done
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
    @list_done = Task.list_done
    @list_not_done = Task.list_not_done
    @task = Task.find(params[:id])
    @task.update(:done => params[:done])
    render('tasks/index.html.erb')
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
    render('tasks/index.html.erb')
  end
end
