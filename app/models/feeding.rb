class Feeding < ActiveRecord::Base
  attr_accessible :comments, :feeding_date, :feeding_time, :feeding_type, :no_of_bottles, :poops, :spit, :swallows_heard, :wets,:datetime
  self.per_page = 20
  default_scope order('datetime desc')
end
