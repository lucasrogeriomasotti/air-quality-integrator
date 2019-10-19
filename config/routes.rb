Rails.application.routes.draw do
  resources :air_quality_parameters
  resources :air_quality_parameter_units
  resources :data_sets
  resources :data_set_sources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
