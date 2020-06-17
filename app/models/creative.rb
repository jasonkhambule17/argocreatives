class Creative < ApplicationRecord
  validates :name, :description, :industry, :preview_text, presence: true
  has_one_attached :artist_image
end
