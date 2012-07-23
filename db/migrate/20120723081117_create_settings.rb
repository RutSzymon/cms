class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.key :integer
      t.value :text

      t.timestamps
    end
  end
end
