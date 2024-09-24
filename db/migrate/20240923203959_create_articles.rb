# this file is created by running the command: rails generate migration create_articles
class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title # objectName.dataType :attributeName
      t.timestamps
    end
  end
end
