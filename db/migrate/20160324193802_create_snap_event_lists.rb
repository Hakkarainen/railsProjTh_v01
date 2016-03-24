class CreateSnapEventLists < ActiveRecord::Migration
  def change
    create_table :snap_event_lists do |t|
      t.integer :snapEventListID
      t.string :snapEventType
      t.string :eventListTimeStamp
      t.integer :snapEvent1
      t.integer :snapEvent2
      t.integer :snapEvent3
      t.integer :snapEvent4
      t.integer :snapEvent5
      t.integer :snapEvent6
      t.integer :snapEvent7
      t.integer :snapEvent8
      t.string :snapEvent9
      t.string :snapEvent10

      t.timestamps null: false
    end
  end
end
