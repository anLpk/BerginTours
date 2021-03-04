require "open-uri"

puts "cleaning up database"

Tour.destroy_all
Article.destroy_all

ActsAsTaggableOn::Tag.destroy_all

puts "database is clean"

tour_1 = Tour.create(title: "Istanbul Full Day Classic Old City Tour", description: "Inc Hippodrome, Haghia Sophia, Blue Mosque, Topkapi Palace", duration: "8 hours", tag_text: "Guided", group_size: "6-8 People", price: 75)
file = URI.open("https://images.unsplash.com/photo-1466442929976-97f336a657be?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1565738156138-fb6feacc32f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80")
file_3 = URI.open("https://images.unsplash.com/photo-1558180077-09f158c76707?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80")
file_4 = URI.open("https://images.unsplash.com/photo-1560322527-80ee440caec4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

tour_1.photos.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_2, filename: 'photo2.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_3, filename: 'photo3.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_4, filename: 'photo4.jpg', content_type: 'image/jpg')
tour_1.tag_list = "Istanbul Tours"
tour_1.save

tour_2 = Tour.create(title: "Istanbul Half Day Bosphorus Tour", description: "Starts Morning, Inc Spicy Market, Bosphorus, Ciragan Palace", duration: "6 hours", tag_text: "Bosphorus", group_size: "12-16", price: 40)
file = URI.open("https://images.unsplash.com/photo-1531168301421-0f2e507f2d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1531168301421-0f2e507f2d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_3 = URI.open("https://images.unsplash.com/photo-1531168301421-0f2e507f2d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_4 = URI.open("https://images.unsplash.com/photo-1531168301421-0f2e507f2d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

tour_2.photos.attach(io: file, filename: 'photo5.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_2, filename: 'photo6.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_3, filename: 'photo7.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_4, filename: 'photo8.jpg', content_type: 'image/jpg')
tour_2.tag_list = "Istanbul Tours"
tour_2.save

tour_3 = Tour.create(title: "Istanbul Half Day Bosphorus Tour", description: "Starts Afternoon, Inc Dolmabahce Palace, Pierre Loti, Bosphorus", duration: "6 hours", tag_text: "Bosphorus", group_size: "12-16 People", price: 40)
file = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_3 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_4 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

tour_3.photos.attach(io: file, filename: 'photo9.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_2, filename: 'photo10.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_3, filename: 'photo11.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_4, filename: 'photo12.jpg', content_type: 'image/jpg')
tour_3.tag_list = "Istanbul Tours"
tour_3.save

tour_4 = Tour.create(title: "Istanbul Dolmabahce Palace Half Day Tour", description: "Inc Dolmabahce Palace, Bezm-i Alem Valide Sultan", duration: "10 hours", tag_text: "All Day", group_size: "20 People", price: 45)
file = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_3 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_4 = URI.open("https://images.unsplash.com/photo-1556994526-7408107943e0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

tour_4.photos.attach(io: file, filename: 'photo13.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_2, filename: 'photo14.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_3, filename: 'photo15.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_4, filename: 'photo16.jpg', content_type: 'image/jpg')
tour_4.tag_list = "Istanbul Tours"
tour_4.save

tour_5 = Tour.create(title: "Istanbul Two Continents Full Day Tour", description: "Inc Bosphorus, Spicy Bazaar, Beyler Beyi Palace, Camlica Hill", duration: "10 hours", tag_text: "All Day", group_size: "20 People", price: 39)
file = URI.open("https://images.unsplash.com/photo-1560856311-69382e596cd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1560856311-69382e596cd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_3 = URI.open("https://images.unsplash.com/photo-1560856311-69382e596cd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
file_4 = URI.open("https://images.unsplash.com/photo-1560856311-69382e596cd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

tour_5.photos.attach(io: file, filename: 'photo17.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_2, filename: 'photo18.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_3, filename: 'photo19.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_4, filename: 'photo20.jpg', content_type: 'image/jpg')
tour_5.tag_list = "Istanbul Tours"
tour_5.save

tour_6 = Tour.create(title: "Istanbul Princes' Island Full Day Tour", description: "Inc Buyukada, Princess Island", duration: "10 hours", tag_text: "All Day", group_size: "10 People", price: 53)
file = URI.open("https://images.unsplash.com/photo-1595846415458-404defd93fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1595846415458-404defd93fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_3 = URI.open("https://images.unsplash.com/photo-1595846415458-404defd93fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
file_4 = URI.open("https://images.unsplash.com/photo-1595846415458-404defd93fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

tour_6.photos.attach(io: file, filename: 'photo21.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_2, filename: 'photo22.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_3, filename: 'photo23.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_4, filename: 'photo24.jpg', content_type: 'image/jpg')
tour_6.tag_list = "Istanbul Tours"
tour_6.save

# tour_7 = Tour.create(title: "Istanbul Jewish Heritage Tour", description: "Inc Neve Shalom, Ahrida, Ashkenaz Synagogues", duration: "8 hours", tag_text: "Guided", group_size: "Private", price: 260)
# file = URI.open("https://images.unsplash.com/photo-1582576234380-af3fdf52a24f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
# tour_7.photo.attach(io: file, filename: 'photo7.jpg', content_type: 'image/jpg')
# tour_7.tag_list = "Istanbul Tours"
# tour_7.save

# tour_8 = Tour.create(title: "City Break Istanbul Tour", description: "Inc Blue Mosque, Haghia Sophia, Topkapi Palace, Bosphorus", duration: "10 hours", tag_text: "Small Group", group_size: "8 People", price: 499)
# file = URI.open("https://images.unsplash.com/photo-1611755997792-4109556f35c9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
# tour_8.photo.attach(io: file, filename: 'photo8.jpg', content_type: 'image/jpg')
# tour_8.tag_list = "Istanbul Tours"
# tour_8.save

# tour_9 = Tour.create(title: "Dinner Cruise | Turkish Night in Istanbul", description: "Belly Dancer, Traditional Turkish Dances", duration: "5 hours", tag_text: "Food", group_size: "Big Group", price: 50)
# file = URI.open("https://images.unsplash.com/photo-1589458372086-7375299f81b0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
# tour_9.photo.attach(io: file, filename: 'photo9.jpg', content_type: 'image/jpg')
# tour_9.tag_list = " Istanbul Tours"
# tour_9.save

# tour_10 = Tour.create(title: "Cappadocia Hot Air Balloon Ride", description: "Inc Hot Air Balloon Ride", duration: "4 hours", tag_text: "Balloon", group_size: "8 People", price: 200)
# file = URI.open("https://images.unsplash.com/photo-1607414575003-54a8539f964c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_10.photo.attach(io: file, filename: 'photo10.jpg', content_type: 'image/jpg')
# tour_10.tag_list = "Cappadocia"
# tour_10.save

# tour_11 = Tour.create(title: "Cappadocia Red Tour", description: "Goreme Open Air Museum, Avanos, Fairy Chimneys", duration: "8 hours", tag_text: "All Day", group_size: "16 People", price: 40)
# file = URI.open("https://images.unsplash.com/photo-1613214543182-29220cad191a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# tour_11.photo.attach(io: file, filename: 'photo11.jpg', content_type: 'image/jpg')
# tour_11.tag_list = "Cappadocia"
# tour_11.save

# tour_12 = Tour.create(title: "Cappadocia Green Tour", description: "Inc Cavusin Village, Ortahisar Castle, Kaymakli Underground City, Pigeon Valley", duration: "10 hours", tag_text: "All Day", group_size: "16 People", price: 45)
# file = URI.open("https://images.unsplash.com/photo-1605027528160-32e5fcd6d9c3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1957&q=80")
# tour_12.photo.attach(io: file, filename: 'photo12.jpg', content_type: 'image/jpg')
# tour_12.tag_list = "Cappadocia"
# tour_12.save

# tour_13 = Tour.create(title: "Daily Private Cappadocia Tour", description: "Inc Goreme Open Air Museum, Pasabagi, Kaymakli Underground City", duration: "10 hours", tag_text: "All Day", group_size: "16 People", price: 190)
# file = URI.open("https://images.unsplash.com/photo-1537431701805-c1bb45cd2f92?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1064&q=80")
# tour_13.photo.attach(io: file, filename: 'photo13.jpg', content_type: 'image/jpg')
# tour_13.tag_list = "Cappadocia"
# tour_13.save

# tour_14 = Tour.create(title: "Daily Cappadocia Tour From Istanbul", description: "Inc Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City", duration: "10 hours", tag_text: "Guided", group_size: "Private", price: 375)
# file = URI.open("https://images.unsplash.com/photo-1558184358-42bbd1f16aa5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80")
# tour_14.photo.attach(io: file, filename: 'photo14.jpg', content_type: 'image/jpg')
# tour_14.tag_list = "Cappadocia"
# tour_14.save

# tour_15 = Tour.create(title: "2 Days Daily Cappadocia Tour From Istanbul", description: "Inc Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City, Hot Air Balloon", duration: "10 hours", tag_text: "Guided", group_size: "Private", price: 705)
# file = URI.open("https://images.unsplash.com/photo-1433838552652-f9a46b332c40?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80")
# tour_15.photo.attach(io: file, filename: 'photo15.jpg', content_type: 'image/jpg')
# tour_15.tag_list = "Cappadocia"
# tour_15.save

# tour_16 = Tour.create(title: "3 Days Daily Cappadocia Tour From Istanbul", description: "Inc Goreme Open Air Museum, Fairy Chimneys, Ortahisar Castle, Pigeon Valley, Kaymakli Underground City, Hot Air Balloon", duration: "10 hours", tag_text: "Guided", group_size: "Private", price: 775)
# file = URI.open("https://images.unsplash.com/photo-1605213605677-861baf60c228?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_16.photo.attach(io: file, filename: 'photo16.jpg', content_type: 'image/jpg')
# tour_16.tag_list = "Cappadocia"
# tour_16.save

# tour_17 = Tour.create(title: "Cappadocia Turkish Night", description: "Belly Dancer, Turkish Night", duration: "10 hours", tag_text: "Food", group_size: "Big Group", price: 44)
# file = URI.open("https://images.unsplash.com/photo-1554797073-31d3ce2efd4e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1794&q=80")
# tour_17.photo.attach(io: file, filename: 'photo17.jpg', content_type: 'image/jpg')
# tour_17.tag_list = "Cappadocia"
# tour_17.save

# tour_18 = Tour.create(title: "Ephesus Full Day Tour", description: "Inc Ephesus Ancient City, The House of Virgin Mary, Temple of Artemis, Isabey Mosque", duration: "8 hours", tag_text: "All Day", group_size: "14 People", price: 45)
# file = URI.open("https://images.unsplash.com/photo-1590533821454-ef0a004463dc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_18.photo.attach(io: file, filename: 'photo18.jpg', content_type: 'image/jpg')
# tour_18.tag_list = "Ephesus"
# tour_18.save

# tour_19 = Tour.create(title: "Ephesus Half Day Tour", description: "Inc Ephesus Ancient City, Temple of Artemis", duration: "5 hours", tag_text: "Guided", group_size: "14 People", price: 35)
# file = URI.open("https://images.unsplash.com/photo-1596093331002-1cd47abe37de?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_19.photo.attach(io: file, filename: 'photo19.jpg', content_type: 'image/jpg')
# tour_19.tag_list = "Ephesus"
# tour_19.save

# tour_20 = Tour.create(title: "Highlights of Ephesus Tour", description: "Inc Ephesus Ancient City, The House of Virgin Mary, Ephesus Museum, Seven Sleepers", duration: "8 hours", tag_text: "Private", group_size: "Private", price: 200)
# file = URI.open("https://images.unsplash.com/photo-1602697286756-ed679c33240d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
# tour_20.photo.attach(io: file, filename: 'photo20.jpg', content_type: 'image/jpg')
# tour_20.tag_list = "Ephesus"
# tour_20.save

# tour_21 = Tour.create(title: "Best of Ephesus Full Day", description: "Inc Ephesus Ancient City, The House of Virgin Mary, Temple of Artemis, Isabey Mosque", duration: "8 hours", tag_text: "Private", group_size: "Private", price: 200)
# file = URI.open("https://images.unsplash.com/photo-1591699396114-d936888e470f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_21.photo.attach(io: file, filename: 'photo21.jpg', content_type: 'image/jpg')
# tour_21.tag_list = "Ephesus"
# tour_21.save

# tour_22 = Tour.create(title: "Biblical Ephesus Tour", description: "Inc Ephesus Ancient City, The House of Virgin Mary, Terraced Houses, St. John Basilica", duration: "8 hours", tag_text: "Private", group_size: "Private", price: 200)
# file = URI.open("https://images.unsplash.com/photo-1591699396114-d936888e470f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
# tour_22.photo.attach(io: file, filename: 'photo22.jpg', content_type: 'image/jpg')
# tour_22.tag_list = "Ephesus"
# tour_22.save

# tour_23 = Tour.create(title: "Ephesus & Sirince Tour", description: "Inc Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Temple of Artemis", duration: "10 hours", tag_text: "Private", group_size: "Private", price: 210)
# file = URI.open("https://images.unsplash.com/photo-1589366025085-d060e3f956e6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# tour_23.photo.attach(io: file, filename: 'photo23.jpg', content_type: 'image/jpg')
# tour_23.tag_list = "Ephesus"
# tour_23.save

# tour_24 = Tour.create(title: "Ephesus & Selcuk Museum Tour", description: "Inc Ephesus Ancient City, EphesusMuseum, Temple of Artemis", duration: "9 hours", tag_text: "Private", group_size: "Private", price: 195)
# file = URI.open("https://images.unsplash.com/photo-1599739123872-7743193711cf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# tour_24.photo.attach(io: file, filename: 'photo24.jpg', content_type: 'image/jpg')
# tour_24.tag_list = "Ephesus"
# tour_24.save

# tour_25 = Tour.create(title: "First Class Luxury Turkey Tours | 8 Days", description: "Inc Istanbul, Ephesus, Pamukkale, Cappadocia", duration: "8 days", tag_text: "Deluxe", group_size: "Private", price: 6199)
# file = URI.open("https://images.unsplash.com/photo-1580139644189-14a08f064717?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# tour_25.photo.attach(io: file, filename: 'photo25.jpg', content_type: 'image/jpg')
# tour_25.tag_list = "Turkey Tours"
# tour_25.save

# tour_26 = Tour.create(title: "Colors of Turkey | 6 days", description: "Inc Istanbul, Cappadocia, Ephesus, Pamukkale", duration: "6 days", tag_text: "Private", group_size: "Private", price: 1499)
# file = URI.open("https://images.unsplash.com/photo-1516275860772-794f83076e30?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
# tour_26.photo.attach(io: file, filename: 'photo26.jpg', content_type: 'image/jpg')
# tour_26.tag_list = "Turkey Tours"
# tour_26.save

# tour_27 = Tour.create(title: "Classic Turkey Package | 8 Days", description: "Inc Istanbul, Ephesus, Pamukkale, Cappadocia", duration: "8 days", tag_text: "Private", group_size: "Private", price: 1999)
# file = URI.open("https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1019&q=80")
# tour_27.photo.attach(io: file, filename: 'photo27.jpg', content_type: 'image/jpg')
# tour_27.tag_list = "Turkey Tours"
# tour_27.save

# tour_28 = Tour.create(title: "Western Treasure | 9 Days", description: "Inc Istanbul, Troy, Pergamon, Pamukkale, Ephesus, Priene-Miletos-Didyma", duration: "9 Days", tag_text: "Private", group_size: "Private", price: 2199)
# file = URI.open("https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80")
# tour_28.photo.attach(io: file, filename: 'photo28.jpg', content_type: 'image/jpg')
# tour_28.tag_list = "Turkey Tours"
# tour_28.save

# tour_29 = Tour.create(title: "Best of Turkey | 12 Days", description: "Inc Istanbul, Cappadocia, Ephesus, Pamukkale, Antalya", duration: "12 Days", tag_text: "Private", group_size: "Private", price: 2399)
# file = URI.open("https://images.unsplash.com/photo-1599739123872-7743193711cf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# tour_29.photo.attach(io: file, filename: 'photo29.jpg', content_type: 'image/jpg')
# tour_29.tag_list = "Turkey Tours"
# tour_29.save

# tour_30 = Tour.create(title: "Mount Nemrut & Gobeklite | 2 Days", description: "Inc Gobeklitepe, Edessa, Nemrut", duration: "2 Days", tag_text: "Private", group_size: "Small Group", price: 406)
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80")
# tour_30.photo.attach(io: file, filename: 'photo30.jpg', content_type: 'image/jpg')
# tour_30.tag_list = "Turkey Tours"
# tour_30.save

# tour_31 = Tour.create(title: "Seven Churches Biblical | 4 Days", description: "Inc Smyrna, Pergamon, Thyatira, Sardis, Philadelphia, Laodicea, Ephesus, Hierapolis", duration: "4 Days", tag_text: "Guided", group_size: "Private", price: 1199)
# file = URI.open("https://images.unsplash.com/photo-1586787690508-b40bf19c67a8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1053&q=80")
# tour_31.photo.attach(io: file, filename: 'photo31.jpg', content_type: 'image/jpg')
# tour_31.tag_list = "Turkey Tours"
# tour_31.save

article_1 = Article.create(title: "Beatiful Istanbul", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum ultricies mauris et cursus. Etiam metus arcu, cursus ac orci a, auctor consectetur lorem. Nam ex tellus, fermentum quis libero at, accumsan bibendum arcu. Sed molestie purus in diam hendrerit, id suscipit quam hendrerit. Donec ac blandit arcu. Fusce efficitur augue ac quam varius suscipit. Mauris luctus vestibulum lectus id pretium. Praesent pellentesque dignissim elit quis tincidunt. Donec fermentum, felis et sodales eleifend, massa eros venenatis sapien, et euismod nulla nulla quis dolor. Ut vehicula pellentesque imperdiet. Etiam euismod efficitur porta. Nullam elementum mauris ex.Curabitur at ante elementum, laoreet nibh ac, tincidunt justo. Nunc ante turpis, varius nec ornare quis, interdum a tellus. Nunc vel eros lobortis, mattis quam id, facilisis dolor. Nulla facilisi. Fusce sodales euismod maximus. Cras vulputate erat eget pretium semper. Praesent odio lacus, accumsan eu consequat non, venenatis vitae risus. Fusce vehicula consectetur molestie. Donec ultricies suscipit ornare. Aliquam euismod sed leo in imperdiet. Maecenas tempor mi sed fringilla pharetra. Sed dignissim libero ut nisi convallis pellentesque.Aliquam nec tincidunt lorem. Nullam a eleifend risus. In placerat vulputate est, in egestas nibh faucibus nec. Integer ligula dui, bibendum eu eros ac, ornare auctor magna. Vestibulum semper vulputate justo, eu semper ante auctor sit amet. Donec posuere hendrerit elementum. Nunc sit amet tempus nisl. Vestibulum ultricies purus pulvinar rhoncus ornare. Quisque vitae ligula eu tortor porttitor posuere nec non magna. Ut convallis rhoncus ante vitae facilisis. Donec sit amet metus dictum, bibendum lectus vel, laoreet diam.")
article_2 = Article.create(title: "Beatiful Istanbul", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum ultricies mauris et cursus. Etiam metus arcu, cursus ac orci a, auctor consectetur lorem. Nam ex tellus, fermentum quis libero at, accumsan bibendum arcu. Sed molestie purus in diam hendrerit, id suscipit quam hendrerit. Donec ac blandit arcu. Fusce efficitur augue ac quam varius suscipit. Mauris luctus vestibulum lectus id pretium. Praesent pellentesque dignissim elit quis tincidunt. Donec fermentum, felis et sodales eleifend, massa eros venenatis sapien, et euismod nulla nulla quis dolor. Ut vehicula pellentesque imperdiet. Etiam euismod efficitur porta. Nullam elementum mauris ex.Curabitur at ante elementum, laoreet nibh ac, tincidunt justo. Nunc ante turpis, varius nec ornare quis, interdum a tellus. Nunc vel eros lobortis, mattis quam id, facilisis dolor. Nulla facilisi. Fusce sodales euismod maximus. Cras vulputate erat eget pretium semper. Praesent odio lacus, accumsan eu consequat non, venenatis vitae risus. Fusce vehicula consectetur molestie. Donec ultricies suscipit ornare. Aliquam euismod sed leo in imperdiet. Maecenas tempor mi sed fringilla pharetra. Sed dignissim libero ut nisi convallis pellentesque.Aliquam nec tincidunt lorem. Nullam a eleifend risus. In placerat vulputate est, in egestas nibh faucibus nec. Integer ligula dui, bibendum eu eros ac, ornare auctor magna. Vestibulum semper vulputate justo, eu semper ante auctor sit amet. Donec posuere hendrerit elementum. Nunc sit amet tempus nisl. Vestibulum ultricies purus pulvinar rhoncus ornare. Quisque vitae ligula eu tortor porttitor posuere nec non magna. Ut convallis rhoncus ante vitae facilisis. Donec sit amet metus dictum, bibendum lectus vel, laoreet diam.")
puts "database is clean"

puts "#{Tour.count} Tour created..."
puts "#{Article.count} Article created..."

puts "Finished mate..."
