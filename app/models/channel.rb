class Channel < ApplicationRecord
  #has_and_belongs_to_many :groups
  #has_many :messages

  validates :name, presence: true, uniqueness: true
end
