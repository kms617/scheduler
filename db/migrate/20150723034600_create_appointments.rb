class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.timestamps
      t.datetime :scheduled_time
      t.string :location
      t.boolean :booked, null: false, default: false
      t.integer :recruiter_id
    end
  end
end
