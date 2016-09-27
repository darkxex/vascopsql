json.extract! vendedor, :id, :nombre, :rut, :fono, :created_at, :updated_at
json.url vendedor_url(vendedor, format: :json)