Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'tasks', to: 'tasks#index'
  #get 'tasks/new', to: 'tasks#new'

  #get 'tasks/:details', to: 'tasks#show', as: :task
  #post 'tasks', to: 'tasks#create'

  #get 'tasks/:details/edit', to: 'tasks#edit', as: :edit_task
  #patch 'tasks/:details', to: 'tasks#update'

  #delete 'tasks/:details', to: 'tasks#destroy'

  resources :tasks
end
