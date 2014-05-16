class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.string :description
      t.string :image_url
      t.string :size

      t.timestamps
    end
  end
end
