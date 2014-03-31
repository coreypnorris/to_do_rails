ToDo::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks/new', {:via => :get, :to => 'tasks#new'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
end
