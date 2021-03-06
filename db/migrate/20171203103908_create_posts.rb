class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content, limit: 140
      t.boolean :hidden, null: false, default: false
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
