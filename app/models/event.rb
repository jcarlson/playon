class Event < ActiveRecord::Base
  attr_accessible :name, :publisher, :publisher_id, :scheduled_date, :broadcast
  belongs_to :publisher
end
