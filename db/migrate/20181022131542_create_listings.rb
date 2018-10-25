class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :description
      t.string :title
      t.datetime :date
      t.string :landlord_name
      t.string :landlord_info
      t.integer :landlord_phone
      t.string :landlord_email
      t.string :address_id
      t.boolean :available

      t.timestamps
    end
  end
end
