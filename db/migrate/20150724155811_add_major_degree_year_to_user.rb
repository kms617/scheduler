class AddMajorDegreeYearToUser < ActiveRecord::Migration
  def change
    add_column :users, :major, :string
    add_column :users, :degree, :string
    add_column :users, :year, :integer
  end
end
