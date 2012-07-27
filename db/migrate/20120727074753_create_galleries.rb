class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title, default: "", null: false
      t.text :description
      t.string :permalink, default: "", null: false
      t.integer :photo_id

      t.timestamps
    end
  end
end
