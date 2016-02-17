class AddColumnsToEnemy < ActiveRecord::Migration
  def change
    add_column :enemies, :first_name, :string
    add_column :enemies, :last_name, :string
    add_column :enemies, :book, :string
    add_column :enemies, :color, :string  
  end
end
