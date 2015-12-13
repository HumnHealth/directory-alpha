class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name, null:false
      t.string :street
      t.string :city
      t.string :postal
      t.timestamps
    end
  end
end
