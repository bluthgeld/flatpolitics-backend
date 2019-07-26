class Poll < ApplicationRecord

  has_many :user_polls
  has_many :users, through: :user_polls
  has_many :poll_data_favorabilities
  has_many :candidates, through: :poll_data_favorabilities

end
