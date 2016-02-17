class CreateEnemies < ActiveRecord::Migration
  def change
    create_table :enemies do |t|

      t.timestamps null: false
    end
  end
end
