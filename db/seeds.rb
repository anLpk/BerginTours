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
<p>Fly over the fairy chimneys and tuff valleys of Cappadocia on a hot air balloon flight and be amazed by fascinating views of this unique landscape. Enjoy the sun rise over the fairy chimneys and celebrate with a glass of champagne upon landing.</p>
<p>You will be picked up from your hotel two hours before sunrise and driven to the  pick up point. </p>
<ul>
  <li>Admire Cappadocia's magical fairy chimneys from above.</li>
  <li>Enjoy breakfast with coffee and tea before the flight.</li>
  <li>Marvel at the breath-taking panoramic views of Cappadocia</li>
  <li>Upon landing celebrate with a glass of champagne and receive a commemorative flight certificate </li>
</ul>
<p>After the flight you will be transferred back to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"></div>")

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
<p>Take in northern Cappadocia's best attractions and experience the highlights of Cappadocia in a single day. Explore the amazing rock formations and underground houses of Cappadocia and wander through the rock-cut dwellings and churches that make this region so unique.</p>
<p>You will be picked up from your hotel in Cappadocia in the early morning and the tour will commence.</p>
<ul>
  <li>Marvel at fairy chimney formations in the Devrent and Pasabag valleys.</li>
  <li>Discover the rock-cut churches at the Göreme Open-Air Museum.</li>
  <li>Enjoy an authentic Turkish lunch at a traditional restaurant.</li>
  <li>See how carpets are woven at a carpet factory.</li>
  <li>Visit Uchisar Castle and Pigeon Valley, two of the best locations for photo-shoots in the world.</li>
</ul>
<p>At the end of the tour you will be transferred back to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h5>Goreme</h5><p>The first human settlement in Goreme open-air museum dates 
back to the first and second century AD. Christian communities lived in caves to escape persecution until Christianity was declared 
the official religion of Rome. Once Rome became Christian these communities continued to live in caves, accepting of the difficulties 
of this environment, as it brought them closer to God. During a Cappadocia tour you will learn more about the beautiful region of 
Cappadocia as well as its cultural and historical significance.</p>
<h5>Avanos</h5><p>Avanos town located by the Red river (kizilirmak) dates back to Hittites period (2000 BC) and was ruled by many 
civilisations throughout history (Frigians, Persians, Assyrians, Cappadocian Kingdom etc.) The old town originally named Vanessa 
overlooks the longest river in Turkey and has a long and famous history of pottery production.  Using red clay from the river, the 
township has produced pottery in the region dating back to the Hittites period. Known as a family tradition, with the pottery painted 
in earthy hues and turquoise distinct to the region. Avanos may be visited on a private Cappadocia tour. </p></div>")

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
<p>This tour is perfect for those seeking to explore nature, history and all that Cappadocia has to offer. Tour the Kaymakli Underground City a UNESCO protected heritage site in Cappadocia, trek in the Ihlara Valley and more.</p>
<p>You will be picked up from your hotel in Cappadocia in the early morning and the tour will commence.</p>
<ul>
  <li>Discover the highlights of this UNESCO World Heritage Site</li>
  <li>Visit some typical Anatolian villages and explore their rock-cut churches</li>
  <li>Enjoy a trek in the Ihlara Valley</li>
  <li>Relax with an authentic Turkish lunch at a traditional restaurant</li>
  <li>Visit a Pottery Workshop</li>
</ul>
<p>An the end of the tour, you will be transferred back to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Kaymakli Underground City</h4><p>Kaymaklı city dates back to the Hittite and 
Phrygian period and is the widest and second largest underground city in Cappadocia. Originally carved during the 7th and 8th, 
over eight levels, with four currently open to visitors. It is a wonderful stop for any on a Cappadocia tour. Previously used by 
Christians to protect themselves from invaders coming to Central Anatolia and later by local farmers to store crops and animals. 
Today, the city is still used by locals to store wine and food.</p>
<h4>Cavusin Village</h4><p>Çavuşin is an old Greek village, included in Cappadocia Turkey Tours. The village, which was active until 1924, 
housed many Christian Orthodox families. In 1924 an obligatory population exchange between both countries led to ethnic Turks and Greeks 
returning to their ethnic homelands. Çavuşin has two churches, the upper church; the great basilica dedicated to St. John the Baptist 
(located on the cliff above the village) and the lower church, Çavuşin Church (Nicephorus Phocas), commemorating a visit from the famous 
Cappadocian emperor Nicephorus Phocas.</p></div>")

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
<p>Enjoy trekking in Ihlara Valley one of the largest canyons in Turkey. Visit Sarihan Caravansarai the 13th century residence of merchants and their camels. Take a break to enjoy the scenic Nar Lake perfect for photography enthusiasts and witness some of the natural wonders this region is famous for.</p>
<p>You will be picked up from your hotel in Cappadocia in the early morning and the tour will commence.</p>
<ul>
  <li>See the breath-taking Sarihan Caravansarai residence</li>
  <li>Witness the stunning Ihlara Valley</li>
  <li>Explore the beauty of Nar Lake</li>
  <li>Relax with lunch at a special local restaurant</li>
</ul>
<p>At the end of the tour you will be transferred back to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Goreme</h4><p>The first human settlement in Goreme open-air museum dates back 
to the first and second century AD. Christian communities lived in caves to escape persecution until Christianity was declared the 
official religion of Rome. Once Rome became Christian these communities continued to live in caves, accepting of the difficulties of 
this environment, as it brought them closer to God. During a Cappadocia tour you will learn more about the beautiful region of Cappadocia 
as well as its cultural and historical significance.</p>
<h4>Kaymakli Underground City</h4><p>Kaymaklı city dates back to the Hittite and Phrygian period and is the widest and second largest 
underground city in Cappadocia. Originally carved during the 7th and 8th, over eight levels, with four currently open to visitors. 
It is a wonderful stop for any on a Cappadocia tour. Previously used by Christians to protect themselves from invaders coming to Central 
Anatolia and later by local farmers to store crops and animals. Today, the city is still used by locals to store wine and food.</p></div>")

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
<p>Even on a short vacation in Turkey you can experience the magical Cappadocia on this one day tour from Istanbul by plane. You will experience majestic sites, unique landscapes and all the highlights this region has to offer. </p>
<p>You will be picked up from your hotel in Istanbul in the early morning and driven to Istanbul Airport. Flying direct to Cappadocia. Upon arrival at Cappadocia Airport you will be greeted by our expert guide and the tour will commence.</p>
<ul>
  <li>Admire the magical fairy chimneys</li>
  <li>Marvel at the pottery of Avanos</li>
  <li>Discover the rock-cut churches  at Göreme Open Air Museum</li>
  <li>Explore the beautiful valleys of Cappadocia</li>
</ul>
<p>At the end of the tour, your will be transported back to Cappadocia Airport to take a return flight to Istanbul. Upon landing you will be transferred back to your hotel. </p>
</div>", history: "<div class=\"accordion-text\"><h4>Goreme</h4><p>The first human settlement in Goreme open-air museum dates back 
to the first and second century AD. Christian communities lived in caves to escape persecution until Christianity was declared the 
official religion of Rome. Once Rome became Christian these communities continued to live in caves, accepting of the difficulties of 
this environment, as it brought them closer to God. During a Cappadocia tour you will learn more about the beautiful region of 
Cappadocia as well as its cultural and historical significance.</p>
<h4>Kaymakli Underground City</h4><p>Kaymaklı city dates back to the Hittite and Phrygian period and is the widest and second 
largest underground city in Cappadocia. Originally carved during the 7th and 8th, over eight levels, with four currently open to visitors. 
It is a wonderful stop for any on a Cappadocia tour. Previously used by Christians to protect themselves from invaders coming to Central 
Anatolia and later by local farmers to store crops and animals. Today, the city is still used by locals to store wine and food.</p></div>")

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
</div>", history: "<div class=\"accordion-text\"><h4>Goreme</h4><p>The first human settlement in Goreme open-air museum dates back to 
the first and second century AD. Christian communities lived in caves to escape persecution until Christianity was declared the official 
religion of Rome. Once Rome became Christian these communities continued to live in caves, accepting of the difficulties of this environment,
as it brought them closer to God. During a Cappadocia tour you will learn more about the beautiful region of Cappadocia as well as its 
cultural and historical significance.</p>
<h4>Kaymakli Underground City</h4><p>Kaymaklı city dates back to the Hittite and Phrygian period and is the widest and second largest 
underground city in Cappadocia. Originally carved during the 7th and 8th, over eight levels, with four currently open to visitors. 
It is a wonderful stop for any on a Cappadocia tour. Previously used by Christians to protect themselves from invaders coming to Central 
Anatolia and later by local farmers to store crops and animals. Today, the city is still used by locals to store wine and food.</p></div>")

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
<p>Fly from Istanbul to Cappadocia and visit all that this majestic region has to offer over two days. Explore the unique fairy chimneys, fascinating underground cities, exceptional castles and magical valleys that make this region so unique. </p>
<p>You will be picked up from your hotel in Istanbul in the early morning and driven to Istanbul Airport. Flying direct to Cappadocia. Upon arrival at Cappadocia Airport you will be greeted by our expert guide and the tour will commence.</p>
<ul>
  <li>Explore all the sights of Cappadocia</li>
  <li>Visit a UNESCO World Heritage Site</li>
  <li>Explore an Ancient Underground City</li>
  <li>Marvel at fairy chimney formations famous to the region</li>
  <li>See how carpets are woven at a carpet factory.</li>
  <li>Stay overnight and relax in one of Cappadocia’s unique cave hotels. </li>
  <li>Marvel at the breath-taking landscapes over Cappadocia on a spectacular Hot Air Balloon Flight (Optional)</li>
</ul>
<p>At the end of the tour, your will be transported back to Cappadocia Airport to take a return flight to Istanbul. Upon landing you will be transferred back to your hotel. </p>
</div>", history: "<div class=\"accordion-text\"><h4>Goreme</h4><p>The first human settlement in Goreme open-air museum dates back to 
the first and second century AD. Christian communities lived in caves to escape persecution until Christianity was declared the official 
religion of Rome. Once Rome became Christian these communities continued to live in caves, accepting of the difficulties of this environment, 
as it brought them closer to God. During a Cappadocia tour you will learn more about the beautiful region of Cappadocia as well as its 
cultural and historical significance.</p>
<h4>Kaymakli Underground City</h4><p>Kaymaklı city dates back to the Hittite and Phrygian period and is the widest and second largest 
underground city in Cappadocia. Originally carved during the 7th and 8th, over eight levels, with four currently open to visitors. 
It is a wonderful stop for any on a Cappadocia tour. Previously used by Christians to protect themselves from invaders coming to Central 
Anatolia and later by local farmers to store crops and animals. Today, the city is still used by locals to store wine and food.</p>
<h4>Ortahisar Town</h4><p>Ortahisar town is located between Urgup and Nevsehir. Located in the centre of the town is Ortahisar Castle, 
the second peak of Cappadocia. Views across the town feature impressive scenery with two valleys encircling the castle of Ortahisar. 
Pancarlik Church, (dating back to the 11th century AD) is a hidden gem in the town, and located inside Pancarlik Valley. 
The small monastery at the end of the valley hides beautifully painted intact frescoes, which can be visited during a private tour of 
Cappadocia.</p></div>")

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
<p>Delight yourself with a fascinating night of entertainment at a Turkish Night Show in Cappadocia. Including unlimited soft drink and alcoholic beverages with appetizers, followed by a delicious lamb dinner. While dining, enjoy traditional folk dance performances and experience first hand the beauty of Turkish culture and traditions. </p>
<p>In the afternoon you will be picked up from your hotel in Cappadocia and driven to the restaurant where Turkish Night will commence.</p>
<ul>
  <li>Experience culture and tradition at a Turkish Night Show</li>
  <li>See whirling dervishes, belly dancers, and traditional folk dancers</li>
  <li>Enjoy unlimited soft drinks, alcoholic beverages and snacks followed by dinner</li>
</ul>
<p>At the end of the evening you will be transported back to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"></div>")

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
<p>Discover the historical sites of Sultanahmet “Istanbul Old City” area. Visit Hagia Sophia, which is one of the ‘7 Wonders of the Medieval World’, Topkapi Palace the residence of Ottoman sultans for over 400 years, the spectacular Blue Mosque, and more with an expert guide on this tour.</p>
<p>You will be picked up from your hotel in Istanbul in the early morning and the tour will commence.</p>
<ul>
  <li>Be amazed by the beauty of Hagia Sophia</li>
  <li>Admire to the splendid Blue Mosque</li>
  <li>Visit to the Hippodrome and follow in the footsteps of chariot races and the entertainment hub of the city for many years.</li>
  <li>Stroll through the Grand Bazaar </li>
  <li>Marvel at the art and architecture of Topkapi Palace</li>
</ul>
<p>At the end of this tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Blue Mosque</h4><p>One of the most important aspects of any Istanbul City tour; 
is a visit to the Blue Mosque. The Blue Mosque built by Ahmed I between 1609-1616 is an Ottoman era mosque famously known as Blue 
Mosque due to the blue Iznik tiles, which decorate the interior walls of the mosque. The Blue Mosque is also unique as it is the only 
mosque in Istanbul with six minarets (towers) and is considered to be one of the last great mosques of the classical period. 
Mixing Byzantine elements with traditional Islamic architecture. Visitors are amazed by 21,000 Iznik tiles in the mosque, which feature 
imagery of cypress trees, flowers and fruits.</p>
<h4>Hagia Sophia</h4><p>In the year of 532 AD the construction of the biggest church in the world commenced. The architects of Hagia Sophia
came from the lands of Ionia; Antemius from Tralleis and Isidoros from the city of Miletus. The church, completed after five years of 
construction, opened on the 27th December 532 and was the largest Christian church of the Byzantine Empire (Eastern Roman Empire). 
The church was dedicated to the Holy Wisdom, the Logos, and the second person of the Trinity. After the Fall of Constantinople to the 
Ottoman Empire in 1453 it was converted to a mosque by Mehmed the Conqueror. Hagia Sophia remained a mosque until 1931 before re-opening 
years later as a museum to be preserved and shared as a historical meeting point for two religions. In 2020 Hagia Sophia once again 
was used as a mosque but remains open to the public as an important and protected site for all. This beautiful monument, and one of the 
city's most popular and inspiring attractions can be seen by booking a tour of Istanbul.</p>
<h4>Topkapi Palace</h4><p>As a part of a Guided Istanbul tour Topkapı Palace is one of the most important examples of Ottoman rule and 
influence during the Ottoman reign. Commissioned by Mehmed II after conquering Constantinople, the capital of the Byzantine Empire in 1453. 
Members of the Ottoman Court resided in Topkapi Palace from 1478 to 1856, which housed 30 sultans for over 400 years during the empire's 
600 year reign. Acting as the centre of power, this palace is a physical example of the changing architecture of the period and interests 
of each sultan, with visitors to Topkapi seeing first hand various additions to the palace as a result of each new Sultan adding their 
influences to the space. This includes architectural styles including: Islamic, Ottoman and European architecture and decor. 
The palace, the royal residence of the sultan and the centre of social issues and government is a complex structure featuring four main 
courtyards. Each courtyard symbolises the relationship between the administrative, residential and auxiliary and each courtyard was designed
to be more restricted than the previous; symbolising the importance of the inner sanctum. The palace housed over 1000-4000 people 
including 300 in the harem and is a pivotal stop on any Istanbul tour.</p></div>")

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
<p>Cruise along the Bosphorus on this guided boat tour, which separates Asia and Europe. By boat you can admire many of the stunning sites, which make Istanbul one of the most vibrant cities in the world. Admire the palaces, wooden villas, bridges and unique maritime landscapes.</p>
<p>You will be picked up from your hotel in Istanbul after breakfast and the Bosphorus Cruise tour will commence.</p>
<ul>
  <li>Admire sights like the Ciragan Palace, Spice Bazaar and Rumeli Fortress</li>
  <li>See first hand the unique location of Istanbul as the bridge between Europe and Asia</li>
  <li>See historical sights and the Bosphorus Bridge by boat</li>
  <li>Enjoy the beauty Istanbul from a different perspective and take unique pictures, which can only be captured, by boat.</li>
</ul>
<p>At the end of tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Ciragan Palace</h4><p>Built by Sultan Abdulaziz, Ciragan Palace was designed by 
Armenian palace architect Nigoğayos Balyan and constructed by his sons Sarkis and Hagop Balyan between 1863 and 1867. 
This palace is important as the last example of a tradition in which Ottoman sultans built their own palaces instead of living in those 
of their ancestors. The palace’s inner walls and roof were made of wood, while the outer walls of colourful marble. 
A beautiful marble bridge connects the palace to Yıldız Palace on the hill behind.The construction and the interior decoration of the palace continued until 1872. Sultan Abdulaziz did not live long in his palace as he was found dead on 30 May 1876, shortly after being dethroned. His successor, his nephew Sultan Murad V, moved into Çırağan Palace, but reigned for only 93 days. As he was deposed by his brother Abdul Hamid II but remained living in the palace under house arrest until his death on 29 August 1904.
</p>
<h4>Egyptian Bazaar (Spice Market)</h4><p>Egyptian Spice Bazaar is housed in a building that was built in 1660 and named after 
the goods traded from India and the far east, which arrived in Istanbul from Egypt during Ottoman times.
The Egyptian Spice Bazaar consists of a series of covered streets featuring one hundred shops and two restaurants along its gates. 
The “Spice market” was given its nickname as the majority of the shops sold herbs and spices.
</p></div>")

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
<p>Cruise along the Bosphorus on this guided boat tour, which separates Asia and Europe. By boat you can admire many of the stunning sites, which make Istanbul one of the most vibrant cities in the world.</p>
<p>You will be picked up from your hotel in Istanbul in the afternoon and the Bosphorus Cruise tour will commence.</p>
<ul>
  <li>Admire sights including Dolmabahce Palace, Beylerbeyi Palace, Golden Horn</li>
  <li>See first hand the unique location of Istanbul as the bridge between Europe and Asia</li>
  <li>View historical sights and the Bosphorus Bridge by boat</li>
  <li>Enjoy the beauty of Istanbul from a different perspective and take unique pictures, which can only be captured, by boat.</li>
</ul>
<p>At the end of tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Dolmabahce Palace</h4><p>Dolmabahce Palace commissioned by Sultan Abdülmecid 
I was constructed between 1842-56 and is the largest palace in Turkey. After Topkapi Palace, It housed Sultans for the remainder of the 
Ottoman Empire's rule. Which was built to compete with the grandest palaces of Europe. Located in Besiktas, Dolmabahce palace was originally
a bay where the Ottoman sea captain pashas (admirals) anchored their ships. It was later converted to Has Bahce 
(a private garden of the Sultan) before later construction of the site into what is now known as Dolmabahce Palace. Dolmabahce Palace 
features architectural influences from the Baroque, Rocco and Neoclassical styles, which merge with traditional Ottoman architecture. 
Visitors will see the extensive use of gold and crystal, which has been used as decoration throughout the palace.</p></div>")

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
<p>Explore the extravagant rooms and grounds of the Dolmabahçe Palace. Led by an expert guide and in small groups. Learn about the stories behind this architectural masterpiece located in the heart of Istanbul.</p>
<p>You will be picked up from your hotel in Istanbul in the early morning and the tour will commence.</p>
<ul>
  <li>Marvel at the extravagant decor of Dolmabahce Palace</li>
  <li>Experience amazing views over the Bosphorus</li>
  <li>Visit the highest peak in Istanbul at Camlıca Hill</li>
  <li>Drive from Europe to Asia on the first bridge between Europe and Asia</li>
</ul>
<p>At the end of tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Dolmabahce Palace</h4><p>Dolmabahce Palace commissioned by Sultan Abdülmecid 
I was constructed between 1842-56 and is the largest palace in Turkey. After Topkapi Palace, It housed Sultans for the remainder of the 
Ottoman Empire's rule. Which was built to compete with the grandest palaces of Europe. Located in Besiktas, Dolmabahce palace was originally
a bay where the Ottoman sea captain pashas (admirals) anchored their ships. It was later converted to Has Bahce 
(a private garden of the Sultan) before later construction of the site into what is now known as Dolmabahce Palace. Dolmabahce Palace 
features architectural influences from the Baroque, Rocco and Neoclassical styles, which merge with traditional Ottoman architecture. 
Visitors will see the extensive use of gold and crystal, which has been used as decoration throughout the palace.</p></div>")

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
<p>Explore both the European and Asian sides of Istanbul on this relaxing and remarkable tour. Explore Istanbul’s famous Spice Bazaar and Camlica Hill, as well as the late Ottoman Palace of Beylerbeyi.</p>
<p>You will be picked up from your hotel in Istanbul in the early morning and the tour will commence.</p>
<ul>
  <li>Visit both the European and Asian sides of Istanbul</li>
  <li>Enjoy the spectacular panoramic views of the city at Çamlıca Hill</li>
  <li>Marvel at the stunning Beylerbeyi Palace</li>
  <li>Discover the fascinating Spice Bazaar</li>
</ul>
<p>At the end of tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Beylerbeyi Palace</h4><p>The Beylerbeyi Palace located close to the Bosphorus 
Bridge was commonly used as a summerhouse for the Sultans and a guesthouse for important visitors to the state. Hosting notable guests 
including Emperors and Kings. Described as a <strong>labor of love</strong>, in this case by the Ottoman Sultan for the Empress Eugenie, wife 
of Napoleon III of France. The Sultan, Abdülaziz, was the first to travel outside the empire, paying a state visit to France and 
England in the 1860s and is said to have become infatuated with the Empress. In 1861, anticipating the visit of the French royal couple, 
Abdülaziz ordered the construction of the marble palace. Construction continued until 1865, and, as planned, the Empress Eugenie, 
visited as the Sultan’s first guest. Tales of love between the two continue to this day.</p>
<h4>Camlica Hill</h4><p>Camlica Hill is the highest point in Istanbul at 288 metres above sea level and located on the Asian side of 
Istanbul. Featuring panoramic views over the Bosphorus and Marmara Sea. On a clear day, visitors can see the Princes Islands and the 
Uludag Mountains. Enjoyed particularly at sunset, when visitors experience one of the most unique city skylines in the world. There is a 
park, picnic area, some small trails, and cafes located at the summit, which are surrounded by pine trees and flowers.</p>
<h4>Egyptian Bazaar (Spice Market)</h4><p>Egyptian Spice Bazaar is housed in a building that was built in 1660 and named after the goods traded from 
India and the far east, which arrived in Istanbul from Egypt during Ottoman times.The Egyptian Spice Bazaar consists of a series of 
covered streets featuring one hundred shops and two restaurants along its gates. The “Spice market” was given its nickname as the majority 
of the shops sold herbs and spices.</p></div>")

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
<p>Travel by cruise from Istanbul to Buyukada and discover the largest of the Princes islands. In Buyukada visit popular summer houses, tour the beaches and pinewood filled landscape; once a popular destination for Ottoman princes and relax away from the hustle and bustle of the mainland. Explore Ottoman-era mansions, enjoy a leisurely lunch at a seafood restaurant and explore this tranquil island at your own pace.</p>
<p>You will be picked up from your hotel in Istanbul in the early morning and the tour will commence.</p>
<ul>
  <li>Spend a leisurely day exploring the largest of the Princes islands</li>
  <li>Marvel at the island’s Ottoman-era mansions</li>
  <li>Enjoy lunch at a seafood restaurant</li>
  <li>Tour the main square of Buyukada and enjoy the Victorian buildings </li>
</ul>
<p>At the end of tour, we will drop you off at your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Princes' Island</h4><p>The charming Princes’ Islands, near Istanbul, are a popular 
destination for tourists, especially photography enthusiasts, due to its picturesque landscape. Perfect for a day trip, visitors are drawn 
here to explore the past, swim in the sea and to bask in the tranquil landscape and calming atmosphere.
Located just 20 kilometres south east of Istanbul, Princes’ Islands were once the place of exile for unruly Byzantine princes. 
Now a day trip to Princes’ Islands is popular among both locals and tourists looking to escape the hustle and bustle of city life.</p></div>")

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
<p>Explore the streets of Galata on this tour of Istanbul’s Jewish Quarter and learn more about the thriving Jewish community of Istanbul. Visit the Jewish Museum, Ashkenazi Synagogue, Neve Shalom, Ahrida Synagogue and more.</p>
<p>You will be picked up from your hotel in Istanbul in the early morning and the tour will commence.</p>
<ul>
  <li>Admire old photographs and documents that chronicle Jewish life in Istanbul at the Jewish Museum</li>
  <li>Learn about Jewish financier Count Abraham Camondo and his role in  Ottoman history and the Jewish community</li>
  <li>Explore the colourful streets and sites of Galata</li>
  <li>Visit the Jewish Synagogues</li>
</ul>
<p>At the end of tour, we will drop you off to your hotel.</p>
</div>", history: "<div class=\"accordion-text\"><h4>Ahrida Synagogue</h4><p>Ahrida Synagogue, one of the oldest synagogues in Istanbul, 
located in Balat, which was a once thriving Jewish settlement that expanded in the 17th century. Named the Ahrida Synagogue after a town 
in Macedonia of which many of its congregation travelled from during Byzantine times. A key feature of Ahrida is its Bima (pulpit), 
which is in the shape of the prow of a ship and is said to symbolise Noah's Ark. The Ahrida was badly damaged by a fire in the late 
17th century and later rebuilt in the Baroque style of the Tulip Period.</p>
<h4>Ashkenaz Synagogue</h4><p>Founded by Jews of Austrian descent in 1900, this is the last remaining synagogue from a total of three 
built by Ashkenazim (the population of Ashkenazi Jews accounts for four per cent of the total Jewish population in Turkey).
Close to Galata Tower, the synagogue has an imposing facade, with three Oriental arches and octagonal rosette windows. 
The interior has marble floors, a dome decorated with the Stars of David, and an ark of dark wood, which is a blend of eastern European 
and Arabesque styles.
</p></div>")

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

# tour_16 = Tour.create(title: "City Break Tour", description: "Blue Mosque, Haghia Sophia, Topkapi Palace, Bosphorus", duration: "3 Days", tag_text: "Skip the line", group_size: "Small Group", price: 599)
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_3.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_1.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_5.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/break/break_2.jpg'))

# tour_16.photos.attach(io: file_1, filename: 'break_3.jpg', content_type: 'image/jpg')
# tour_16.photos.attach(io: file_2, filename: 'break_1.jpg', content_type: 'image/jpg')
# tour_16.photos.attach(io: file_3, filename: 'break_5.jpg', content_type: 'image/jpg')
# tour_16.photos.attach(io: file_4, filename: 'break_4.jpg', content_type: 'image/jpg')
# tour_16.photos.attach(io: file_5, filename: 'break_2.jpg', content_type: 'image/jpg')
# tour_16.tag_list = "Istanbul"
# tour_16.save

# tour_17 = Tour.create(title: "Private Classic Old City", description: "Hippodrome, Haghia Sophia, Blue Mosque, Topkapi Palace", duration: "Full Day", tag_text: "Skip the line", group_size: "Private", price: 199)
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_3.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_5.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_2.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Istanbul/clas/classic_1.jpg'))

# tour_17.photos.attach(io: file_1, filename: 'classic_3.jpg', content_type: 'image/jpg')
# tour_17.photos.attach(io: file_2, filename: 'classic_5.jpg', content_type: 'image/jpg')
# tour_17.photos.attach(io: file_3, filename: 'classic_2.jpg', content_type: 'image/jpg')
# tour_17.photos.attach(io: file_4, filename: 'classic_4.jpg', content_type: 'image/jpg')
# tour_17.photos.attach(io: file_5, filename: 'classic_1.jpg', content_type: 'image/jpg')
# tour_17.tag_list = "Istanbul"
# tour_17.save

# tour_18 = Tour.create(title: "Ephesus Classic Full Day", description: "Ephesus Ancient City, The House of Virgin Mary, Temple of Artemis, Isabey Mosque", duration: "8 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 39, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Visit the most well-known sights of Ephesus in this guided tour by van. Explore the Greco-Roman times of Ephesus, visit the Temple of Artemis one of the ‘old seven wonders of the world’ and see the House of Virgin Mary where Mary spent her final days.</p>
# <p>You will be picked up from your hotel in the early morning and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the stunning Temple Of Artemis</li>
#   <li>Take a trip outside of Ephesus up into the hills above and visit the House of the Virgin Mary, to see her final resting place</li>
#   <li>Visit the Isa Bey Mosque, important as one of the only remaining examples of architectural art from the Anatolian Beyliks</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")

# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_1.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_6.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/classic/EphesusFullDay_7.jpg'))

# tour_18.photos.attach(io: file_1, filename: 'EphesusFullDay_1.jpg', content_type: 'image/jpg')
# tour_18.photos.attach(io: file_2, filename: 'EphesusFullDay_2.jpg', content_type: 'image/jpg')
# tour_18.photos.attach(io: file_3, filename: 'EphesusFullDay_3.jpg', content_type: 'image/jpg')
# tour_18.photos.attach(io: file_4, filename: 'EphesusFullDay_6.jpg', content_type: 'image/jpg')
# tour_18.photos.attach(io: file_5, filename: 'EphesusFullDay_7.jpg', content_type: 'image/jpg')
# tour_18.tag_list = "Ephesus"
# tour_18.save

# tour_19 = Tour.create(title: "Ephesus Half Day", description: "Ephesus Ancient City, Temple of Artemis", duration: "4 hours", tag_text: "Skip the line", group_size: "8-12 People", price: 30, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Explore the man-made UNESCO sights of the Aegean on this customized half-day Ephesus tour, which will be an unforgettable experience. </p>
# <p>You will be picked up from your hotel in the early morning and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the fascinating Temple Of Artemis</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_4.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_1.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_3.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/half/EphesusHalfDay_5.jpg'))

# tour_19.photos.attach(io: file_1, filename: 'EphesusHalfDay_1.jpg', content_type: 'image/jpg')
# tour_19.photos.attach(io: file_2, filename: 'EphesusHalfDay_2.jpg', content_type: 'image/jpg')
# tour_19.photos.attach(io: file_3, filename: 'EphesusHalfDay_3.jpg', content_type: 'image/jpg')
# tour_19.photos.attach(io: file_4, filename: 'EphesusHalfDay_6.jpg', content_type: 'image/jpg')
# tour_19.photos.attach(io: file_5, filename: 'EphesusHalfDay_7.jpg', content_type: 'image/jpg')
# tour_19.tag_list = "Ephesus"
# tour_19.save

# tour_20 = Tour.create(title: "Highlights of Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Ephesus Museum, Seven Sleepers", duration: "Full Day", tag_text: "Skip the line", group_size: "Private", price: 169, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Be guided through the wealth of history in this region, guests have a chance to visit the Ancient City of Ephesus, Archaeological Museum of Ephesus, Temple of Artemis, House of the Mother Mary and Seven Sleepers Cave. Taste a traditional local lunch. An afternoon of legendary sightseeing of biblical proportion.</p>
# <p>You will be picked up from your hotel in Kusadasi or Selcuk in the early morning  and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the remarkable Temple Of Artemis</li>
#   <li>Take a trip outside of Ephesus up into the hills above and visit the House of the Virgin Mary, to see her final resting place</li>
#   <li>Be mesmerised by all the artefacts in the Ephesus Archaeological Museum and learn more about what made Ephesus the thriving metropolis it once was.</li>
#   <li>Discover the impressive Seven Sleepers Cave.</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_1.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_3.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_4.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_5.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/highlights/highlights_2.jpg'))

# tour_20.photos.attach(io: file_1, filename: 'highlights_1.jpg', content_type: 'image/jpg')
# tour_20.photos.attach(io: file_2, filename: 'highlights_3.jpg', content_type: 'image/jpg')
# tour_20.photos.attach(io: file_3, filename: 'highlights_4.jpg', content_type: 'image/jpg')
# tour_20.photos.attach(io: file_4, filename: 'highlights_5.jpg', content_type: 'image/jpg')
# tour_20.photos.attach(io: file_5, filename: 'highlights_2.jpg', content_type: 'image/jpg')
# tour_20.tag_list = "Ephesus"
# tour_20.save

# tour_21 = Tour.create(title: "Diamond of Ephesus", description: " Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Ephesus Museum, Temple of Artemis", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 189, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Discover the ancient city of Ephesus with this tour and see monuments from Greek, Roman and Byzantine civilizations. Visit the Temple of Artemis, the House of Virgin Mary, Şirince Village and more. Enjoy the flavours of Turkish cuisine at a traditional Turkish restaurant.</p>
# <p>You will be picked up from your hotel in Kusadasi or Selcuk in the early morning and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the remarkable Temple Of Artemis</li>
#   <li>Take a trip outside of Ephesus up into the hills above and visit the House of the Virgin Mary, to see her final resting place</li>
#   <li>Be mesmerised by all the artefacts in the Ephesus Archaeological Museum and learn more about what made Ephesus the thriving metropolis it once was.</li>
#   <li>Be immersed in the charm and ambience of Sirince a Turkish-Orthodox village.</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_1.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_5.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_2.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/diamond/diamond_4.jpg'))

# tour_21.photos.attach(io: file_1, filename: 'diamond_1.jpg', content_type: 'image/jpg')
# tour_21.photos.attach(io: file_2, filename: 'diamond_5.jpg', content_type: 'image/jpg')
# tour_21.photos.attach(io: file_3, filename: 'diamond_3.jpg', content_type: 'image/jpg')
# tour_21.photos.attach(io: file_4, filename: 'diamond_2.jpg', content_type: 'image/jpg')
# tour_21.photos.attach(io: file_5, filename: 'diamond_4.jpg', content_type: 'image/jpg')
# tour_21.tag_list = "Ephesus"
# tour_21.save

# tour_22 = Tour.create(title: "Biblical Ephesus Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Terraced Houses, St. John Basilica", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 199, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>On this tour of the ancient city of Ephesus visit sites of biblical importance and gain greater insights into Christianity in antiquity on this tour.</p>
# <p>You will be picked up from your hotel in Kusadasi or Selcuk in the early morning  and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the remarkable Temple Of Artemis</li>
#   <li>Take a trip outside of Ephesus up into the hills above and visit the House of the Virgin Mary, to see her final resting place</li>
#   <li>Visit the Basilica of St. John and see his burial place</li>
#   <li>Visit the well-preserved terraced houses to see how the elite lived in those times</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")

# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_5.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_4.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_2.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/biblical/biblical_1.jpg'))

# tour_22.photos.attach(io: file_1, filename: 'biblical_5.jpg', content_type: 'image/jpg')
# tour_22.photos.attach(io: file_2, filename: 'biblical_4.jpg', content_type: 'image/jpg')
# tour_22.photos.attach(io: file_3, filename: 'biblical_3.jpg', content_type: 'image/jpg')
# tour_22.photos.attach(io: file_4, filename: 'biblical_2.jpg', content_type: 'image/jpg')
# tour_22.photos.attach(io: file_5, filename: 'biblical_1.jpg', content_type: 'image/jpg')
# tour_22.tag_list = "Ephesus"
# tour_22.save

# tour_23 = Tour.create(title: "Ephesus & Sirince Village Tour", description: "Ephesus Ancient City, The House of Virgin Mary, Sirince Village, Temple of Artemis", duration: "Full Day", tag_text: "Unique", group_size: "Private", price: 179, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Discover the ancient city of Ephesus and visit Şirince, a charming Turkish-Orthodox village located close in the hills above Ephesus.</p>
# <p>You will be picked up from your hotel in Kusadasi or Selcuk in the early morning  and driven to Ephesus.</p>
# <ul>
#   <li>Visit the well-preserved Ancient City of Ephesus</li>
#   <li>Admire the remarkable Temple Of Artemis</li>
#   <li>Take a trip outside of Ephesus and visit the House of the Virgin Mary, to see her final resting place</li>
#   <li>Visit the Isa Bey Mosque, important as one of the only remaining examples of architectural art from the Anatolian Beyliks</li>
#   <li>Be immersed in the charm and ambience of Şirince a Turkish-Orthodox village.</li>
# </ul>
# <p>At the end of the tour, we will transfer you back to your hotel.</p>
# </div>")

# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_2.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_3.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_4.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_5.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/sirince/sirince_1.jpg'))

# tour_23.photos.attach(io: file_1, filename: 'sirince_2.jpg', content_type: 'image/jpg')
# tour_23.photos.attach(io: file_2, filename: 'sirince_3.jpg', content_type: 'image/jpg')
# tour_23.photos.attach(io: file_3, filename: 'sirince_4.jpg', content_type: 'image/jpg')
# tour_23.photos.attach(io: file_4, filename: 'sirince_5.jpg', content_type: 'image/jpg')
# tour_23.photos.attach(io: file_5, filename: 'sirince_1.jpg', content_type: 'image/jpg')
# tour_23.tag_list = "Ephesus"
# tour_23.save

# # tour_24 = Tour.create(title: "Ephesus & Pamukkale Tour", description: "Ephesus Ancient City, Pamukkale, Hierapolis", duration: "Full Day", tag_text: "Guided", group_size: "Private", price: 249)
# # file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_5.jpg'))
# # file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_4.jpg'))
# # file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_3.jpg'))
# # file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_2.jpg'))
# # file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/ephesus_pamukkale/ephesus_pamukkale_1.jpg'))

# # tour_24.photos.attach(io: file_1, filename: 'ephesus_pamukkale_5.jpg', content_type: 'image/jpg')
# # tour_24.photos.attach(io: file_2, filename: 'ephesus_pamukkale_4.jpg', content_type: 'image/jpg')
# # tour_24.photos.attach(io: file_3, filename: 'ephesus_pamukkale_3.jpg', content_type: 'image/jpg')
# # tour_24.photos.attach(io: file_4, filename: 'ephesus_pamukkale_2.jpg', content_type: 'image/jpg')
# # tour_24.photos.attach(io: file_5, filename: 'ephesus_pamukkale_1.jpg', content_type: 'image/jpg')
# # tour_24.tag_list = "Ephesus"
# # tour_24.save

# tour_25 = Tour.create(title: "Ephesus Tour from Istanbul", description: "Ephesus Ancient City, Temple of Artemis, The House of Virgin Mary", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 299, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Istanbul – Izmir – Istanbul Domestic Flight Ticket</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Airport Transportation</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Discover three of Turkey’s most important historical sites on a day journey from Istanbul. Explore the ancient city of Ephesus protected under UNESCO World Heritage status, as well as the Temple of Artemis, and the House of the Virgin Mary.</p>
# <p>You will be picked up early in the morning from your hotel in Istanbul and driven to Istanbul Airport. After landing in Izmir you will be greeted by our expert guide upon arrival and the tour will commence. </p>
# <ul>
#   <li>Explore the well preserved ruins of Ephesus with an expert guide</li>
#   <li>Discover the Temple of Artemis, one of the Seven Wonders of the Ancient World</li>
#   <li>Admire to the House of the Virgin Mary where she spent her final days</li>
# </ul>
# <p>At the end of this tour, you will be dropped off at Izmir Airport. From there you will fly direct to  Istanbul and be transferred back to your hotel upon arrival.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_5.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_4.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_1.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_2.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Ephesus/fromistanbul/fromistanbul_3.jpg'))

# tour_25.photos.attach(io: file_1, filename: 'fromistanbul_5.jpg', content_type: 'image/jpg')
# tour_25.photos.attach(io: file_2, filename: 'fromistanbul_4.jpg', content_type: 'image/jpg')
# tour_25.photos.attach(io: file_3, filename: 'fromistanbul_1.jpg', content_type: 'image/jpg')
# tour_25.photos.attach(io: file_4, filename: 'fromistanbul_2.jpg', content_type: 'image/jpg')
# tour_25.photos.attach(io: file_5, filename: 'fromistanbul_3.jpg', content_type: 'image/jpg')
# tour_25.tag_list = "Ephesus"
# tour_25.save

# tour_26 = Tour.create(title: "Pamukkale Tour from Kusadasi", description: "Visits Pamukkale, Hierapolis, and inc Hot Air Balloon", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 199, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Travelling from Kusadasi explore the petrified waterfalls, snow white cliffs and travertines of Pamukkale (known as Cotton Palace in Turkish). Tour the ancient city of Hierapolis and unwind in the relaxing mineral waters of Cleopatra’s Ancient thermal pool. </p>
# <p>You will be picked up from your hotel in Kusadasi in the early morning. After a three hour drive we will arrive in Pamukkale. </p>
# <ul>
#   <li>Explore the petrified waterfalls of Pamukkale</li>
#   <li>Tour the ruins of Hierapolis Ancient City, Apollo Temple, and the largest Necropolis in Anatolia</li>
#   <li>Immerse yourself in the flavours of local Turkish cuisine during a buffet lunch at a local restaurant</li>
#   <li>Take a plunge in Cleopatra’s ancient thermal pool, be transported through time and enjoy the tranquil benefits of these mineral waters.</li>
#   <li>Admire the sarcophagi of Hierapolis</li>
# </ul>
# <p>At the end of the tour we will drop you off at your hotel in Kusadasi.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_5.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_1.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_2.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/private/private_3.jpg'))

# tour_26.photos.attach(io: file_1, filename: 'private_5.jpg', content_type: 'image/jpg')
# tour_26.photos.attach(io: file_2, filename: 'private_1.jpg', content_type: 'image/jpg')
# tour_26.photos.attach(io: file_3, filename: 'private_2.jpg', content_type: 'image/jpg')
# tour_26.photos.attach(io: file_4, filename: 'private_4.jpg', content_type: 'image/jpg')
# tour_26.photos.attach(io: file_5, filename: 'private_3.jpg', content_type: 'image/jpg')
# tour_26.tag_list = "Pamukkale"
# tour_26.save

# tour_27 = Tour.create(title: "Pamukkale & Aphrodisias Tour From Kusadasi", description: "Visits Pamukkale, Hierapolis, and Aphrodisias", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 169, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Explore the ancient city of Aphrodisias named after the goddess Aphrodite and referred to as the ‘City of Love’. Marvel at one of the most important sites of  Greek and Roman periods in Turkey. Famous for its craftsmanship and use of quality marble, experience first hand the sculptural superiority of a once bustling metropolis. Finish off the tour with a visit to the white travertines of Pamukkale and the ancient city of Hierapolis.</p>
# <p>This tour is recommended for those with an interest in art, history and nature.</p>
# <p>You will be picked up from your hotel in Kusadasi in the early morning. We will arrive in Aphrodisias after a 1.5 hour drive. The tour will commence in Aphrodisias before we explore Pamukkale.</p>
# <ul>
#   <li>Be amazed by the marble and well preserved Aphrodisias city</li>
#   <li>Explore  the ancient city of Hierapolis, and its many highlights including the largest Necropolis in Anatolia</li>
#   <li>Be mesmerized by the petrified waterfalls and snow white cliffs of Pamukkale</li>
# </ul>
# <p>At the end of the tour we will drop you off at your hotel in Kusadasi.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_2.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_1.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/afro/afro_5.jpg'))

# tour_27.photos.attach(io: file_1, filename: 'afro_2.jpg', content_type: 'image/jpg')
# tour_27.photos.attach(io: file_2, filename: 'afro_1.jpg', content_type: 'image/jpg')
# tour_27.photos.attach(io: file_3, filename: 'afro_3.jpg', content_type: 'image/jpg')
# tour_27.photos.attach(io: file_4, filename: 'afro_4.jpg', content_type: 'image/jpg')
# tour_27.photos.attach(io: file_5, filename: 'afro_5.jpg', content_type: 'image/jpg')
# tour_27.tag_list = "Pamukkale"
# tour_27.save

# tour_28 = Tour.create(title: "Pamukkale & Laodicea Tour From Kusadasi", description: "Visits Pamukkale, Hierapolis, and Laodicea", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 149, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Cleaopatra’s Pool</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Visit three of Turkey’s grandest historical and natural sites on a day journey to Pamukkale, Hierapolis and Laodicea. Soak in the soothing white thermal pools of Pamukkale and be amazed by the white travertines that cover the landscape. Visit the largest graveyard in antiquity and explore an ancient Greek city home to well-preserved sites of biblical significance, as one of the Seven Churches of Revelation.</p>
# <p>You will be picked up from your hotel in Kusadasi in the early morning and the tour will commence.</p>
# <ul>
#   <li>A full-day trip to Laodicea, Hierapolis and Pamukkale</li>
#   <li>Enjoy Turkish cuisine at a local restaurant</li>
#   <li>Visit three breathtaking attractions in  one day of sightseeing</li>
#   <li>Get an in-depth background into the early days of Greek and Roman rule in the region</li>
# </ul>
# <p>At the end of the tour we will drop you off at your hotel in Kusadasi.</p>
# </div>")

# file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_1.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/laodi/lao_5.jpg'))

# tour_28.photos.attach(io: file_1, filename: 'lao_1.jpg', content_type: 'image/jpg')
# tour_28.photos.attach(io: file_2, filename: 'lao_2.jpg', content_type: 'image/jpg')
# tour_28.photos.attach(io: file_3, filename: 'lao_3.jpg', content_type: 'image/jpg')
# tour_28.photos.attach(io: file_4, filename: 'lao_4.jpg', content_type: 'image/jpg')
# tour_28.photos.attach(io: file_5, filename: 'lao_5.jpg', content_type: 'image/jpg')
# tour_28.tag_list = "Pamukkale"
# tour_28.save

# tour_29 = Tour.create(title: "Pamukkale Tour From Istanbul", description: "Visits Pamukkale,and Hierapolis", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 249)
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_4.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_1.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_2.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_3.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Pamukkale/from_ist/from_ist_5.jpg'))

# tour_29.photos.attach(io: file_1, filename: 'from_ist_4.jpg', content_type: 'image/jpg')
# tour_29.photos.attach(io: file_2, filename: 'from_ist_1.jpg', content_type: 'image/jpg')
# tour_29.photos.attach(io: file_3, filename: 'from_ist_2.jpg', content_type: 'image/jpg')
# tour_29.photos.attach(io: file_4, filename: 'from_ist_3.jpg', content_type: 'image/jpg')
# tour_29.photos.attach(io: file_5, filename: 'from_ist_5.jpg', content_type: 'image/jpg')
# tour_29.tag_list = "Pamukkale"
# tour_29.save

# tour_30 = Tour.create(title: "Mount Nemrut & Gobeklitepe", description: "Visits Gobeklitepe, Edessa, Nemrut", duration: "2 Days", tag_text: "Guided", group_size: "Private", price: 399)
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_3.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_1.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/nemrut/nemrut_5.jpg'))

# tour_30.photos.attach(io: file_1, filename: 'nemrut_3.jpg', content_type: 'image/jpg')
# tour_30.photos.attach(io: file_2, filename: 'nemrut_2.jpg', content_type: 'image/jpg')
# tour_30.photos.attach(io: file_3, filename: 'nemrut_1.jpg', content_type: 'image/jpg')
# tour_30.photos.attach(io: file_4, filename: 'nemrut_4.jpg', content_type: 'image/jpg')
# tour_30.photos.attach(io: file_5, filename: 'nemrut_5.jpg', content_type: 'image/jpg')
# tour_30.tag_list = "Nemrut"
# tour_30.save

# tour_31 = Tour.create(title: "Gobeklitepe from Istanbul", description: "Visits Edessa, Gobeklitepe, Archeologic Museum", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 349, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Journey back in time to 12,000 BCE on this tour to Gobeklitepe from Istanbul. This tour splendid for history-buffs who want to dip deeper within the ancient history. Assure that your archaeological adventure is comfortable and without stress. Guide also takes you to Sanliurfa Archeological Museum, Pools of Abraham, and local market.</p>
# <p>We will pick you up from your hotel in Istanbul and drive to Istanbul Airport. You will board an early morning flight from Istanbul to Sanliurfa where the tour starts. Guide will meet with you at Sanliurfa Airport upon landing. Then tour will start.</p>
# <ul>
#   <li>Admire to Gobeklitepe where the history start</li>
#   <li>Visit an archaeological site that most tourists miss</li>
# </ul>
# <p>In the end of tour, driver drop you off to Sanliurfa Airport. Then return to Istanbul Airport by flight. Transfer back to hotel in Istanbul.</p>
# </div>")

# file_1 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_2.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_1.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_5.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_3.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Gobeklitepe/gobek/gobek_4.jpg'))

# tour_31.photos.attach(io: file_1, filename: 'gobek_2.jpg', content_type: 'image/jpg')
# tour_31.photos.attach(io: file_2, filename: 'gobek_1.jpg', content_type: 'image/jpg')
# tour_31.photos.attach(io: file_3, filename: 'gobek_5.jpg', content_type: 'image/jpg')
# tour_31.photos.attach(io: file_4, filename: 'gobek_3.jpg', content_type: 'image/jpg')
# tour_31.photos.attach(io: file_5, filename: 'gobek_4.jpg', content_type: 'image/jpg')
# tour_31.tag_list = "Gobeklitepe"
# tour_31.save

# tour_32 = Tour.create(title: "Troy Tour from Istanbul", description: "Visits Troy Ancient City, Trojan Horse", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 99, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Discover the legendary Ancient city of Troy on a day trip from Istanbul. Get about Trojan mythology and marvel at the ruins of the UNESCO World Heritage site including the replica of the Trojan Horse, as you walk in the footsteps of Achilles, Hector, Helen, and Paris.</p>
# <p>Start the tour with the pick you up from your hotel in Istanbul, then you will be meet our driver and guide before air-conditioned van.</p>
# <ul>
#   <li>Discover the ruins and temples of the legendary Ancient City of Troy</li>
#   <li>Visit the replica of the Trojan Horse</li>
#   <li>Get the legends of Paris, Achilles and Helen of Troy</li>
#   <li>Enjoy a tasty lunch on restaurant</li>
#   <li>Explore Homer's foundations for European literature</li>
# </ul>
# <p>In the end of tour, journey back to hotel in Istanbul.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_1.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_3.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_4.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Troy/troy/troy_5.jpg'))

# tour_32.photos.attach(io: file_1, filename: 'gobek_1.jpg', content_type: 'image/jpg')
# tour_32.photos.attach(io: file_2, filename: 'gobek_2.jpg', content_type: 'image/jpg')
# tour_32.photos.attach(io: file_3, filename: 'gobek_3.jpg', content_type: 'image/jpg')
# tour_32.photos.attach(io: file_4, filename: 'gobek_4.jpg', content_type: 'image/jpg')
# tour_32.photos.attach(io: file_5, filename: 'gobek_5.jpg', content_type: 'image/jpg')
# tour_32.tag_list = "Troy"
# tour_32.save

# tour_33 = Tour.create(title: "Gallipoli Tour", description: "Anzac Cove, Turkish Memorial, Australian Memorial", duration: "Daily", tag_text: "Guided", group_size: "Private", price: 299, 
# include: "<div>
# <ul class=\"list-inline mr-5\">
#   <li><i class=\"fas fa-check mr-2\"></i>Entrance Fees</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Professional Licensed Tour Guide</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Hotel Pick Up & Drop Off</li>
#   <li><i class=\"fas fa-check mr-2\"></i>All Local Taxes</li>
#   <li><i class=\"fas fa-check mr-2\"></i>Lunch</li>
# </ul>
# </div>", exclude: "<div>
# <ul class=\"list-inline\">
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Personal Expenses</li>
#   <li><i class=\"fas fa-exclamation mr-2\"></i></i>Food & Drinks</li>
# </ul>
# </div>", schedule: "<div>
# <p>Back in time and visit the site of ANZAC landings on WWI on this tour of the Gallipoli Peninsula from Istanbul. Visit to the battlefields of the allied forces, and see the war memorials that memorialize the dead soldiers.</p>
# <p>We will pick you up from your hotel in Istanbul and trip by air-conditioned minibus to the battlegrounds and war memorials of the ANZAC campaign of the Battle of Gallipoli during WWI.</p>
# <ul>
#   <li>Discover the war memorials and battlefields of the Gallipoli</li>
#   <li>Get more about the ANZAC troops</li>
#   <li>Stop for reflect at the Commonwealth cemeteries</li>
# </ul>
# <p>In the end of tour, journey back to hotel in Istanbul.</p>
# </div>")
# file_1 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_4.jpg'))
# file_2 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_2.jpg'))
# file_3 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_1.jpg'))
# file_4 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_3.jpg'))
# file_5 = File.open(File.join(Rails.root,'app/assets/images/Troy/galli/galli_5.jpg'))

# tour_33.photos.attach(io: file_1, filename: 'galli_4.jpg', content_type: 'image/jpg')
# tour_33.photos.attach(io: file_2, filename: 'galli_2.jpg', content_type: 'image/jpg')
# tour_33.photos.attach(io: file_3, filename: 'galli_1.jpg', content_type: 'image/jpg')
# tour_33.photos.attach(io: file_4, filename: 'galli_3.jpg', content_type: 'image/jpg')
# tour_33.photos.attach(io: file_5, filename: 'galli_5.jpg', content_type: 'image/jpg')
# tour_33.tag_list = "Gallipoli"
# tour_33.save

# article_1 = Article.create(title: "Mesopotamia", author: "Lara Pak", author_img: "Middle East",
# content: "<p>Mesopotamia which draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_1.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_1.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_1.save

# article_2 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "Food",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_2.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_2.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_2.save

# article_3 = Article.create(title: "Mesopotamia", author: "Serkan Demircan", author_img: "Fun",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_3.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_3.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_3.save

# article_4 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "East",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_4.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_4.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_4.save

# article_5 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "West",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_5.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_5.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_5.save

# article_6 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "History",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_6.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_6.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_6.save

# article_7 = Article.create(title: "Mesopotamia", author: "Lara Pak", author_img: "History",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_7.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_7.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_7.save

# article_8 = Article.create(title: "Mesopotamia", author: "Anil Pak", author_img: "History",
# content: "<p>Mesopotamiawhich draws people with its fertile land from past to today is the place wherehistory of 
# civilization began; mankind abandoned nomadic life to becomesedentary; mankind started growing wheat; first 
# villages, cities and empireswere established; writing was invented.</p> <p>History of Göbekli Tepe which causes history 
# of humanity to be rewritten; Mardin’s lacy narrow streets; matchless sunrises inNemrut, a wonder of the world; 
# Gaziantep, city of mosaics; unprecedentedhistorical artifacts in modern museums planted in cities like pearl 
# drops InMesopotamia, the land where thousands of archeological treasures reside, you see history and culture spring everywhere you turn your head. Fertile land between to magnificent rivers.
# Mesopotamia has turned every seed into abundant crops for thousands of years.</p> <p>Aspectacular gastronomic culture turning these miracles into incredible tastes.Different colors telling the same story in a different manner with lifestyle,
# folklore and art, nourished by diversity. Since when did we have this faith and the desire tobuild temples? The land which has an answer to this question. 
# Mosques, tombs,churches, and countless temples of various beliefs… Göbekli Tepe, which unitespeople with their faith in their hearts long before settling and startingfarming. 
# Sacred places scattered around Şanlıurfa, the city of prophets. Themystical atmosphere, domes in Mardin; a mosaic of religions and cultures.Countless sacred places in Mesopotamia and the state of deep contemplation whichcan only be felt by experience. 
# When you add hospitable people, a splendid physicalgeography, a matchless ecosystem with distinctive plant and animal kinds tothese, everything is in place. Mesopotamia is a matchless center of attractionwith a capacity to add tens of items to your “Bucket List”.
# Mesopotamia, the land of firsts, theland of everything unique and as ancient as time itself, awaits you. Discover alegendary history and culture, remarkable nature, and unforgettable tastes inMesopotamia.</p> ")
# file = URI.open("https://images.unsplash.com/photo-1549664170-8ec5fef5160e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=675&q=80")
# file_2 = URI.open("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80")

# article_8.photos.attach(io: file, filename: 'photo_article_1.jpg', content_type: 'image/jpg')
# article_8.photos.attach(io: file_2, filename: 'photo_article_2.jpg', content_type: 'image/jpg')
# article_8.save

puts "database is clean"

puts "#{Tour.count} Tour created..."
puts "#{Article.count} Article created..."

puts "Finished mate..."
