class PollsController < ApplicationController

  def index

    poll = Poll.all

    render json: poll.to_json(
      :except => [:id, :created_at, :updated_at ],
      :include => {
        :poll_data_favorabilities => {
          :except => [:id, :poll_id, :candidate_id, :created_at, :updated_at],
          :include => {
            :candidate => {
              :except => [:id, :created_at, :updated_at]
            }
          }
        }
      }
    )

  end

  def show

    poll = Poll.find_by(id: params[:id])

    render json: poll.to_json(
      :except => [:id, :created_at, :updated_at ],
      :include => {
        :poll_data_favorabilities => {
          :except => [:id,  :poll_id, :candidate_id, :created_at, :updated_at],
          :include => {
            :candidate => {
              :except => [:id, :created_at, :updated_at]
            }
          }
        }
      }
    )
  end

end
