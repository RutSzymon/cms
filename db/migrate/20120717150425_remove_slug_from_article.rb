class RemoveSlugFromArticle < ActiveRecord::Migration
  def up
    remove_column :articles, :slug
  end

  def down
    add_column :articles, :slug, :string
  end
end
