class Group < ApplicationRecord
  has_many :users, dependent: :destroy
  has_and_belongs_to_many :channels

  validates :name, presence: true
end
