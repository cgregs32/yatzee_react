100.times do
  User.create(email: Faker::Internet.unique.email, password: 'password')
  100.times do
    Score.create(user_id: user.id, value: Faker::Number.between(25, 310))
  end
end
