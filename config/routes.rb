Rails.application.routes.draw do

  root 'tasks#index'

  devise_for :users

  resources :tasks do
	  collection do
	    get :completed
	    get :queue
	  end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
