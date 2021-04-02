class RemoveFieldFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :reward_store
  end
end
