class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.text :comentario
      t.references :producto, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
