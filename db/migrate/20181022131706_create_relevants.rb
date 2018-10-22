class CreateRelevants < ActiveRecord::Migration[5.2]
  def change
    create_table :relevants do |t|
      t.integer :user_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
