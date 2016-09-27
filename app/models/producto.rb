class Producto < ActiveRecord::Base

has_many :carros
has_many :compras
end
