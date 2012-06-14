class AddBroadcastToEvent < ActiveRecord::Migration
  def change
    add_column :events, :broadcast, :string
  end
end
