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

Candidate.destroy_all
PollDataFavorability.destroy_all

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

poll_data_favorability_1 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_1.id, favorable: 39, unfavorable: 43, dont_know: 17)
poll_data_favorability_2 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_2.id, favorable: 31, unfavorable: 33, dont_know: 35)
poll_data_favorability_3 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_3.id, favorable: 29, unfavorable: 29, dont_know: 42)
poll_data_favorability_4 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_4.id, favorable: 28, unfavorable: 27, dont_know: 45)
poll_data_favorability_5 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_5.id, favorable: 24, unfavorable: 34, dont_know: 43)
poll_data_favorability_6 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_6.id, favorable: 33, unfavorable: 36, dont_know: 31)
poll_data_favorability_7 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_7.id, favorable: 29, unfavorable: 36, dont_know: 36)
poll_data_favorability_8 = PollDataFavorability.create!(poll_id: 1, candidate_id: candidate_8.id, favorable: 37, unfavorable: 37, dont_know: 26)
