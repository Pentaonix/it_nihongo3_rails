class CreateBookCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :book_categories do |t|
      # t.references :book, foreign_key: true
      # t.references :category, foreign_key: true
      
      t.belongs_to :category
      t.belongs_to :book

      t.timestamps
    end
  end
end
