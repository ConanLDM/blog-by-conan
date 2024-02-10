# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Sample blog titles
blog_titles = [
  "Lorem Ipsum: The Art of Placeholder Text",
  "10 Tips for Effective Blog Writing",
  "Why Cats Rule the Internet",
  "Exploring the Mysteries of Dark Matter",
  "The Joy of Coding: A Developer's Journey"
]

# Lorem Ipsum used for the blog bodies
blog_bodies = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
  "Pellentesque habitant morbi tristique senectus et netus...",
  "Nullam ac urna eu felis dapibus condimentum sit amet...",
  "Suspendisse potenti. Sed vel libero nec mauris bibendum...",
  "Fusce dapibus, tellus ac cursus commodo, tortor mauris..."
]

# This creates the blog posts
blog_titles.each_with_index do |title, index|
  Post.create!(title: title, body: blog_bodies[index])
end

puts "Blog posts have been succesffuly added to the index page!"
