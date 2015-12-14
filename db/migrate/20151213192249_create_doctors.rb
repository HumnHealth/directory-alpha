class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, null:false
      t.string :email
      t.string :phone
      t.string :speciality
      t.text :description
      t.integer :practice_id
      t.timestamps
    end
    add_attachment :doctors, :image
  end
end
