require "open-uri"

puts "cleaning up database"

Tour.destroy_all
puts "database is clean"

tour_1 = Tour.create(title: "Istanbul Full Day", description: "Inc Blue Mosque and Hagia Sophia", duration: "6 hours", tag_text: "Guided", group_size: "6-8 People", price: rand(40..100))
file = URI.open("https://images.unsplash.com/photo-1491252476179-5f2566566ab8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
tour_1.photo.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')

tour_2 = Tour.create(title: "Ephesus Full Day", description: "Inc Artemis and Isabey Mosque", duration: "8 hours", tag_text: "Day Trip", group_size: "Private", price: rand(80..100))
file = URI.open("https://images.unsplash.com/photo-1589366025085-d060e3f956e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
tour_2.photo.attach(io: file, filename: 'photo2.jpg', content_type: 'image/jpg')

tour_3 = Tour.create(title: "Istanbul Full Day", description: "Inc Dolmabahce and Topkapi Palace", duration: "10 hours", tag_text: "Guided", group_size: "4 People", price: rand(40..100))
file = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
tour_3.photo.attach(io: file, filename: 'photo3.jpg', content_type: 'image/jpg')

tour_4 = Tour.create(title: "Pamukkale", description: "Inc Hierapolis Ancient City", duration: "11 hours", tag_text: "All Day", group_size: "20 People", price: rand(40..80))
file = URI.open("https://images.unsplash.com/photo-1595846415458-404defd93fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
tour_4.photo.attach(io: file, filename: 'photo4.jpg', content_type: 'image/jpg')

puts "#{Tour.count} Tour created..."

puts 'Finished!'
