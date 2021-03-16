require "open-uri"

puts "cleaning up database"

Tour.destroy_all
Article.destroy_all

ActsAsTaggableOn::Tag.destroy_all

puts "database is clean"

tour_1 = Tour.create(title: "Cappadocia Hot Air Balloon Ride", description: "Hot Air Balloon Ride", duration: "2 hours", tag_text: "Popular", group_size: "10-16 People", price: 189)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/balloon_ride/Balloon_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/balloon_ride/Balloon_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/balloon_ride/Balloon_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/balloon_ride/Balloon_1.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/balloon_ride/Balloon_5.jpg'))

tour_1.photos.attach(io: file_1, filename: 'Balloon_3.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_2, filename: 'Balloon_4.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_3, filename: 'Balloon_2.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_4, filename: 'Balloon_1.jpg', content_type: 'image/jpg')
tour_1.photos.attach(io: file_5, filename: 'Balloon_5.jpg', content_type: 'image/jpg')
tour_1.tag_list = "Cappadocia"
tour_1.save

tour_2 = Tour.create(title: "Cappadocia Red Tour", description: "Goreme Open Air Museum, Avanos, Fairy Chimneys", duration: "8 Hours", tag_text: "Guided", group_size: "10-16 People", price: 39)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/red_tour/Red_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/red_tour/Red_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/red_tour/Red_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/red_tour/Red_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/red_tour/Red_5.jpg'))

tour_2.photos.attach(io: file_1, filename: 'Red_4.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_2, filename: 'Red_1.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_3, filename: 'Red_3.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_4, filename: 'Red_2.jpg', content_type: 'image/jpg')
tour_2.photos.attach(io: file_5, filename: 'Red_5.jpg', content_type: 'image/jpg')
tour_2.tag_list = "Cappadocia"
tour_2.save

tour_3 = Tour.create(title: "Cappadocia Green Tour", description: "Cavusin Village, Ortahisar Castle, Kaymakli Underground City, Pigeon Valley", duration: "8 Hours", tag_text: "Guided", group_size: "10-16 People", price: 45)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/green_tour/Green_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/green_tour/Green_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/green_tour/Green_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/green_tour/Green_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/green_tour/Green_2.jpg'))

tour_3.photos.attach(io: file_1, filename: 'Green_4.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_2, filename: 'Green_1.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_3, filename: 'Green_3.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_4, filename: 'Green_2.jpg', content_type: 'image/jpg')
tour_3.photos.attach(io: file_5, filename: 'Green_5.jpg', content_type: 'image/jpg')
tour_3.tag_list = "Cappadocia"
tour_3.save

tour_4 = Tour.create(title: "Daily Private Cappadocia Tour", description: "Goreme Open Air Museum, Pasabagi, Kaymakli Underground City", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 145)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/daily_private/Private_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/daily_private/Private_5.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/daily_private/Private_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/daily_private/Private_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/daily_private/Private_1.jpg'))

tour_4.photos.attach(io: file_1, filename: 'Private_4.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_2, filename: 'Private_5.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_3, filename: 'Private_2.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_4, filename: 'Private_3.jpg', content_type: 'image/jpg')
tour_4.photos.attach(io: file_5, filename: 'Private_1.jpg', content_type: 'image/jpg')
tour_4.tag_list = "Cappadocia"
tour_4.save

tour_5 = Tour.create(title: "Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 319)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/from_istanbul/daily_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/from_istanbul/daily_5.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/from_istanbul/daily_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/from_istanbul/daily_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/from_istanbul/daily_4.jpg'))

tour_5.photos.attach(io: file_1, filename: 'daily_1.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_2, filename: 'daily_5.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_3, filename: 'daily_2.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_4, filename: 'daily_3.jpg', content_type: 'image/jpg')
tour_5.photos.attach(io: file_5, filename: 'daily_4.jpg', content_type: 'image/jpg')
tour_5.tag_list = "Cappadocia"
tour_5.save

tour_6 = Tour.create(title: "2 Days Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City, Hot Air Balloon", duration: "2 Days", tag_text: "Guided", group_size: "Private", price: 699)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/two_days/two_days_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/two_days/two_days_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/two_days/two_days_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/two_days/two_days_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/two_days/two_days_5.jpg'))

tour_6.photos.attach(io: file_1, filename: 'two_days_3.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_2, filename: 'two_days_2.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_3, filename: 'two_days_1.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_4, filename: 'two_days_4.jpg', content_type: 'image/jpg')
tour_6.photos.attach(io: file_5, filename: 'two_days_5.jpg', content_type: 'image/jpg')
tour_6.tag_list = "Cappadocia"
tour_6.save

tour_7 = Tour.create(title: "3 Days Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Ortahisar Castle, Pigeon Valley, Kaymakli Underground City, Hot Air Balloon", duration: "3 Days", tag_text: "Guided", group_size: "Private", price: 699)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/three_days/three_days_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/three_days/three_days_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/three_days/three_days_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/three_days/three_days_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/three_days/three_days_1.jpg'))

tour_7.photos.attach(io: file_1, filename: 'three_days_3.jpg', content_type: 'image/jpg')
tour_7.photos.attach(io: file_2, filename: 'three_days_2.jpg', content_type: 'image/jpg')
tour_7.photos.attach(io: file_3, filename: 'three_days_5.jpg', content_type: 'image/jpg')
tour_7.photos.attach(io: file_4, filename: 'three_days_4.jpg', content_type: 'image/jpg')
tour_7.photos.attach(io: file_5, filename: 'three_days_1.jpg', content_type: 'image/jpg')
tour_7.tag_list = "Cappadocia"
tour_7.save

tour_8 = Tour.create(title: "Cappadocia Turkish Night", description: " Belly Dancer, Turkish Night", duration: "4 Hours", tag_text: "Inc Dinner", group_size: "Big Group", price: 45)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/turkish_night/night_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/turkish_night/night_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/turkish_night/night_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/turkish_night/night_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Cappadocia/turkish_night/night_3.jpg'))

tour_8.photos.attach(io: file_1, filename: 'night_3.jpg', content_type: 'image/jpg')
tour_8.photos.attach(io: file_2, filename: 'night_2.jpg', content_type: 'image/jpg')
tour_8.photos.attach(io: file_3, filename: 'night_1.jpg', content_type: 'image/jpg')
tour_8.photos.attach(io: file_4, filename: 'night_3.jpg', content_type: 'image/jpg')
tour_8.photos.attach(io: file_5, filename: 'night_3.jpg', content_type: 'image/jpg')
tour_8.tag_list = "Cappadocia"
tour_8.save

tour_9 = Tour.create(title: "Istanbul Classic Old City Tour", description: "Hippodrome, Haghia Sophia, Blue Mosque, Topkapi Palace", duration: "Full Day", tag_text: "Skip the line", group_size: "10-16 People", price: 69)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/old_city/old_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/old_city/old_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/old_city/old_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/old_city/old_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/old_city/old_3.jpg'))

tour_9.photos.attach(io: file_1, filename: 'old_1.jpg', content_type: 'image/jpg')
tour_9.photos.attach(io: file_2, filename: 'old_4.jpg', content_type: 'image/jpg')
tour_9.photos.attach(io: file_3, filename: 'old_5.jpg', content_type: 'image/jpg')
tour_9.photos.attach(io: file_4, filename: 'old_2.jpg', content_type: 'image/jpg')
tour_9.photos.attach(io: file_5, filename: 'old_3.jpg', content_type: 'image/jpg')
tour_9.tag_list = "Istanbul"
tour_9.save

tour_10 = Tour.create(title: "Bosphorus Morning Tour", description: "Spicy Bazaar, Bosphorus, Ciragan Palace", duration: "Half Day", tag_text: "Guided", group_size: "Group", price: 37)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/half_morning/bosp_5.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/half_morning/bosp_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/half_morning/bosp_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/half_morning/bosp_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/half_morning/bosp_1.jpg'))

tour_10.photos.attach(io: file_1, filename: 'bosp_5.jpg', content_type: 'image/jpg')
tour_10.photos.attach(io: file_2, filename: 'bosp_4.jpg', content_type: 'image/jpg')
tour_10.photos.attach(io: file_3, filename: 'bosp_3.jpg', content_type: 'image/jpg')
tour_10.photos.attach(io: file_4, filename: 'bosp_2.jpg', content_type: 'image/jpg')
tour_10.photos.attach(io: file_5, filename: 'bosp_1.jpg', content_type: 'image/jpg')
tour_10.tag_list = "Istanbul"
tour_10.save

tour_11 = Tour.create(title: "Bosphorus Afternoon Tour", description: "Dolmabahce Palace, Pierre Loti, Bosphorus", duration: "Half Day", tag_text: "Guided", group_size: "Group", price: 37)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/afternoon/afternoon_9.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/afternoon/afternoon_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/afternoon/afternoon_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/afternoon/afternoon_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/afternoon/afternoon_5.jpg'))

tour_11.photos.attach(io: file_1, filename: 'afternoon_9.jpg', content_type: 'image/jpg')
tour_11.photos.attach(io: file_2, filename: 'afternoon_2.jpg', content_type: 'image/jpg')
tour_11.photos.attach(io: file_3, filename: 'afternoon_3.jpg', content_type: 'image/jpg')
tour_11.photos.attach(io: file_4, filename: 'afternoon_4.jpg', content_type: 'image/jpg')
tour_11.photos.attach(io: file_5, filename: 'afternoon_5.jpg', content_type: 'image/jpg')
tour_11.tag_list = "Istanbul"
tour_11.save

tour_12 = Tour.create(title: "Istanbul Dolmabahce Palace", description: "Dolmabahce Palace, Bezm-i Alem Valide Sultan", duration: "Half Day", tag_text: "Guided", group_size: "12-16 People", price: 39)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/dolma/dolma_2.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/dolma/dolma_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/dolma/dolma_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/dolma/dolma_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/dolma/dolma_1.jpg'))

tour_12.photos.attach(io: file_1, filename: 'dolma_2.jpg', content_type: 'image/jpg')
tour_12.photos.attach(io: file_2, filename: 'dolma_4.jpg', content_type: 'image/jpg')
tour_12.photos.attach(io: file_3, filename: 'dolma_5.jpg', content_type: 'image/jpg')
tour_12.photos.attach(io: file_4, filename: 'dolma_3.jpg', content_type: 'image/jpg')
tour_12.photos.attach(io: file_5, filename: 'dolma_1.jpg', content_type: 'image/jpg')
tour_12.tag_list = "Istanbul"
tour_12.save

tour_13 = Tour.create(title: "Istanbul Two Continents", description: "Bosphorus, Spicy Bazaar, Beyler Beyi Palace, Camlica Hill", duration: "Full Day", tag_text: "Guided", group_size: "12-16 People", price: 39)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/two_cont/two_cont_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/two_cont/two_cont_5.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/two_cont/two_cont_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/two_cont/two_cont_1.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/two_cont/two_cont_4.jpg'))

tour_13.photos.attach(io: file_1, filename: 'two_cont_3.jpg', content_type: 'image/jpg')
tour_13.photos.attach(io: file_2, filename: 'two_cont_5.jpg', content_type: 'image/jpg')
tour_13.photos.attach(io: file_3, filename: 'two_cont_2.jpg', content_type: 'image/jpg')
tour_13.photos.attach(io: file_4, filename: 'two_cont_1.jpg', content_type: 'image/jpg')
tour_13.photos.attach(io: file_5, filename: 'two_cont_4.jpg', content_type: 'image/jpg')
tour_13.tag_list = "Istanbul"
tour_13.save

tour_14 = Tour.create(title: "Istanbul Princes' Island", description: "Buyukada, Princess Island", duration: "Full Day", tag_text: "Guided", group_size: "Group", price: 49)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/island/island_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/island/island_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/island/island_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/island/island_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/island/island_3.jpg'))

tour_14.photos.attach(io: file_1, filename: 'island_1.jpg', content_type: 'image/jpg')
tour_14.photos.attach(io: file_2, filename: 'island_4.jpg', content_type: 'image/jpg')
tour_14.photos.attach(io: file_3, filename: 'island_5.jpg', content_type: 'image/jpg')
tour_14.photos.attach(io: file_4, filename: 'island_2.jpg', content_type: 'image/jpg')
tour_14.photos.attach(io: file_5, filename: 'island_3.jpg', content_type: 'image/jpg')
tour_14.tag_list = "Istanbul"
tour_14.save

tour_15 = Tour.create(title: "Istanbul Jewish Heritage Tour", description: "Neve Shalom, Ahrida, Ashkenaz Synagogues", duration: "Full Day", tag_text: "Skip the line", group_size: "Small Group", price: 249)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/jew/jew_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/jew/jew_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/jew/jew_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/jew/jew_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/jew/jew_5.jpg'))

tour_15.photos.attach(io: file_1, filename: 'jew_1.jpg', content_type: 'image/jpg')
tour_15.photos.attach(io: file_2, filename: 'jew_2.jpg', content_type: 'image/jpg')
tour_15.photos.attach(io: file_3, filename: 'jew_3.jpg', content_type: 'image/jpg')
tour_15.photos.attach(io: file_4, filename: 'jew_4.jpg', content_type: 'image/jpg')
tour_15.photos.attach(io: file_5, filename: 'jew_5.jpg', content_type: 'image/jpg')
tour_15.tag_list = "Istanbul"
tour_15.save

tour_16 = Tour.create(title: "City Break Tour", description: "Blue Mosque, Haghia Sophia, Topkapi Palace, Bosphorus", duration: "3 Days", tag_text: "Skip the line", group_size: "Small Group", price: 599)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_2.jpg'))

tour_16.photos.attach(io: file_1, filename: 'break_3.jpg', content_type: 'image/jpg')
tour_16.photos.attach(io: file_2, filename: 'break_1.jpg', content_type: 'image/jpg')
tour_16.photos.attach(io: file_3, filename: 'break_5.jpg', content_type: 'image/jpg')
tour_16.photos.attach(io: file_4, filename: 'break_4.jpg', content_type: 'image/jpg')
tour_16.photos.attach(io: file_5, filename: 'break_2.jpg', content_type: 'image/jpg')
tour_16.tag_list = "Istanbul"
tour_16.save

tour_17 = Tour.create(title: "Private Classic Old City", description: "Hippodrome, Haghia Sophia, Blue Mosque, Topkapi Palace", duration: "Full Day", tag_text: "Skip the line", group_size: "Private", price: 199)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_5.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_1.jpg'))

tour_17.photos.attach(io: file_1, filename: 'classic_3.jpg', content_type: 'image/jpg')
tour_17.photos.attach(io: file_2, filename: 'classic_5.jpg', content_type: 'image/jpg')
tour_17.photos.attach(io: file_3, filename: 'classic_2.jpg', content_type: 'image/jpg')
tour_17.photos.attach(io: file_4, filename: 'classic_4.jpg', content_type: 'image/jpg')
tour_17.photos.attach(io: file_5, filename: 'classic_1.jpg', content_type: 'image/jpg')
tour_17.tag_list = "Istanbul"
tour_17.save

tour_18 = Tour.create(title: "Ephesus Classic Full Day", description: "Ephesus Ancient City, The House of Virgin Mary, Temple of Artemis, Isabey Mosque", duration: "8 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 39)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_6.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_7.jpg'))

tour_18.photos.attach(io: file_1, filename: 'EphesusFullDay_1.jpg', content_type: 'image/jpg')
tour_18.photos.attach(io: file_2, filename: 'EphesusFullDay_2.jpg', content_type: 'image/jpg')
tour_18.photos.attach(io: file_3, filename: 'EphesusFullDay_3.jpg', content_type: 'image/jpg')
tour_18.photos.attach(io: file_4, filename: 'EphesusFullDay_6.jpg', content_type: 'image/jpg')
tour_18.photos.attach(io: file_5, filename: 'EphesusFullDay_7.jpg', content_type: 'image/jpg')
tour_18.tag_list = "Ephesus"
tour_18.save

tour_19 = Tour.create(title: "Ephesus Half Day", description: "Ephesus Ancient City, Temple of Artemis", duration: "4 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 30)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_5.jpg'))

tour_19.photos.attach(io: file_1, filename: 'EphesusHalfDay_1.jpg', content_type: 'image/jpg')
tour_19.photos.attach(io: file_2, filename: 'EphesusHalfDay_2.jpg', content_type: 'image/jpg')
tour_19.photos.attach(io: file_3, filename: 'EphesusHalfDay_3.jpg', content_type: 'image/jpg')
tour_19.photos.attach(io: file_4, filename: 'EphesusHalfDay_6.jpg', content_type: 'image/jpg')
tour_19.photos.attach(io: file_5, filename: 'EphesusHalfDay_7.jpg', content_type: 'image/jpg')
tour_19.tag_list = "Ephesus"
tour_19.save

tour_20 = Tour.create(title: "Highlights of Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Ephesus Museum, Seven Sleepers", duration: "Full Day", tag_text: "Skip the line", group_size: "Private", price: 169)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_3.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_4.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_5.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_2.jpg'))

tour_20.photos.attach(io: file_1, filename: 'highlights_1.jpg', content_type: 'image/jpg')
tour_20.photos.attach(io: file_2, filename: 'highlights_3.jpg', content_type: 'image/jpg')
tour_20.photos.attach(io: file_3, filename: 'highlights_4.jpg', content_type: 'image/jpg')
tour_20.photos.attach(io: file_4, filename: 'highlights_5.jpg', content_type: 'image/jpg')
tour_20.photos.attach(io: file_5, filename: 'highlights_2.jpg', content_type: 'image/jpg')
tour_20.tag_list = "Ephesus"
tour_20.save

tour_21 = Tour.create(title: "Diamond of Ephesus", description: " Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Ephesus Museum, Temple of Artemis", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 189)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_5.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_4.jpg'))

tour_21.photos.attach(io: file_1, filename: 'diamond_1.jpg', content_type: 'image/jpg')
tour_21.photos.attach(io: file_2, filename: 'diamond_5.jpg', content_type: 'image/jpg')
tour_21.photos.attach(io: file_3, filename: 'diamond_3.jpg', content_type: 'image/jpg')
tour_21.photos.attach(io: file_4, filename: 'diamond_2.jpg', content_type: 'image/jpg')
tour_21.photos.attach(io: file_5, filename: 'diamond_4.jpg', content_type: 'image/jpg')
tour_21.tag_list = "Ephesus"
tour_21.save

tour_22 = Tour.create(title: "Biblical Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Terraced Houses, St. John Basilica", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 199)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_5.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_1.jpg'))

tour_22.photos.attach(io: file_1, filename: 'biblical_5.jpg', content_type: 'image/jpg')
tour_22.photos.attach(io: file_2, filename: 'biblical_4.jpg', content_type: 'image/jpg')
tour_22.photos.attach(io: file_3, filename: 'biblical_3.jpg', content_type: 'image/jpg')
tour_22.photos.attach(io: file_4, filename: 'biblical_2.jpg', content_type: 'image/jpg')
tour_22.photos.attach(io: file_5, filename: 'biblical_1.jpg', content_type: 'image/jpg')
tour_22.tag_list = "Ephesus"
tour_22.save

tour_23 = Tour.create(title: "Ephesus & Sirince Village Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Temple of Artemis", duration: "Full Day", tag_text: "Unique", group_size: "Private", price: 179)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_2.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_3.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_4.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_5.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_1.jpg'))

tour_23.photos.attach(io: file_1, filename: 'sirince_2.jpg', content_type: 'image/jpg')
tour_23.photos.attach(io: file_2, filename: 'sirince_3.jpg', content_type: 'image/jpg')
tour_23.photos.attach(io: file_3, filename: 'sirince_4.jpg', content_type: 'image/jpg')
tour_23.photos.attach(io: file_4, filename: 'sirince_5.jpg', content_type: 'image/jpg')
tour_23.photos.attach(io: file_5, filename: 'sirince_1.jpg', content_type: 'image/jpg')
tour_23.tag_list = "Ephesus"
tour_23.save

tour_24 = Tour.create(title: "Ephesus & Pamukkale Tour", description: "Ephesus Ancient City, Pamukkale, Hierapolis", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 249)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_5.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_1.jpg'))

tour_24.photos.attach(io: file_1, filename: 'ephesus_pamukkale_5.jpg', content_type: 'image/jpg')
tour_24.photos.attach(io: file_2, filename: 'ephesus_pamukkale_4.jpg', content_type: 'image/jpg')
tour_24.photos.attach(io: file_3, filename: 'ephesus_pamukkale_3.jpg', content_type: 'image/jpg')
tour_24.photos.attach(io: file_4, filename: 'ephesus_pamukkale_2.jpg', content_type: 'image/jpg')
tour_24.photos.attach(io: file_5, filename: 'ephesus_pamukkale_1.jpg', content_type: 'image/jpg')
tour_24.tag_list = "Ephesus"
tour_24.save

tour_25 = Tour.create(title: "Ephesus Tour from Istanbul", description: "Ephesus Ancient City, Temple of Artemis, The House of Virgin Mary", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 299)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_5.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_4.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_2.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_3.jpg'))

tour_25.photos.attach(io: file_1, filename: 'fromistanbul_5.jpg', content_type: 'image/jpg')
tour_25.photos.attach(io: file_2, filename: 'fromistanbul_4.jpg', content_type: 'image/jpg')
tour_25.photos.attach(io: file_3, filename: 'fromistanbul_1.jpg', content_type: 'image/jpg')
tour_25.photos.attach(io: file_4, filename: 'fromistanbul_2.jpg', content_type: 'image/jpg')
tour_25.photos.attach(io: file_5, filename: 'fromistanbul_3.jpg', content_type: 'image/jpg')
tour_25.tag_list = "Ephesus"
tour_25.save

# article_1 = Article.create(title: "Mesopotamia", author: "Lara Payne",
# content: "Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented. History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years. Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia. ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_1.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_1.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_1.tag_list = "Middle East"
# article_1.save

puts "database is clean"

puts "#{Tour.count} Tour created..."
# puts "#{Article.count} Article created..."

puts "Finished mate..."
