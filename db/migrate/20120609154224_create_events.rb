class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :scheduled_date
      t.integer :publisher_id

      t.timestamps
    end
  end
end
