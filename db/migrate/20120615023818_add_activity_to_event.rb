class AddActivityToEvent < ActiveRecord::Migration
  def change
    add_column :events, :activity, :string
  end
end
