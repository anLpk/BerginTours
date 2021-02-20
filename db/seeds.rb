require "open-uri"

puts "cleaning up database"

Tour.destroy_all
puts "database is clean"

tour_1 = Tour.create(title: "Istanbul Full Day", description: "Inc Blue Mosque and Hagia Sophia", duration: "8 hours", tag_text: "Guided", group_size: "6-8 People", price: rand(40..100))
file = URI.open("https://images.unsplash.com/photo-1491252476179-5f2566566ab8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
tour_1.photo.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')

puts "#{Tour.count} Tour created..."

puts 'Finished!'
