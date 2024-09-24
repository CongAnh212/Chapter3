User.delete_all

User.create!(name: "Le Cong Anh",
             email: "conganh@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             admin: true)

20.times do |n|
  name = Faker::Name.name
  email = "example#{n + 1}@gmail.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
