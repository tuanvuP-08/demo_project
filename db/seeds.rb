50.times do |n|
  title = Faker::SiliconValley.invention
  content = Faker::SiliconValley.quote
  Post.create!(title: title,
               content: content)
end
