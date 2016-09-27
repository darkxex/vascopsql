json.extract! compra, :id, :factura_id, :producto_id, :created_at, :updated_at
json.url compra_url(compra, format: :json)