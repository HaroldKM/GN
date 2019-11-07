class Article < ActiveRecord::Migration[6.0]
  def change
    create_table :articles
    add_column :articles, :title, :string
    add_column :articles, :content, :text
    add_timestamps :articles, null: true
  end
end
