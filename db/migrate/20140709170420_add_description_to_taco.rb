class AddDescriptionToTaco < ActiveRecord::Migration
  def change
    add_column :tacos, :description, :text
  end
end
