require "open-uri"

puts "cleaning up database"

Tour.destroy_all
Article.destroy_all

ActsAsTaggableOn::Tag.destroy_all

puts "database is clean"

tour_1 = Tour.create(title: "Cappadocia Hot Air Balloon Ride", description: "Hot Air Balloon Ride", duration: "2 hours", tag_text: "Popular", group_size: "10-16 People", price: 189, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>Champaigne Celebration</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Fly over the fairy chimneys and tuff valleys of Cappadocia on hot air balloon 
flight and get fascinating views of the unique landscape. You can see the sun rise 
on fairy chimneys and enjoy a Champagne celebration upon your landing.</p>
<p>2 hours before the sunrise we will pick you up from your hotel then drive to area.</p>
<ul>
  <li>Admire Cappadocia's magical fairy chimneys from above</li>
  <li>Get a breakfast with hot coffee and tea before the flight</li>
  <li>Marvel at breathtaking panoramic views of Cappadocia</li>
  <li>Receive a flight certificate and a glass of champagne after landing to celebrate</li>
</ul>
<p>After the flight we will drop you off to your hotel.</p>
</div>")

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

tour_2 = Tour.create(title: "Cappadocia Red Tour", description: "Goreme Open Air Museum, Avanos, Fairy Chimneys", duration: "8 Hours", tag_text: "Guided", group_size: "10-16 People", price: 39, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Explore the amazing rock formations and underground houses of Cappadocia on this tour. Also discover rock-cut dwellings and churches. Take in northern Cappadocia's best attractions. Experience the highlights of Cappadocia in a single day.</p>
<p>Early in the morning, we will pick you up from your hotel in Cappadocia.</p>
<ul>
  <li>Marvel at fairy chimney formations in the Devrent and Pasabag valleys</li>
  <li>Get a breakfast with hot coffee and tea before the flight</li>
  <li>See the rock-cut churches at the Göreme Open-Air Museum</li>
  <li>Enjoy an authentic Turkish lunch at a traditional restaurant</li>
  <li>See how carpets are wovening the carpet factory.</li>
  <li>Uchisar Castle and Pigeon Valley, two of the best spots for photoshoot in the world.</li>
</ul>
<p>In the end of the tour, we will drop off you to your hotel.</p>
</div>")
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

tour_3 = Tour.create(title: "Cappadocia Green Tour", description: "Cavusin Village, Ortahisar Castle, Kaymakli Underground City, Pigeon Valley", duration: "8 Hours", tag_text: "Guided", group_size: "10-16 People", price: 45, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Enjoy the Kaymakli Underground City which is one of the UNESCO sites of Cappadocia. This tour is full of nature, history and beyond your expectation. Trek in the Ihlara Valley and more.</p>
<p>Early in the morning, we will pick you up from your hotel in Cappadocia.</p>
<ul>
  <li>Pottery Workshop</li>
  <li>Discover the highlights of this UNESCO World Heritage Site.</li>
  <li>Enjoy an authentic Turkish lunch at a traditional restaurant.</li>
  <li>Visit typical Anatolian villages and their rock-cut churches.</li>
  <li>Enjoy a trekking in the Ihlara Valley.</li>
</ul>
<p>In the end of the tour, we will drop off you to your hotel.</p>
</div>")

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

tour_4 = Tour.create(title: "Daily Private Cappadocia Tour", description: "Goreme Open Air Museum, Pasabagi, Kaymakli Underground City", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 145, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Enjoy the trekking on Ihlara Valley which is the biggest canyon of Turkey. Visit Sarihan Caravansarai the 13th century residence for the merchants and their camels. Take a break for photoshooting on Nar Lake. Witness some of the natural wonders it is famous for.</p>
<p>Early in the morning, we will pick you up from your hotel in Cappadocia.</p>
<ul>
  <li>Get lunch in a famous local restaurant</li>
  <li>See the breathtaking Sarihan Caravansarai.</li>
  <li>Witness the stunning Ihlara Valley.</li>
  <li>Taste a beauty of Nar Lake</li>
</ul>
<p>In the end of the tour, we will drop off you to your hotel.</p>
</div>")
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

tour_5 = Tour.create(title: "Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 319, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>All Domestic Flight Tickets</li>
  <li><i class=\"fas fa-check mr-2\"></i>Airport Transportations</li>
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Even though your vacation in Turkey is a short, you can experience the Magical Cappadocia on this one day journey from Istanbul by plane. You will see the magical region on a trip including stunning views, extraordinary nature, and the unique landscapes.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and drive to Istanbul Airport. Flight to Cappadocia. Our expert guide will meet with you at Cappadocia Airport upon landing. Then tour will start.</p>
<ul>
  <li>Admire the magical fairy chimneys</li>
  <li>Marvel at the pottery of Avanos</li>
  <li>Discover the rock-cut churches of the Goreme Open Air Museum</li>
  <li>Explore the beautiful valleys of Cappadocia</li>
</ul>
<p>In the end of tour, driver drop you off to Cappadocia Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
</div>")
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

tour_6 = Tour.create(title: "Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Kaymakli Underground City, Hot Air Balloon", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 699, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>All Domestic Flight Tickets</li>
  <li><i class=\"fas fa-check mr-2\"></i>Airport Transportations</li>
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Fly from Istanbul to Cappadocia and visit all the dream region has to offer in just two days, featuring unique fairy chimneys, fascinating underground cities, exceptional castles and magical valleys.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and drive to Istanbul Airport. Flight to Cappadocia. Our expert guide will meet with you at Cappadocia Airport upon landing. Then tour will start.</p>
<ul>
  <li>See all the sights of Cappadocia</li>
  <li>Visit a UNESCO World Heritage Site</li>
  <li>Explore an Ancient Underground City</li>
  <li>Marvel at fairy chimney formations</li>
  <li>See how carpets are wovening the carpet factory</li>
  <li>Accommodate in one of the unique cave hotel.</li>
  <li>Marvel at breathtaking panoramic views of Cappadocia on Spectacular Hot Air Ballon Flight (Optional)</li>
</ul>
<p>In the end of tour, driver drop you off to Cappadocia Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
</div>")
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

tour_7 = Tour.create(title: "2 Days Cappadocia Tour from Istanbul", description: "Goreme Open Air Museum, Fairy Chimneys, Ortahisar Castle, Pigeon Valley, Kaymakli Underground City, Hot Air Balloon", duration: "2 Days", tag_text: "Guided", group_size: "Private", price: 699, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>All Domestic Flight Tickets</li>
  <li><i class=\"fas fa-check mr-2\"></i>Airport Transportations</li>
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Accommodations (B&B)</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Fly from Istanbul to Cappadocia and visit all the dream region has to offer in just two days, featuring unique fairy chimneys, fascinating underground cities, exceptional castles and magical valleys.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and drive to Istanbul Airport. Flight to Cappadocia. Our expert guide will meet with you at Cappadocia Airport upon landing. Then tour will start.</p>
<ul>
  <li>See all the sights of Cappadocia</li>
  <li>Visit a UNESCO World Heritage Site</li>
  <li>Explore an Ancient Underground City</li>
  <li>Marvel at fairy chimney formations</li>
  <li>See how carpets are wovening the carpet factory</li>
  <li>Accommodate in one of the unique cave hotel.</li>
  <li>Marvel at breathtaking panoramic views of Cappadocia on Spectacular Hot Air Ballon Flight (Optional)</li>
</ul>
<p>In the end of tour, driver drop you off to Cappadocia Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
</div>")
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

tour_8 = Tour.create(title: "Cappadocia Turkish Night", description: " Belly Dancer, Turkish Night", duration: "4 Hours", tag_text: "Inc Dinner", group_size: "Big Group", price: 45, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>Dinner & Drinks</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
</ul>
</div>", schedule: "<div>
<p>Savor a fascinating Turkish Night Show on Cappadocia. Unlimited soft drinks and alcoholic beverages are served with snacks, then enjoy the lamb dinner. Watch a traditional folk dance performances with your meal.</p>
<p>We will pick you up from your hotel in the afternoon then drive to Restaurant where is Turkish Night.</p>
<ul>
  <li>Experience culture and tradition at a Turkish Night Show</li>
  <li>Enjoy unlimited soft and alcoholic beverages and snacks followed by dinner</li>
  <li>See whirling dervishes, belly dancers, and traditional folk dancers</li>
</ul>
<p>In the end of show, we will drop you off to your hotel.</p>
</div>")
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

tour_9 = Tour.create(title: "Istanbul Classic Old City Tour", description: "Hippodrome, Haghia Sophia, Blue Mosque, Topkapi Palace", duration: "Full Day", tag_text: "Skip the line", group_size: "10-16 People", price: 69, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Topkapi Palace Harem Entrance Fee</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Discover the historical sites of Sultanahmet “Istanbul Old City” area. Visit Hagia Sophia which is one of the 7 Wonders of the Medieval World, Topkapi Palace which is the residence of Ottoman sultans, the spectacular Blue Mosque, and more with an expert guide on this tour.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and tour will begin.</p>
<ul>
  <li>Amaze on the Hagia Sophia</li>
  <li>Admire to the splendid Blue Mosque</li>
  <li>Visit to the Hippodrome and follow in the footsteps of chariot races</li>
  <li>Stroll through the Grand Bazaar</li>
  <li>Marvel at the art architecture of Topkapi Palace</li>
</ul>
<p>In the end of tour, we will drop off you to your hotel.</p>
</div>")
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

tour_10 = Tour.create(title: "Bosphorus Morning Tour", description: "Spicy Bazaar, Bosphorus, Ciragan Palace", duration: "Half Day", tag_text: "Guided", group_size: "Group", price: 37, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Travel with cruise along the river which separates Asia and Europe, passing various highlights along the way. Admire to the palaces, wooden villas, bridges and all of the unique maritime landscapes.</p>
<p>After breakfast, we will pick you up from your hotel and Bosphorus Cruise tour will start.</p>
<ul>
  <li>Admire sights like the Ciragan Palace, Spicy Bazaar and Rumeli Fortress</li>
  <li>Enjoy the highlights between Europe and Asia</li>
  <li>See historical sights and the Bosphorus Bridge</li>
  <li>Shootout amazing pictures through your journey</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")

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

tour_11 = Tour.create(title: "Bosphorus Afternoon Tour", description: "Dolmabahce Palace, Pierre Loti, Bosphorus", duration: "Half Day", tag_text: "Guided", group_size: "Group", price: 37, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Cruise along the waters of the Bosphorus on this guided boat tour which separates Asia and Europe passing the stunning highlights along the way.</p>
<p>Aftenoon, we will pick you up from your hotel and Bosphorus Cruise tour will start.</p>
<ul>
  <li>Admire sights like the Dolmabahce Palace, Beylerbeyi Palace, Golden Horn</li>
  <li>Enjoy the highlights between Europe and Asia</li>
  <li>See historical sights and the Bosphorus Bridge</li>
  <li>Shootout amazing pictures through your journey</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_12 = Tour.create(title: "Istanbul Dolmabahce Palace", description: "Dolmabahce Palace, Bezm-i Alem Valide Sultan", duration: "Half Day", tag_text: "Guided", group_size: "12-16 People", price: 39, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Stroll through the extravagant rooms and backyards of the Dolmabahçe Palace. Lead by an expert guide and in small groups, get the stories behind this  architectural splendids in the heart of Istanbul.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and tour will begin.</p>
<ul>
  <li>Marvel at the extravagant decor of Dolmabahce Palace</li>
  <li>Experience amazing views over the Bosphorus</li>
  <li>Visit the highest peak in Istanbul at Camlıca Hill</li>
  <li>Drive from Europe to Asia on the first bridge between Europe and Asia</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_13 = Tour.create(title: "Istanbul Two Continents", description: "Bosphorus, Spicy Bazaar, Beyler Beyi Palace, Camlica Hill", duration: "Full Day", tag_text: "Guided", group_size: "12-16 People", price: 39, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Explore both the European and Asian side of amazing Istanbul on this relaxing and remarkable tour. Experience Istanbul’s famous spicy bazaar and the Camlica Hill. Visit the late Ottoman Palace of Beylerbeyi.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and tour will begin.</p>
<ul>
  <li>Visit both the European and Asian sides of Istanbul</li>
  <li>Enjoy the spectacular panoramic views of the city and the Camlıca Hill</li>
  <li>Marvel at the stunning Beylerbeyi Palace</li>
  <li>Discover the fascinating Spicy Bazaar</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_14 = Tour.create(title: "Istanbul Princes' Island", description: "Buyukada, Princess Island", duration: "Full Day", tag_text: "Guided", group_size: "Group", price: 49, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Travel by cruise from Istanbul to Buyukada and discover the biggest of the Princes islands. Visit Buyukada to see popular summer houses with beaches and pinewood scenery. Explore Ottoman-era mansions, enjoy a lunch at a seafood restaurant and eventually take some time at your leisure to explore the island.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and tour will begin.</p>
<ul>
  <li>Spend time at your leisure on the largest of the Princes islands</li>
  <li>Marvel at the island’s Ottoman-era mansions</li>
  <li>Enjoy lunch at a seafood restaurant</li>
  <li>Explore the main square of Buyukada and Marvel at the Victorian buildings</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_15 = Tour.create(title: "Istanbul Jewish Heritage Tour", description: "Neve Shalom, Ahrida, Ashkenaz Synagogues", duration: "Full Day", tag_text: "Skip the line", group_size: "Small Group", price: 249, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Discover the streets of Galata on this tour of Istanbul Jewish Quarter and get about the Jewish community. Visit the Jewish Museum, Ashkenazi Synagogue, Neve Shalom, Ahrida Synagogue and more.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and tour will begin.</p>
<ul>
  <li>Admire to old photographs and documents that chronicle Jewish life in Istanbul at the Jewish Museum</li>
  <li>Get about the Jewish financier Abraham Camondo</li>
  <li>Stroll the colorful streets of Galata</li>
  <li>Visit the Jewish Synagogues</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")

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

tour_18 = Tour.create(title: "Ephesus Classic Full Day", description: "Ephesus Ancient City, The House of Virgin Mary, Temple of Artemis, Isabey Mosque", duration: "8 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 39, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Visit the most well-known sights of Ephesus in guided tour by a van. Explore the Greco-Roman times of Ephesus, visit the temple of artemis which is the one of the old seven wonders of the world and see the house where Virgin Mary spent the last days of her life.</p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
  <li>Take a trip outside of Ephesus to the House of the Virgin Mary</li>
  <li>Visit the Isa Bey Mosque which is remaining from Anatolian Beyliks</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")

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

tour_19 = Tour.create(title: "Ephesus Half Day", description: "Ephesus Ancient City, Temple of Artemis", duration: "4 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 30, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Explore the man-made UNESCO sights of Aegean on this customized half-day Ephesus tour with an unforgettable experience. </p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_20 = Tour.create(title: "Highlights of Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Ephesus Museum, Seven Sleepers", duration: "Full Day", tag_text: "Skip the line", group_size: "Private", price: 169, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Guided through the wealthy history of this region, guests have a chance to visit the Ancient City of Ephesus, Archaeological Museum of Ephesus, Temple of Artemis, House of the Mother Mary and Seven Sleepers Cave. Taste a traditional local lunch. An afternoon of legendary sightseeing in a bible sense.</p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
  <li>Take a trip outside of Ephesus to the House of the Virgin Mary</li>
  <li>Enjoy the all artifacts in the Ephesus Archaeological Museum</li>
  <li>Discover the impressive Seven Sleepers Cave.</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_21 = Tour.create(title: "Diamond of Ephesus", description: " Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Ephesus Museum, Temple of Artemis", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 189, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Discover the ancient city of Ephesus with this tour and see monuments to the Greek, Roman and Byzantine civilizations.Also you have chance to visit the Temple of Artemis, the House of Virgin Mary, Sirince Village and more. Taste turkish cuisine on traditional restaurant.</p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
  <li>Take a trip outside of Ephesus to the House of the Virgin Mary</li>
  <li>Enjoy the all artifacts in the Ephesus Archaeological Museum</li>
  <li>Explore the beauty of Sirince Turkish-Orthodox village.</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")
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

tour_22 = Tour.create(title: "Biblical Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Terraced Houses, St. John Basilica", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 199, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Inhabit history of Ancient city of Ephesus and get knowledge about Christianity in antiquity on this tour.</p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
  <li>Take a trip outside of Ephesus to the House of the Virgin Mary</li>
  <li>Visit the Basilica of St. John and see his burial place</li>
  <li>Visit the well-preserved terraced houses to taste how elite people lived that time.</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")

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

tour_23 = Tour.create(title: "Ephesus & Sirince Village Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Temple of Artemis", duration: "Full Day", tag_text: "Unique", group_size: "Private", price: 179, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>You will discover the Ancient ruins of Ephesus City and visit the the little Turkish-Orthodox village of Sirince.</p>
<p>Early in the morning we will pick you up from your hotel on Kusadasi or Selcuk and drive to Ephesus.</p>
<ul>
  <li>Visit the well-preserved Ancient City of Ephesus</li>
  <li>Admire the stunning Temple Of Artemis</li>
  <li>Take a trip outside of Ephesus to the House of the Virgin Mary</li>
  <li>Visit the Isa Bey Mosque which is remaining from Anatolian Beyliks</li>
  <li>Discover the extraordinary of Sirince Turkish-Orthodox village.</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel.</p>
</div>")

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

tour_25 = Tour.create(title: "Ephesus Tour from Istanbul", description: "Ephesus Ancient City, Temple of Artemis, The House of Virgin Mary", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 299, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
  <li><i class=\"fas fa-check mr-2\"></i>Istanbul – Izmir – Istanbul Domestic Flight Ticket</li>
  <li><i class=\"fas fa-check mr-2\"></i>Airport Transportation</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Discover three of Turkey’s most important historical sites on day journey from Istanbul. Explore the ancient city of the man-made UNESCO World Heritage Ephesus, the Temple of Artemis, and the House of the Virgin Mary.</p>
<p>Early in the morning, we will pick you up from your hotel in Istanbul and drive to Istanbul Airport. Flight to Izmir. Our expert guide will meet with you at Izmir Airport upon landing. Then tour will start.</p>
<ul>
  <li>Explore the ruins of Ephesus with an expert guide</li>
  <li>Discover the Temple of Artemis, one of the Seven Wonders of the Ancient World</li>
  <li>Admire to the House of the Virgin Mary where she spent her last days</li>
</ul>
<p>In the end of tour, driver drop you off to Izmir Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
</div>")
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

tour_26 = Tour.create(title: "Pamukkale Tour from Kusadasi", description: "Visits Pamukkale, Hierapolis, and inc Hot Air Balloon", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 199, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Explore the petrified waterfalls of Pamukkale from Kusadasi and visit the exceptional spring water from known as “Cotton Castle” in English. Take a curative plunge in the mineral waters.</p>
<p>Early in the morning, we will pick you up from your hotel in Kusadasi. Arriving to Pamukkale after 3 hours drive. Let’s begin to adore Pamukkale.</p>
<ul>
  <li>Discover the petrified waterfalls of Pamukkale</li>
  <li>Explore the ruins of Hierapolis Ancient City</li>
  <li>Taste a Turkish cuisine buffet lunch on restaurant</li>
  <li>Take a plunge in the curative hot spring water</li>
  <li>Admire the sarcophagi of Hierapolis</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel in Kusadasi.</p>
</div>")
file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_5.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_3.jpg'))

tour_26.photos.attach(io: file_1, filename: 'private_5.jpg', content_type: 'image/jpg')
tour_26.photos.attach(io: file_2, filename: 'private_1.jpg', content_type: 'image/jpg')
tour_26.photos.attach(io: file_3, filename: 'private_2.jpg', content_type: 'image/jpg')
tour_26.photos.attach(io: file_4, filename: 'private_4.jpg', content_type: 'image/jpg')
tour_26.photos.attach(io: file_5, filename: 'private_3.jpg', content_type: 'image/jpg')
tour_26.tag_list = "Pamukkale"
tour_26.save

tour_27 = Tour.create(title: "Pamukkale & Aphrodisias Tour From Kusadasi", description: "Visits Pamukkale, Hierapolis, and Aphrodisias", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 169, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>You will be amazed with the superiority of marble sculpting when you visit the museum of it. City of Aphrodisias is highly refined and chic. It will be an excellent tour to enjoy the art, history and nature.</p>
<p>Early in the morning, we will pick you up from your hotel in Kusadasi. Arriving to Aphrodisias after 90 minutes drive. Let’s begin to adore Aphrodisias. Then admire to beauty of Pamukkale.</p>
<ul>
  <li>Amazed with the perfection of marble on Aphrodisias City</li>
  <li>Explore Ancient City of Hierapolis</li>
  <li>Discover Pamukkale which is known as the white paradise of Turkey.</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel in Kusadasi.</p>
</div>")
file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_2.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_5.jpg'))

tour_27.photos.attach(io: file_1, filename: 'afro_2.jpg', content_type: 'image/jpg')
tour_27.photos.attach(io: file_2, filename: 'afro_1.jpg', content_type: 'image/jpg')
tour_27.photos.attach(io: file_3, filename: 'afro_3.jpg', content_type: 'image/jpg')
tour_27.photos.attach(io: file_4, filename: 'afro_4.jpg', content_type: 'image/jpg')
tour_27.photos.attach(io: file_5, filename: 'afro_5.jpg', content_type: 'image/jpg')
tour_27.tag_list = "Pamukkale"
tour_27.save

tour_28 = Tour.create(title: "Pamukkale & Laodicea Tour From Kusadasi", description: "Visits Pamukkale, Hierapolis, and Laodicea", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 149, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Visit three of Turkey’s most massive historical and natural sites on day journey to Pamukkale, Hierapolis and Laodicea. Soak in the soothing white thermal pools of the Pamukkale. Visit the largest graveyard in antiquity and ramble through an ancient Greek city home to well-preserved churches.</p>
<p>Early in the morning, we will pick you up from your hotel in Kusadasi and tour will begin.</p>
<ul>
  <li>A full-day trip to Laodicea, Hierapolis and Pamukkale</li>
  <li>Taste a turkish cuisine on local restaurant</li>
  <li>Visit three breathtaking attractions in a one day of sightseeing.</li>
  <li>Get in-depth background on the early days of Greek and Roman rule in the region</li>
</ul>
<p>In the end of tour, we will drop you off to your hotel in Kusadasi.</p>
</div>")

file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_5.jpg'))

tour_28.photos.attach(io: file_1, filename: 'lao_1.jpg', content_type: 'image/jpg')
tour_28.photos.attach(io: file_2, filename: 'lao_2.jpg', content_type: 'image/jpg')
tour_28.photos.attach(io: file_3, filename: 'lao_3.jpg', content_type: 'image/jpg')
tour_28.photos.attach(io: file_4, filename: 'lao_4.jpg', content_type: 'image/jpg')
tour_28.photos.attach(io: file_5, filename: 'lao_5.jpg', content_type: 'image/jpg')
tour_28.tag_list = "Pamukkale"
tour_28.save

tour_29 = Tour.create(title: "Pamukkale Tour From Istanbul", description: "Visits Pamukkale,and Hierapolis", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 249)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_2.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_5.jpg'))

tour_29.photos.attach(io: file_1, filename: 'from_ist_4.jpg', content_type: 'image/jpg')
tour_29.photos.attach(io: file_2, filename: 'from_ist_1.jpg', content_type: 'image/jpg')
tour_29.photos.attach(io: file_3, filename: 'from_ist_2.jpg', content_type: 'image/jpg')
tour_29.photos.attach(io: file_4, filename: 'from_ist_3.jpg', content_type: 'image/jpg')
tour_29.photos.attach(io: file_5, filename: 'from_ist_5.jpg', content_type: 'image/jpg')
tour_29.tag_list = "Pamukkale"
tour_29.save

tour_30 = Tour.create(title: "Mount Nemrut & Gobeklitepe", description: "Visits Gobeklitepe, Edessa, Nemrut", duration: "2 Days", tag_text: "Guided", group_size: "Private", price: 399)
file_1 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_3.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_5.jpg'))

tour_30.photos.attach(io: file_1, filename: 'nemrut_3.jpg', content_type: 'image/jpg')
tour_30.photos.attach(io: file_2, filename: 'nemrut_2.jpg', content_type: 'image/jpg')
tour_30.photos.attach(io: file_3, filename: 'nemrut_1.jpg', content_type: 'image/jpg')
tour_30.photos.attach(io: file_4, filename: 'nemrut_4.jpg', content_type: 'image/jpg')
tour_30.photos.attach(io: file_5, filename: 'nemrut_5.jpg', content_type: 'image/jpg')
tour_30.tag_list = "Nemrut"
tour_30.save

tour_31 = Tour.create(title: "Gobeklitepe from Istanbul", description: "Visits Edessa, Gobeklitepe, Archeologic Museum", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 349, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Journey back in time to 12,000 BCE on this tour to Gobeklitepe from Istanbul. This tour splendid for history-buffs who want to dip deeper within the ancient history. Assure that your archaeological adventure is comfortable and without stress. Guide also takes you to Sanliurfa Archeological Museum, Pools of Abraham, and local market.</p>
<p>We will pick you up from your hotel in Istanbul and drive to Istanbul Airport. You will board an early morning flight from Istanbul to Sanliurfa where the tour starts. Guide will meet with you at Sanliurfa Airport upon landing. Then tour will start.</p>
<ul>
  <li>Admire to Gobeklitepe where the history start</li>
  <li>Visit an archaeological site that most tourists miss</li>
</ul>
<p>In the end of tour, driver drop you off to Sanliurfa Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
</div>")

file_1 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_2.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_1.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_5.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_4.jpg'))

tour_31.photos.attach(io: file_1, filename: 'gobek_2.jpg', content_type: 'image/jpg')
tour_31.photos.attach(io: file_2, filename: 'gobek_1.jpg', content_type: 'image/jpg')
tour_31.photos.attach(io: file_3, filename: 'gobek_5.jpg', content_type: 'image/jpg')
tour_31.photos.attach(io: file_4, filename: 'gobek_3.jpg', content_type: 'image/jpg')
tour_31.photos.attach(io: file_5, filename: 'gobek_4.jpg', content_type: 'image/jpg')
tour_31.tag_list = "Gobeklitepe"
tour_31.save

tour_32 = Tour.create(title: "Troy Tour from Istanbul", description: "Visits Troy Ancient City, Trojan Horse", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 99, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Discover the legendary Ancient city of Troy on a day trip from Istanbul. Get about Trojan mythology and marvel at the ruins of the UNESCO World Heritage site including the replica of the Trojan Horse, as you walk in the footsteps of Achilles, Hector, Helen, and Paris.</p>
<p>Start the tour with the pick you up from your hotel in Istanbul, then you will be meet our driver and guide before air-conditioned van.</p>
<ul>
  <li>Discover the ruins and temples of the legendary Ancient City of Troy</li>
  <li>Visit the replica of the Trojan Horse</li>
  <li>Get the legends of Paris, Achilles and Helen of Troy</li>
  <li>Enjoy a tasty lunch on restaurant</li>
  <li>Explore Homer's foundations for European literature</li>
</ul>
<p>In the end of tour, journey back to hotel in Istanbul.</p>
</div>")
file_1 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_1.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_3.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_4.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_5.jpg'))

tour_32.photos.attach(io: file_1, filename: 'gobek_1.jpg', content_type: 'image/jpg')
tour_32.photos.attach(io: file_2, filename: 'gobek_2.jpg', content_type: 'image/jpg')
tour_32.photos.attach(io: file_3, filename: 'gobek_3.jpg', content_type: 'image/jpg')
tour_32.photos.attach(io: file_4, filename: 'gobek_4.jpg', content_type: 'image/jpg')
tour_32.photos.attach(io: file_5, filename: 'gobek_5.jpg', content_type: 'image/jpg')
tour_32.tag_list = "Troy"
tour_32.save

tour_33 = Tour.create(title: "Gallipoli Tour", description: "Anzac Cove, Turkish Memorial, Australian Memorial", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 299, 
include: "<div>
<ul class=\"list-inline mr-5\">
  <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
  <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
  <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
  <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
  <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
</ul>
</div>", exclude: "<div>
<ul class=\"list-inline\">
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
  <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
</ul>
</div>", schedule: "<div>
<p>Back in time and visit the site of ANZAC landings on WWI on this tour of the Gallipoli Peninsula from Istanbul. Visit to the battlefields of the allied forces, and see the war memorials that memorialize the dead soldiers.</p>
<p>We will pick you up from your hotel in Istanbul and trip by air-conditioned minibus to the battlegrounds and war memorials of the ANZAC campaign of the Battle of Gallipoli during WWI.</p>
<ul>
  <li>Discover the war memorials and battlefields of the Gallipoli</li>
  <li>Get more about the ANZAC troops</li>
  <li>Stop for reflect at the Commonwealth cemeteries</li>
</ul>
<p>In the end of tour, journey back to hotel in Istanbul.</p>
</div>")
file_1 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_4.jpg'))
file_2 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_2.jpg'))
file_3 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_1.jpg'))
file_4 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_3.jpg'))
file_5 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_5.jpg'))

tour_33.photos.attach(io: file_1, filename: 'galli_4.jpg', content_type: 'image/jpg')
tour_33.photos.attach(io: file_2, filename: 'galli_2.jpg', content_type: 'image/jpg')
tour_33.photos.attach(io: file_3, filename: 'galli_1.jpg', content_type: 'image/jpg')
tour_33.photos.attach(io: file_4, filename: 'galli_3.jpg', content_type: 'image/jpg')
tour_33.photos.attach(io: file_5, filename: 'galli_5.jpg', content_type: 'image/jpg')
tour_33.tag_list = "Gallipoli"
tour_33.save

article_1 = Article.create(title: "Mesopotamia", author: "Lara Pak", author_img: "Middle East",
content: "<p>Mesopotamia which draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_1.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_1.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_1.save

article_2 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "Food",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_2.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_2.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_2.save

article_3 = Article.create(title: "Mesopotamia", author: "Serkan Demircan", author_img: "Fun",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_3.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_3.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_3.save

article_4 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "East",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_4.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_4.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_4.save

article_5 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "West",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_5.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_5.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_5.save

article_6 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "History",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_6.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_6.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_6.save

article_7 = Article.create(title: "Mesopotamia", author: "Lara Pak", author_img: "History",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_7.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_7.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_7.save

article_8 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "History",
content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

article_8.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
article_8.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
article_8.save

puts "database is clean"

puts "#{Tour.count} Tour created..."
puts "#{Article.count} Article created..."

puts "Finished mate..."
