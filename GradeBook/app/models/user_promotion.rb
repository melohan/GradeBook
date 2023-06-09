class UserPromotion < ApplicationRecord
  belongs_to :promotion
  belongs_to :user

  delegate :name, to: :promotion, prefix: true
  delegate :full_name, to: :user, prefix: true

  validates :user_id, uniqueness: { scope: :promotion_id, message: "is already assigned to this promotion."}
end
