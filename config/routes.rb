Iya::Application.routes.draw do
  get "notes/new_comment"
  put "notes/create_comment"
  
  resources :notes

  devise_for :users

  resources :lookups

  resources :doctor_visits

  resources :vaccinations

  resources :feedings

  get "welcome/index"

  resources :contacts

  resources :events

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
