class AddBullhornIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bullhornid, :string
  end
end
