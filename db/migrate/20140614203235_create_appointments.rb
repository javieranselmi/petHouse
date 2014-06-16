class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :requested_date
      t.string :activity
      t.boolean :confirmed

      t.timestamps
    end
  end
end
