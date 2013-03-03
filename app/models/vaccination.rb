class Vaccination < ActiveRecord::Base
  attr_accessible :date, :description, :title, :vacination_type, :owner
  default_scope order('date desc')
end
