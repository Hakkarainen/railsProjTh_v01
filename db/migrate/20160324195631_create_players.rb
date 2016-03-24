class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :playerID
      t.integer :sessionID
      t.string :nickName
      t.string :password
      t.string :role
      t.string :priviLedges
      t.string :firstName
      t.string :surName
      t.string :lastLogInTime
      t.integer :gameSubsriptionID
      t.string :gameToLogID
      t.integer :gameEventLogID
      t.string :loggingOnOffToggle
      t.string :eLogPeriodBeging
      t.string :eLogPeriodEnd
      t.string :eventLoggingInfo

      t.timestamps null: false
    end
  end
end
