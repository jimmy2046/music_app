User.create!(first_name:  "Example",
             last_name: "User",
             email: "example@railstutorial.org",
             password:              "secret",
             password_confirmation: "secret",
             admin: true)

99.times do |n|
  firstName = Faker::Name.first_name
  lastName = Faker::Name.last_name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(first_name:  firstName,
               last_name: lastName,
               email: email,
               password:              password,
               password_confirmation: password)
end

# Microposts
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
