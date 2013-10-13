class Environment < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name

  has_many :objectives
  has_many :scenarios
end
