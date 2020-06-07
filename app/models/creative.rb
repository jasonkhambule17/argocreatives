class Creative < ApplicationRecord
  validates :name, :description, :industry, :preview_text, presence: true
end
