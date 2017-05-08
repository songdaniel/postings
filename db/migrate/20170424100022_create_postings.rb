class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
