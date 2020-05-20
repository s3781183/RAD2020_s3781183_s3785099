User.create!(
   name:"RAD",
    mobile: "0450840293",
    email:"user@example.com",
    password:"rails2020",
    password_confirmation:"rails2020")

 99.times do|n|
 name=Faker::Name.name
 email="example-#{n+1}@example.com"
 password="password"
 User.create!(name:name,
    email: email,
    password:password,
    password_confirmation: password)
end
 users=User.order(:created_at).take(6)
 50.times do
    content=Faker::Lorem.sentence(5)
    topic=Faker::Lorem.sentence(5)
    title=Faker::Lorem.sentence(1)
    users.each {|user|user.microposts.create!(content: content) }
 end
