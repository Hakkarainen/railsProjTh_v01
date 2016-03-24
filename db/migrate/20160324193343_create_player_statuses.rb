class CreatePlayerStatuses < ActiveRecord::Migration
  def change
    create_table :player_statuses do |t|
      t.integer :playerID
      t.string :timeStamp
      t.integer :gameStatus
      t.string :gameConfigID
      t.integer :gameLevel
      t.integer :gameScore1
      t.integer :gameScore2
      t.integer :gameScore3
      t.integer :gameScore4
      t.integer :gameScore5
      t.integer :gameScore6
      t.integer :gameScore7
      t.integer :gameScore8
      t.integer :gameScore9
      t.integer :gameScore10

      t.timestamps null: false
    end
  end
end
