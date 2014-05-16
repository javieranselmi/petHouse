class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :admin
      t.string :adress_street
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :adress_number
      t.string :adress_apartment
      t.string :location
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
