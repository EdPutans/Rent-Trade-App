class AddPostcodeToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :postcode, :string
  end
end
