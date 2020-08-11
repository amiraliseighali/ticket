Rails.application.routes.draw do


  root 'main#index'
  get 'main/index'

  resources :users do
      member do
        get :delete
      end
  end

  resources :bugs do
    member do
      get :delete
    end
  end
  # get 'bugs/index'
  # get 'bugs/show'
  # get 'bugs/new'
  # get 'bugs/edit'
  # get 'bugs/delete'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'users/delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
