json.extract! cliente, :id, :nombre, :rut, :fono, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)