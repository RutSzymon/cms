class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :key
      t.text :value

      t.timestamps
    end
  end
end
