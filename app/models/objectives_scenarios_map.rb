class ObjectivesScenariosMap < ActiveRecord::Base
  attr_accessible :objective_id, :scenario_id, :inputs, :objective, :scenario
  
  belongs_to :objective
  belongs_to :scenario
  has_many :inputs
end
