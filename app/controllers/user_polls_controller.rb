class UserPollsController < ApplicationController

  def index
    render json: UserPoll.all
  end

end
