class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :picture_url
      t.string :listing_id

      t.timestamps
    end
  end
end
