User.create!(user_id:"1"
   name:"RAD",
    mobile: "0450 840 293",
    email:"user@example.com",
    password:"rails2020",
    password_confirmation:"rails2020")

 99.timesdo|n|
 name=Faker::Name.name
 email="example-#{n+1}@example.com"
 password="password"
 User.create!(name:name,
    email: email,
    password:password,
    password_confirmation: password)

 users=User.order(:created_at).take(6)
 50.times do
    content=Faker::Lorem.sentence(5)
    users.each {|user|user.microposts.create!(content: content) }
 end