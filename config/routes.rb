Rails.application.routes.draw do
  resources :air_quality_parameters
  resources :air_quality_parameter_units
  
  resources :data_set_sources
  resources :data_sets
  get '/data_sets/:id/upload_csv', to: 'data_sets#upload_csv'
  post '/data_sets/:id/create_records_from_csv_file', to: 'data_sets#create_records_from_csv_file', as: :create_records_from_csv
	
  get '/air_quality_measurements/search', to: 'air_quality_measurements#search'
  resources :air_quality_measurements
end
