class CreateTacos < ActiveRecord::Migration

  create_table :tacos do |t|
    t.string :name
    t.string :photo_url
    t.timestamps
  end
end
