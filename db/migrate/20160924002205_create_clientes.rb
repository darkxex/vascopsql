class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rut
      t.integer :fono

      t.timestamps null: false
    end
  end
end
