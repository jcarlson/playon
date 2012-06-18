class Event < ActiveRecord::Base
  attr_accessible :name, :publisher, :publisher_id, :scheduled_date, :broadcast, :activity
  belongs_to :publisher
  paginates_per 25
end
