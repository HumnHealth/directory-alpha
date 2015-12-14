class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name, null:false
      t.string :street
      t.string :city
      t.string :postal
      t.string :email
      t.string :phone
      t.string :website
      t.text :description
      t.timestamps
    end
    add_attachment :practices, :image
  end
end
