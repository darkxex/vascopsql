class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :cliente_id
      t.integer :vendedor_id

      t.timestamps null: false
    end
  end
end
