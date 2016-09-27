class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :factura_id
      t.integer :producto_id

      t.timestamps null: false
    end
  end
end
