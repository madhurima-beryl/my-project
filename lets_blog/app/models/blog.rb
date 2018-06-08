class Blog < ApplicationRecord
  validates :title, presence: true, length: {maximum: 140}
  validates :description, presence: true
end
