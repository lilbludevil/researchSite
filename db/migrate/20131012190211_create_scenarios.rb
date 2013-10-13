class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :name
      t.integer :environment_id

      t.timestamps
    end
    add_index :scenarios, :name
    add_index :scenarios, :environment_id
  end
end
