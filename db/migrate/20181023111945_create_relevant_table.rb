class CreateRelevantTable < ActiveRecord::Migration[5.2]
  def change
    create_table :relevants do |t|
      t.string :postcode
      t.integer :user_id
    end
  end
end
