class Poll < ApplicationRecord

  has_many :user_polls
  has_many :users, through: :user_polls
  has_many :poll_data_favorabilities

end
