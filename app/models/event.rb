class Event < ActiveRecord::Base
  attr_accessible :description, :event_date, :location, :name, :owner
  default_scope order('event_date desc')
end
