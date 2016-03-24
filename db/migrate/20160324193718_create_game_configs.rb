class CreateGameConfigs < ActiveRecord::Migration
  def change
    create_table :game_configs do |t|
      t.integer :gameConfigID
      t.integer :gameID
      t.string :gameConfP1
      t.string :gameConfP2
      t.string :gameConfP3
      t.string :gameConfP4
      t.string :gameConfP5
      t.string :gameConfP6
      t.string :gameConfP7
      t.string :gameConfP8
      t.string :gameConfP9
      t.string :gameConfP10

      t.timestamps null: false
    end
  end
end
