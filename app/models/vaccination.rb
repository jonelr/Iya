class Vaccination < ActiveRecord::Base
  attr_accessible :date, :description, :title, :vacination_type

  validates :title, :presence => true
  validates :vacination_type, :presence => true
  validates :description, :presence =>true
end
