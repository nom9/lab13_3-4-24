# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users_data = [
  { username: 'marceline', name: 'Marceline Singer', bio: 'Cyclist, musician' },
  { username: 'finn', name: 'Finn Alberts', bio: 'Adventurer and hero, defender of good' },
  { username: 'pb', name: 'Paul Barium', bio: 'Scientist, cake lover' },
  { username: 'jake', name: 'Jake Storm', bio: 'Soccer fan, sky diver' }
]

m_threads_data = [
  { title: 'Did you see the Brazil game?', created_by: 4 },
  { title: 'New French bakery opening in the neighborhood tomorrow', created_by: 3 },
  { title: 'In search of a new guitar', created_by: 1 }
]

posts_data = [
  { m_thread: 1, text: 'That last goal was awesome!', user: 4 },
  { m_thread: 1, text: 'Yes, the way the ball swerved... What talent!', user: 2 },
  { m_thread: 2, text: "I have to try their tarts!", user: 3 },
  { m_thread: 2, text: "I'm planning to stop by in the morning to try their croissants.", user: 2 },
  { m_thread: 2, text: 'I could go for a chocolate eclair!', user: 1 },
  { m_thread: 3, text: 'I need a new acoustic guitar at a good price.', user: 1 }
]

users_data.each { |user_data| User.create!(user_data) }
m_threads_data.each { |m_thread_data| MThread.create!(m_thread_data) }
posts_data.each { |post_data| Post.create!(post_data) }