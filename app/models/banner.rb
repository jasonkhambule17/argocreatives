class Banner < ApplicationRecord
	validates :title, :text, :link, presence: true
	has_one_attached :banner_image
end
