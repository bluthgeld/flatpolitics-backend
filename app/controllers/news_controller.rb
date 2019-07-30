class NewsController < ApplicationController

  def index
    news = News.all

    render json: news.to_json(
      :except => [:created_at, :updated_at ]
    )

  end



end
