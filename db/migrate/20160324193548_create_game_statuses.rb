class CreateGameStatuses < ActiveRecord::Migration
  def change
    create_table :game_statuses do |t|
      t.integer :gameStatusID
      t.string :gameConfigID
      t.integer :gameLevel
      t.string :snapshotID

      t.timestamps null: false
    end
  end
end
