class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.string :snapshotID
      t.integer :interval
      t.string :firstSnapshot
      t.string :lastSnapshot
      t.integer :snapshot1
      t.integer :snapshot2
      t.integer :snapshot3
      t.integer :snapshot4
      t.integer :snapshot5
      t.integer :snapshot6
      t.integer :snapshot7
      t.integer :snapshot8
      t.integer :snapshot9
      t.integer :snapshot10

      t.timestamps null: false
    end
  end
end
