10.times do
  Country.create(name:Faker::Address.country, continent:Faker::GameOfThrones.house)
end

15.times do
  country = Country.all.length
  Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.birthday(18, 65), country_id: rand(1..country))
end

20.times do
  author = Author.all.length
  Book.create(title: Faker::Book.title, genre: Faker::Book.genre, published: rand(1900...2018), author_id: rand(1..author))
end

# At this point do something like
# Book.find(18).author.country.authors.all.first.books
# just to blow their minds

# Create 25 Random Chapters
25.times do
  book = Book.all.length
  Chapter.create(title: Faker::ChuckNorris.fact, book_id: rand(1..book))
end

30.times do
  chapter = Chapter.all.length
  Paragraph.create(content: Faker::Lorem.sentences(3), chapter_id: rand(1..chapter))
end
