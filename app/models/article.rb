class Article < ApplicationRecord
  validates :title, :text, :author, :preview_text, presence: true
  has_one_attached :article_image
end
