class AddBullhornIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bullhorn_id, :integer
  end
end
