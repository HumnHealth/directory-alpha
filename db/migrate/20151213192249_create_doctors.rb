class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, null:false
      t.string :email
      t.string :phone
      t.string :type
      t.text :description, null:false
      t.integer :address_id
      t.timestamps
    end
  end
end
