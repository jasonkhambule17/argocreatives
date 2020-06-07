class Article < ApplicationRecord
  validates :title, :text, :author, :preview_text, presence: true
end
