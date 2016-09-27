class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.boolean :activo

      t.timestamps null: false
    end
  end
end
