class Factura < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :vendedor
	has_many :compras
end
