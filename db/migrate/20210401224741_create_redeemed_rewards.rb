class CreateRedeemedRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :redeemed_rewards do |t|
      t.string :name
      t.datetime :timestamp
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
