class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title, default: "", null: false
      t.text :description
      t.string :photo
      t.integer :gallery_id, default: "0", null: false

      t.timestamps
    end

    add_index :photos, :gallery_id
  end
end
