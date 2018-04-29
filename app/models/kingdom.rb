class Kingdom < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 16 }
end
