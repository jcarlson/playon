class ConvertScheduledDateToDate < ActiveRecord::Migration
  def up
    rename_column :events, :scheduled_date, :scheduled_datetime
    add_column    :events, :scheduled_date, :date
    Event.all.each do |event|
      event.scheduled_date = event.scheduled_datetime.to_date
      event.save
    end
    remove_column :events, :scheduled_datetime
  end

  def down
    add_column    :events, :scheduled_datetime, :datetime
    Event.all.each do |event|
      event.scheduled_datetime = event.scheduled_date.to_datetime
      event.save
    end
    remove_column :events, :scheduled_date
    rename_column :events, :scheduled_datetime, :scheduled_date
  end
end
