class Cliente < ActiveRecord::Base
has_many :compras
has_many :productos, through: :compras
end
