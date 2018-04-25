Rails.application.routes.draw do
	resources :temp_details, only: [:create, :index]
end