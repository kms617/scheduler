class AddAssociationUsersAppointments < ActiveRecord::Migration
  def change
    add_column :users, :appointment_id, :integer
  end
end
