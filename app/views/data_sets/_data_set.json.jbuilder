json.extract! data_set, :id, :name, :description, :data_set_source_id, :confidence_level, :created_at, :updated_at
json.url data_set_url(data_set, format: :json)
