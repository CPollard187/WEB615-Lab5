class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.has_many :articles
      t.has_many :comments

      t.timestamps
    end
  end
end
