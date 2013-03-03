class DoctorVisit < ActiveRecord::Base
  attr_accessible :comment, :date, :for, :owner
  default_scope order('date desc')
end
