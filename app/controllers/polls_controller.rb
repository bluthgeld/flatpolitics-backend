class PollsController < ApplicationController

  def index
    render json: Poll.all
  end

  def show

    poll = Poll.find_by(id: params[:id])

    render json: poll.to_json(
      :except => [:id, :created_at, :updated_at ],
      :include => {
        :poll_data_favorabilities => {
          :except => [:id, :created_at, :updated_at]
        }
      }
    )
  end

end
