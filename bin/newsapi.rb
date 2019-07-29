#FOR TESTING

# require_relative "../models/news"
# require "rest-client"
# require "JSON"
# require "byebug"


# news_key_full = "https://newsapi.org/v2/top-headlines?sources=cnn&apiKey=81d881f856994d159d5969432e56616d"
# news_key = "81d881f856994d159d5969432e56616d"
# news_api = "https://newsapi.org/v2/top-headlines?sources=cnn&apiKey=#{news_key}"
# news_api_response  = RestClient.get(news_api)
# news_api_parsed = JSON.parse(news_api_response)


# def news_article(news_api_parsed)
#     news_api_parsed["articles"].map do |article|
    
#         article_date = article["publishedAt"] #2019-07-29T13:11:54Z"
#         article_source = article["source"]["name"] #CNN
#         article_title = article["title"] 
#         article_description = article["description"] 
#         article_url = article["url"]
#         byebug
       
#         News.create!(date_time: article_date, title: article_title, url: article_url, author: article_source, content: article_description)
        
#     end 
# end

# news_article(news_api_parsed)