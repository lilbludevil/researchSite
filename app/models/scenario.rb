class Scenario < ActiveRecord::Base
  attr_accessible :environment_id, :name, :image, :environment, :objective_ids, :objectives
  validates_presence_of :environment_id

  belongs_to :environment
  
  has_many :objectives_scenarios_maps
  accepts_nested_attributes_for :objectives_scenarios_maps

  has_many :objectives, :through => :objectives_scenarios_maps
  
  has_attached_file :image
end
