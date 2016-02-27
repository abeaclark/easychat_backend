require 'faker'


11.times do
  User.create({
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              photo_url: Faker::Avatar.image,
              })
end


i = 0
first_time = Faker::Time.forward(1, :morning)
while i < 10 do

  Shift.create({
              start_time: (first_time + (i * 1).hours),
              user_id: (rand(10) + 1)
              })

  i += 1
end



