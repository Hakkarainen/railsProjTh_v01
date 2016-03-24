class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :gameID
      t.string :gameName
      t.string :gameVersion
      t.string :gameGenre
      t.string :gamePublisher
      t.integer :gamePublYear
      t.string :pricePoint1
      t.string :pricePoint2
      t.string :pricePoint3
      t.string :pricePoint4
      t.string :conditionsInfo
      t.integer :playerCount
      t.integer :playCount
      t.integer :bestResult
      t.integer :secondBestResult
      t.integer :thirdBestResult

      t.timestamps null: false
    end
  end
end
