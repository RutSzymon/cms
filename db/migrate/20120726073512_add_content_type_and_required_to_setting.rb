class AddContentTypeAndRequiredToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :content_type, :string
    add_column :settings, :required, :boolean, default: true, null: false
  end
end
