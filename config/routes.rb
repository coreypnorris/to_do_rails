ToDo::Application.routes.draw do
  match('tasks', {:via => :get, :to => 'tasks#index'})
  match('tasks', {:via => :post, :to => 'tasks#create'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#edit'})
  match('tasks/:id', {:via => :delete, :to => 'tasks#destroy'})
  match('tasks/:id/edit', {:via => :get, :to => 'tasks#edit' })
  match('tasks/:id', {:via => [:patch, :put], :to => 'tasks#update' })
end
