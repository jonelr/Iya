class Feeding < ActiveRecord::Base
  attr_accessible :comments, :feeding_date, :feeding_time, :feeding_type, :no_of_bottles, :poops, :spit, :swallows_heard, :wets,:datetime, :owner
  self.per_page = 10
  default_scope order('datetime desc')

  # scope :owned_items, where ('owner=?', current_user)
  scope :wets, where('wets = true')
  scope :poops, where('poops = true')

  scope :current_day_wets, lambda { |owner| where('owner=? and wets = true and month(datetime)=? and day(datetime)=?',owner, Date.today.mon, Date.today.day) unless owner.nil? }
  

  scope :current_day_poops, lambda { |owner| where('owner=? and poops = true and month(datetime)=? and day(datetime)=?', owner, Date.today.mon, Date.today.day) unless owner.nil? }

  scope :yesterday_wets, lambda { |owner| where('owner=? and wets = true and month(datetime)=? and day(datetime)=?', owner, Date.today.mon, Date.today.day-1) unless owner.nil? }

  scope :yesterday_poops, lambda { |owner| where('owner=? and poops = true and month(datetime)=? and day(datetime)=?', owner, Date.today.mon, Date.today.day-1) unless owner.nil? }

end
