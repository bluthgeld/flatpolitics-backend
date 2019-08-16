require 'rest-client'
require 'JSON'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "poll_data_favorabilities", force: :cascade do |t|
#     t.integer "poll_id"
#     t.integer "candidate_id"
#     t.integer "favorable"
#     t.integer "unfavorable"
#     t.integer "dont_know"

#NewsAPI Variables
news_key_full = "https://newsapi.org/v2/top-headlines?sources=cnn&apiKey=81d881f856994d159d5969432e56616d"
news_key = "81d881f856994d159d5969432e56616d"
news_api = "https://newsapi.org/v2/top-headlines?sources=cnn&apiKey=#{news_key}"
news_api_response  = RestClient.get(news_api)
news_api_parsed = JSON.parse(news_api_response)

def news_article(news_api_parsed)
    news_api_parsed["articles"].map do |article|
    
        article_date = article["publishedAt"] #2019-07-29T13:11:54Z"
        article_source = article["source"]["name"] #CNN
        article_title = article["title"] 
        article_description = article["description"] 
        article_url = article["url"]
        
        News.create!(date_time: article_date, title: article_title, url: article_url, author: article_source, content: article_description)
    end 
end

Candidate.destroy_all
PollDataFavorability.destroy_all
Poll.destroy_all
User.destroy_all
PollDataToday.destroy_all
#Polls

poll1 = Poll.create!(question: "Favorability", pollster: "EconomistYouGov", start_date: "July 21", end_date: "July 23", year: 2019, race: "2020 Democratic Presidential Primary")
poll2 = Poll.create!(question: "Favorability", pollster: "EconomistYouGov", start_date: "July 24", end_date: "July 26", year: 2019, race: "2020 Democratic Presidential Primary")
# poll3 = Poll.create!(question: "Likely Vote Today", pollster: "Emerson", start_date: "July 6", end_date: "July 8", year: 2019, race: "U.S. President")

#Candidates Seed
candidate_1 = Candidate.create!(name: "Joe Biden", state: "Delaware", party: "Democratic")
candidate_2 = Candidate.create!(name: "Cory Booker", state: "New Jersey", party: "Democratic")
candidate_3 = Candidate.create!(name: "Pete Buttigieg", state: "Indiana", party: "Democratic")
candidate_4 = Candidate.create!(name: "Julian Castro", state: "Texas", party: "Democratic")
candidate_5 = Candidate.create!(name: "Kirsten Gillibrand", state: "New York", party: "Democratic")
candidate_6 = Candidate.create!(name: "Kamala Harris", state: "California", party: "Democratic")
candidate_7 = Candidate.create!(name: "Beto O'Rourke", state: "Texas", party: "Democratic")
candidate_8 = Candidate.create!(name: "Elizabeth Warren", state: "Massachussetts", party: "Democratic")

#Poll-Data-Favorability Seed

poll_data_favorability_1 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_1.id, favorable: 39, unfavorable: 43, dont_know: 17)
poll_data_favorability_2 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_2.id, favorable: 31, unfavorable: 33, dont_know: 35)
poll_data_favorability_3 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_3.id, favorable: 29, unfavorable: 29, dont_know: 42)
poll_data_favorability_4 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_4.id, favorable: 28, unfavorable: 27, dont_know: 45)
poll_data_favorability_5 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_5.id, favorable: 24, unfavorable: 34, dont_know: 43)
poll_data_favorability_6 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_6.id, favorable: 33, unfavorable: 36, dont_know: 31)
poll_data_favorability_7 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_7.id, favorable: 29, unfavorable: 36, dont_know: 36)
poll_data_favorability_8 = PollDataFavorability.create!(poll_id: poll1.id, candidate_id: candidate_8.id, favorable: 37, unfavorable: 37, dont_know: 26)
poll_data_favorability_1 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_1.id, favorable: 39, unfavorable: 43, dont_know: 17)
poll_data_favorability_2 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_2.id, favorable: 31, unfavorable: 33, dont_know: 35)
poll_data_favorability_3 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_3.id, favorable: 29, unfavorable: 29, dont_know: 42)
poll_data_favorability_4 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_4.id, favorable: 28, unfavorable: 27, dont_know: 45)
poll_data_favorability_5 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_5.id, favorable: 24, unfavorable: 34, dont_know: 43)
poll_data_favorability_6 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_6.id, favorable: 33, unfavorable: 36, dont_know: 31)
poll_data_favorability_7 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_7.id, favorable: 29, unfavorable: 36, dont_know: 36)
poll_data_favorability_8 = PollDataFavorability.create!(poll_id: poll2.id, candidate_id: candidate_8.id, favorable: 37, unfavorable: 37, dont_know: 26)


# poll_data_todays1 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_1.id, percent: 30)
# poll_data_todays2 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_2.id, percent: 15)
# poll_data_todays3 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_3.id, percent: 15)
# poll_data_todays4 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_4.id, percent: 15)
# poll_data_todays5 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_5.id, percent: 5)
# poll_data_todays6 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_6.id, percent: 4)
# poll_data_todays7 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_7.id, percent: 3)
# poll_data_todays8 = PollDataToday.create!(poll_id: poll3.id, candidate_id: candidate_8.id, percent: 2)


#User

adminuser = User.create!(first_name: "Robert", last_name: "Pancake", username: "admin", postal_code: "10576")
user1 = User.create!(first_name: "Dan", last_name: "Pollitics", username: "dpollitics", postal_code: "10011")

#UserPoll

userpoll1 = UserPoll.create!(user_id: user1.id, poll_id: poll1.id)
userpoll2 = UserPoll.create!(user_id: user1.id, poll_id: poll2.id)
userpoll3 = UserPoll.create!(user_id: adminuser.id, poll_id: poll1.id)

#Calling function to populate news articles
news_article(news_api_parsed)