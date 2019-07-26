class UsersController < ApplicationController

  def index
    render json: User.all.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :polls => {
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
        }
      }
    )
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :polls => {
          :except => [:id, :created_at, :updated_at ],
          :include => {
            :poll_data_favorabilities => {
              :except => [:id, :created_at, :updated_at]
            }
          }
        }
      }
    )
  end

end
