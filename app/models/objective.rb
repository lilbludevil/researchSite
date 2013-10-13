class Objective < ActiveRecord::Base
  attr_accessible :environment_id, :name, :scenarios, :scenario_ids
  validates_presence_of :environment_id

  belongs_to :environment
  
  has_many :objectives_scenarios_maps
  accepts_nested_attributes_for :objectives_scenarios_maps

  has_many :scenarios, :through => :objectives_scenarios_maps
end
