class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :nombre
      t.string :rut
      t.integer :fono

      t.timestamps null: false
    end
  end
end
