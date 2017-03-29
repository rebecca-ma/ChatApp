class Channel < ApplicationRecord
  has_many :messages, -> { order(created_at: :asc) }, dependent: :destroy

  has_many :accesses
  has_many :groups, through: :accesses
  has_many :users, through: :groups

  validates :name, presence: true, uniqueness: true
end
