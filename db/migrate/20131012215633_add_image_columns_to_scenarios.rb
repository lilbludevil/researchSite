class AddImageColumnsToScenarios < ActiveRecord::Migration
  def self.up
  	add_attachment :scenarios, :image
  end

  def self.down
  	remove_attachment :scenarios, :image
  end
end
