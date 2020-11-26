class Book < ApplicationRecord
    has_one_attached :image
    has_many :book_review, -> { order "created_at DESC"}, dependent: :destroy
    
    has_many :book_categories,dependent: :destroy
    has_many :categories, through: :book_categories
end
