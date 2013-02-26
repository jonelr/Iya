class DoctorVisit < ActiveRecord::Base
  attr_accessible :comment, :date, :for
  default_scope order('date desc')
end
