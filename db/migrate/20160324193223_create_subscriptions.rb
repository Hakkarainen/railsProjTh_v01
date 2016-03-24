class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :subscriptionID
      t.integer :gameSubsr1
      t.string :subscType
      t.integer :gameSubsr1
      t.string :subscType
      t.integer :gameSubsr1
      t.string :subscType
      t.integer :gameSubsr1
      t.string :subscType
      t.integer :gameSubsr1
      t.string :subscType

      t.timestamps null: false
    end
  end
end
