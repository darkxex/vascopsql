json.extract! factura, :id, :cliente_id, :vendedor_id, :created_at, :updated_at
json.url factura_url(factura, format: :json)