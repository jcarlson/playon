class Event < ActiveRecord::Base
  attr_accessible :name, :publisher_id, :scheduled_date
  belongs_to :publisher
end
