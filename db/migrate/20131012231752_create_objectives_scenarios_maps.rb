class CreateObjectivesScenariosMaps < ActiveRecord::Migration
  def change
    create_table :objectives_scenarios_maps do |t|
      t.integer :objective_id
      t.integer :scenario_id

      t.timestamps
    end
    add_index :objectives_scenarios_maps, :objective_id
    add_index :objectives_scenarios_maps, :scenario_id
  end
end
