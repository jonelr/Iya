class Feeding < ActiveRecord::Base
  attr_accessible :comments, :feeding_date, :feeding_time, :feeding_type, :no_of_bottles, :poops, :spit, :swallows_heard, :wets,:datetime, :owner
  self.per_page = 10
  default_scope order('datetime desc')

  # scope :owned_items, where ('owner=?', current_user)
  scope :wets, where('wets = true')
  scope :poops, where('poops = true')

  scope :current_day_wets, where('wets = true and month(datetime)=? and day(datetime)=?', Date.today.mon, Date.today.day)
  scope :current_day_poops, where('poops = true and month(datetime)=? and day(datetime)=?', Date.today.mon, Date.today.day)

  scope :yesterday_wets, where('wets = true and month(datetime)=? and day(datetime)=?', Date.today.mon, Date.today.day-1)
  scope :yesterday_poops, where('poops = true and month(datetime)=? and day(datetime)=?', Date.today.mon, Date.today.day-1)

end
