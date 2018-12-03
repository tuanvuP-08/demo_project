50.times do |n|
  title = Faker::Hobbit.character
  content = Faker::Food.description
  Post.create!(title: title,
               content: content)
end
