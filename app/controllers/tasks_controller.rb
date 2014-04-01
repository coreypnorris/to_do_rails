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

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @tasks = Task.all
    @list_done = Task.list_done
    @list_not_done = Task.list_not_done
    render('tasks/index.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    @task.update(:description => params[:description],
                  :done => params[:done])
    render('tasks/index.html.erb')
  end
end
