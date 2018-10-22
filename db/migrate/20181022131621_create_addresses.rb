class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :postcode
      t.integer :flat
      t.string :town
      t.string :country
      t.string :county
      t.string :street

      t.timestamps
    end
  end
end
