class Categories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories
    add_column :categories, :name, :string
    add_column :categories, :slug, :string
    add_timestamps :categories, null: true
  end
end
