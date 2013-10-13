class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :name
      t.integer :environment_id

      t.timestamps
    end
    add_index :objectives, :name
    add_index :objectives, :environment_id
  end
end
