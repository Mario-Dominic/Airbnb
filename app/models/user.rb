class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :whishlists, dependent: :destroy
  has_many :whishlisted_properties, through: :whishlists, source: :property, dependent: :destroy
end
