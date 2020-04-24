3.times do
  user = User.create(
    email: Faker::Internet.email,
    password: 'password98'
  )
  2.times do |toy|
    name = Faker::Appliance.brand
    p Toy.create(
        name: name,
        description: "#{name} is super safe",
        date_posted: Time.now,
        posted_by: ["Sally", "Sam", "Tyson", "Mark"].sample,
        user_id: user.id
    )
  end
end