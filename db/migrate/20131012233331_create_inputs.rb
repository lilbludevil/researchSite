class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :text
      t.integer :objectives_scenarios_map_id
      t.datetime :created_at

      t.timestamps
    end
    add_index :inputs, :objectives_scenarios_map_id
  end
end
