class Talk < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :lang, presence: true, length: { maximum: 20 }
  validates :code, presence: true
end
