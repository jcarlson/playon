object @event
attributes :id, :name, :scheduled_date, :publisher_id

node(:publisher_name) do |event|
  event.publisher.name
end
