Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # ? see all tasks
  get 'tasks', to: 'tasks#index'

  # ? create new task
  get 'task/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # ? see task detail
  get 'tasks/:id', to: 'tasks#details', as: :task

  # ? edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # ? remove task
  delete 'tasks/:id', to: 'tasks#destroy'
end
