require "faker"

20.times do
  User.create(user_name:   Faker::Internet.user_name,
              password:   'password')
end

50.times do 
  Post.create(title:   Faker::Lorem.sentence,
              body:    Faker::Lorem.paragraphs,
              user_id: rand(1..20))
end

200.times do
  Comment.create(comment: Faker::Lorem.paragraph,
                 post_id: rand(1..50),
                 user_id: rand(1..20))
end