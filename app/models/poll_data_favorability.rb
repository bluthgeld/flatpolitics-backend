class PollDataFavorability < ApplicationRecord

  belongs_to :poll
  belongs_to :candidate

end
