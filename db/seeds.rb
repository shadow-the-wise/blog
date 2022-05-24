# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# pic 0-8
pictures = [
"https://github.com/shadowchaser04/article-images/blob/master/1917.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/alien.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/avatar.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/batman.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/blackpanther.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/jaws.jpg",
"https://github.com/shadowchaser04/article-images/blob/master/life-of-pie.jpg",
]

# text[0]
text = ["It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."]

# title 0-13
title = [
"what movie would you delete",
"what place that exists only in a movie",
"what’s your favorite movie-related app",
"have you ever attended a film festival?",
"Why Do Queer and Female Viewers Love the Trickster?",
"Arctic thriller’s film crew struggled",
"The San Diego Comic-Con News Generator",
"The Movies Are Back. But What Are Movies Now?",
"in defence of historical inaccuracy",
"movies themselves, are so awful these days",
"Donald Trump‘s Presidency Was Supposed to Be Great",
"10+ minutes of glorious dancing",
"how we look at art… and how we think about it",
"reader Bluejay’s project to help us all stay sane",
]


# Basic categories.
cat = ["reviews", "news"]

# Create some article categories
cat.each do |c|
  Category.find_or_create_by(name: c)
end

# Create a category section.
30.times do |a|
  Article.create(title: title[rand(0..13)], content: text[0], category_id: rand(1..2), published: true).pictures.create(name: pictures[rand(0..6)])
rescue => error
  puts error.message
end
