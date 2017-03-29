class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  validates :content, presence: true
  validate :user_has_access

  def user_has_access
    unless user.channels.include?(channel)
      errors.add(:user, 'does not have access to this channel')
    end
  end

  def get_user_name
    unless user.nil?
      user.name
    else
      'Unknown User'
    end
  end

  def get_time
    created_at.to_s
  end
end
