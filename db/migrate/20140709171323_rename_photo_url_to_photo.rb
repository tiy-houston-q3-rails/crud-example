class RenamePhotoUrlToPhoto < ActiveRecord::Migration
  def change
    remove_column :tacos, :photo_url
    add_column :tacos, :photo, :string
  end
end
