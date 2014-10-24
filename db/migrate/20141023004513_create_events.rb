class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    t.string :name
    t.text :description
    t.integer :room_id
    t.date :event_date
    t.timestamps
    end
  end
end
