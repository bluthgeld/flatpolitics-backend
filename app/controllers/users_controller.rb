class UsersController < ApplicationController

  def index
    render json: User.all.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :polls => {
          :except => [:id, :created_at, :updated_at]
        }
      }
    )
  end

end
