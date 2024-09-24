class AddDescriptionToArticles < ActiveRecord::Migration[7.2]
  def change
    # add_column is the method to add columns to a specific table
    add_column :articles, :description, :text
  end
end
