class CreateRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.references :bank, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
