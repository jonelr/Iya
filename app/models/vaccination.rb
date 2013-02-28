class Vaccination < ActiveRecord::Base
  attr_accessible :date, :description, :title, :vacination_type
  default_scope order('date desc')
end
