class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.has_many :comments

      t.timestamps
    end
  end
end
