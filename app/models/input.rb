class Input < ActiveRecord::Base
  attr_accessible :objectives_scenarios_map_id, :text, :created_at
  validates_presence_of :text
  validates_presence_of :objectives_scenarios_map_id

  belongs_to :objectives_scenarios_map
end
