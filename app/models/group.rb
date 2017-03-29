class Group < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :accesses
  has_many :channels, through: :accesses

  validates :name, presence: true, uniqueness: true
end
