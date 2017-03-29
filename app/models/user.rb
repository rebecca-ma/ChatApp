class User < ApplicationRecord
  belongs_to :group
  has_many :accesses, through: :group
  has_many :channels, through: :accesses

  validates :name, presence: true, uniqueness: true
end
