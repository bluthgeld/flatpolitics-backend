class User < ApplicationRecord

  has_many :user_polls
  has_many :polls, through: :user_polls

end
