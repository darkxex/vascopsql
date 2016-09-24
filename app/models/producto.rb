class Producto < ActiveRecord::Base
has_many :compras
has_many :clientes, through: :compras
end
