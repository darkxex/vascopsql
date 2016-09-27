class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.integer :producto_id

      t.timestamps null: false
    end
  end
end
