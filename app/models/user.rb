class User < ApplicationRecord
  belongs_to :group
  
  validates :name, presence: true, uniqueness: true
end
