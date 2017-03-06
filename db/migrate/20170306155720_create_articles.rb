class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :category_id, null: false
      t.decimal :price, scale: 2, precision: 7, null: false

      t.timestamps null: false
    end
  end
end
