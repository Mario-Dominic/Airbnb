class Property < ApplicationRecord
  validates :name, presence: true
  validates :headline, presence: true
  validates :description, presence: true
  validates :address_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true

  has_many_attached :images
  has_many :reviews, dependent: :destroy
  has_many :whishlists, dependent: :destroy
  has_many :whishlisted_users, through: :whishlists, source: :user, dependent: :destroy

  monetize :price_cents, allow_nil: true

  def update_average_rating
    average_rating = reviews.average(:final_rating)
    update_column(:average_final_rating, average_rating)
  end

  def whishlisted_by?(user = nil)
    return if user.nil?
    whishlisted_users.include?(user)
  end
end
