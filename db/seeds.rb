# 50.times do |n|
#   title = Faker::SiliconValley.invention
#   content = Faker::SiliconValley.quote
#   Post.create!(title: title,
#                content: content)
# end

# 50.times do |n|
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#   phone = Faker::PhoneNumber.cell_phone
#   email = "demo-project#{n+1}@lienketso.vn"
#   password = "password"
#   User.create!(first_name: first_name,
#                last_name: last_name,
#                email: email,
#                phone: phone,
#                password: password,
#                password_confirmation: password)
# end

User.create!(first_name: "ChiPheo",
               last_name: "Nguyen",
               email: "admin@gmail.com",
               phone: "0888.08.11.96",
               password: "admin123",
               password_confirmation: "admin123")
