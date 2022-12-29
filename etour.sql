-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2022 at 02:47 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_brands`
--

CREATE TABLE `a_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_brands`
--

INSERT INTO `a_brands` (`id`, `name`) VALUES
(1, '1000'),
(2, '2000'),
(3, '3000'),
(4, '5000');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `place` text NOT NULL,
  `location` text NOT NULL,
  `category` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `fare` varchar(200) NOT NULL,
  `foods` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `place`, `location`, `category`, `image`, `description`, `latitude`, `longitude`, `fare`, `foods`, `price`, `brand_id`) VALUES
(6, 'Hidden Paradise', 'Baco', 'San Ignacio, Baco', 'Destination', 'Baco/hidden_paradise.jpg', 'Hidden Paradise allows you to experience the cold, clear water of the Alpaparay River. It has a natural spring that flows through the swimming pool, which is surrounded by huts and cottages for picnics or simply relaxing.', '13.2913', '121.0728', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(7, 'Infinity Farm', 'Baco', 'Mangangan 1, Baco', 'Destination', 'Baco/infinity_farm.jpg', 'Infinity Farm is a paradise with well-paved boardwalks, riverside cottages, and plenty of space for a peaceful retreat. The constant rumble of the flowing Mangangan River waters will help you relax and feel therapeutic vibes.', '13.254067024041294', '121.01480392999262', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(9, 'Kambal Bato', 'Baco', 'Dulangan III, Baco', 'Destination', 'Baco/kambal_bato.jpg', 'Located at Dulangan 3, Baco', '13.4120', '121.1276', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(10, 'Mangyan Cubool: Cultural Booth Of Love', 'Baco', 'Graciano Dela Chica Mangyan High School, San Ignacio, Baco', 'Destination', 'Baco/mangyan_cubol.jpg', 'CuBooL, which translates to \"cultural booth of love,\" lives up to its name by not only providing visitors with Instagram-worthy shots but also promoting Mangyan culture through informative signs scattered throughout the area.', '13.256046332337016', '121.0718405378665', 'Jeep = Calapan to Destination- 50-80 pesos', '', '2000', 2),
(11, 'Mt. Halcon', 'Baco', 'Baco, Oriental Mindoro', 'Destination', 'Baco/mthalcon.jpg', 'Mount Halcon serves as a natural boundary between Oriental and Occidental Mindoro. It is the province\'s highest peak and one of the province\'s symbols. It is the 18th highest mountain in the Philippines, standing at 2,586 meters (8,484 feet). It is also one of the best hiking destinations and one of the most difficult mountains to climb in the country, with long, often steep trails through dense jungle, crystal-clear rivers, and a magnificent summit with a breathtaking view of a sea of clouds.', '13.262917357870718', '120.99499995771093', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(12, 'Tagbungan Mountain Resort & Lantuyang River', 'Baco', 'Dulangan III, Baco', 'Destination', 'Baco/tagbungan.jpg', 'The Tagbungan Mountain Resort, located at the foot of Mt. Halcon, is a swimming paradise in the middle of a forest. The resort features man-made falls fed directly by the Lantuyan River. To make the most of your visit, the property also has rooms where you can stay overnight.', '13.305968780499986', '121.06534123556199', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(14, 'Tampisaw', 'Baco', 'San Ignacio, Baco', 'Destination', 'Baco/tampisaw.jpg', 'Tampisaw offers one-with-nature vibes with their glamping tents and the overall ambiance of the area, making it a haven for nature and eco lovers.', '13.308112138810236', '121.06967931823804', 'Jeep = Calapan to Destination- 50-80 pesos', '', '5000', 4),
(17, 'Harka Piloto Fish Sanctuary', 'Calapan', 'Lazareto, Calapan City', 'Destination', 'Calapan/harka_piloto.jpg', 'Harka Piloto Island, about 1.5 kilometers off the coast of Brgy Lazareto, is a fish sanctuary that has been actively protected by the community and the local government. Harka Ploto is now an excellent diving and snorkeling location. This sanctuary, teeming with colorful fish and corals, is just a short distance from the Verde Island Passage, the World\'s Center of Marine Biodiversity.', '13.44358272915891', '121.21966457630847', 'Tricycle = Calapan to Destination 100 - 150 pesos including the fare for bangka.', '', '3000', 3),
(18, 'Calapan City Museum', 'Calapan', 'Calapan New City Hall, Calapan city', 'Destination', 'Calapan/calapan_city_museum.jpg', 'Located in Brgy. Calapan\'s new City Hall. Guinobatan, the Calapan City Museum, houses interesting artifacts from Calapan\'s colorful history. These include the previous leaders of the municipality and the now-city of Calapan\'s possessions, must-see photos of the old Calapan, and other historical tidbits that will pique your interest.', '13.374602713620774', '121.18983896550374', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(19, 'Sto Nino Cathedral', 'Calapan', 'Ibaba East, Calapan City', 'Destination', 'Calapan/cathedral.jpg', 'Sto. Tomas is the mother parish of the Apostolic Vicariate of Calapan and, for many, the \"Seat of Christianity\" in Oriental Mindoro. The Nio Cathedral is located in the heart of Calapan City, the province\'s capital. It is a very active and vibrant parish comprised of 15 Christian communities or Pamayanang Kristyano, 3,466 Catholic Families, and the greatest number of religious organizations that support and assist the parish in implementing its programs.', '13.4146', '121.1803', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(20, 'Inay\'s Place', 'Calapan', 'Biga, Calapan City', 'Destination', 'Calapan/inays_place.jpg', '', '13.314060919178825', '121.16621582740368', 'Multicab= Calapan to Destination - 50-80 pesos', '', '5000', 4),
(21, 'Lamesang Bato', 'Calapan', 'Salong, Calapan City', 'Destination', 'Calapan/lamesang_bato.jpg', 'Lamesang Bato is reached after a short hike. You\'ll find a peaceful retreat with nature here, with a spectacular view of the Calapan City Port and the Bay of Calapan City.', '13.420752395412743', '121.19040752535645', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(22, 'Mahal na Pangalan Marine Park', 'Calapan', 'Mahal na Pangalan, Calapan City', 'Destination', 'Calapan/marine_park.jpg', 'Visitors to Mahal na Pangalan Marine Park will be greeted by colorful murals painted by talented Calapan City students. A narrow boardwalk will lead from the mangrove area to the newly declared marine protected area in Brgy. Calapan City\'s Mahal na Pangalan.', '13.404522804480493', '121.14554886780688', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(23, 'Nature Park', 'Calapan', 'Bulusan, Calapan City', 'Destination', 'Calapan/nature_park.jpg', 'Calapan Nature Park provides a refreshing tropic atmosphere for both residents and visitors. Century-old trees abound throughout the park, which also includes recreational areas, picnic and camping areas, a mini zoo, and wall climbing facilities. The park is also the starting point for the one-hour Bulusan eco-trail, which leads to the seashore in Barangay Parang. Trekking, jogging, mountain biking, camping, and other outdoor recreational activities are ideal in the park.', '13.404961777029627', '121.1991656068075', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(24, 'ORIENTAL MINDORO HERITAGE MUSEUM', 'Calapan', 'Ibaba East, Calapan City', 'Destination', 'Calapan/ormin_heritage.jpg', 'The Oriental Mindoro Heritage Museum (OMHM) was constructed on the grounds of the Old Provincial Capitol of Oriental Mindoro in Brgy. Calapan City\'s Ibaba East neighborhood is home to the Cal-kuta, an abandoned Spanish fortress. Its features are inspired by the \"MAHAL TANA\" theme, which highlights the iconic symbols of Oriental Mindoro – Mangyan, Halcon, Tamaraw, and Naujan Lake – and are a combination of classic and modern designs.', '13.414964088957293', '121.18017011275894', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(25, 'Calapan City Plaza', 'Calapan', 'Ibaba East, Calapan City', 'Destination', 'Calapan/plaza.jpg', '\"The plaza serves as a rotonda, with a cemented gazebo in the center, surrounded by a spiraling staircase leading to its rooftop, where you\'ll find a statue of a Mangyan next to a Tamaraw, a dwarf buffalo endemic to Mindoro. The Mangyans are Mindoro\'s indigenous people. Also found in this plaza are a relief sculpture of Mindoro and a monument of Dr. Jose Rizal', '13.414778446172974', '121.17902821419122', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(26, 'Silonay Mangrove ', 'Calapan', 'Silonay, Calapan City', 'Destination', 'Calapan/silonay.jpg', 'Silonay Mangrove Conservation and Ecopark, located in Barangay Silonay, Calapan City, is 42 hectares in size and features a 350-meter boardwalk that leads to a 6-meter high tower with a panoramic view of the Silonay River and the adjacent sea. According to the 2014 flora and fauna survey, it was home to 15 species of mangroves, 29 species of birds (7 of which are endemic to the Philippines), 2 species of bats, and 5 species of reptiles and amphibians.', '13.400945063368814', '121.2251015187282', 'Tricycle = Calapan to Destination - 30-60 pesos', '', '1000', 1),
(30, 'Aras Cave', 'San Teodoro', 'Bigaan, San Teodoro', 'Destination', 'San_Teodoro/aras_cave.jpg', 'You\'ll arrive at Aras Cave after about 30 minutes of hiking through the shrubbery. Every cave provides a unique experience, and Aras provides just that with a waterfall inside.', '13.384235101960439', '121.00774871194035', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(32, 'Aras Falls', 'San Teodoro', 'Bigaan, San Teodoro', 'Destination', 'San_Teodoro/aras_falls.jpg', 'This two-to-three-story-tall waterfall cascades into a silted water basin. The waterfall\'s rocky, well-shaded surroundings will truly immerse you in nature and its timeless beauty.', '13.410969288761741', '120.99655781194079', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(33, 'Botolan Falls', 'San Teodoro', 'Caagutayan, San Teodoro', 'Destination', 'San_Teodoro/botolan_falls.jpg', 'Botolan Falls, also known as the Twin Falls of San Teodoro, is a two-tiered waterfall accessible after a 15-minute hike.', '13.27489906037967', '120.96468659659739', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(34, 'Calabugao Ecopark', 'San Teodoro', 'Lumangbayan, San Teodoro', 'Destination', 'San_Teodoro/calabugao_eco_park.jpg', 'This new San Teodoro attraction offers a concrete boardwalk tour through decades-old mangrove trees. Take a refreshing walk in the cool shade of the trees, listening to the buzzing of nature.', '13.41815284670985', '121.03399114447159', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(36, 'Camatis Falls', 'San Teodoro', 'Caagutayan, San Teodoro', 'Destination', 'San_Teodoro/camatis_falls.jpg', 'Camatis Falls, named after its location at Sitio Camatis, is another waterfall hidden beneath San Teodoro\'s greenery.', '13.413394158749629', '120.98929449234377', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(37, 'Punta Baluarte', 'San Teodoro', 'Lumangbayan, San Teodoro', 'Destination', 'San_Teodoro/punta_baluarte.jpg', 'Punta Baluarte was a Spanish fortress that was constructed in the 1800s. During the colonial period, it witnessed the bloody and brutal \"pangangayaw.\" It is now a testament to the area\'s rich and significant history.', '13.418413745679127', '121.03380875427013', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(38, 'Punta Ilag', 'San Teodoro', 'Ilag, San Teodoro', 'Destination', 'San_Teodoro/punta_ilag.jpg', 'This extraordinary rock formation in Brgy will astound you. Because of its uncanny resemblance to a turtle, Ilag, San Teodoro. A hundred or so steps uphill will take you to the \"guardhouse\" on top of this formation, where you will be blown away by the 360-degree view of the San Teodoro mountains and the Punta Ilag Fish Sanctuary.', '13.451888984086175', '120.97752099659984', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(39, 'Tukuran Cart Services', 'San Teodoro', 'Calsapa, San Teodoro', 'Destination', 'San_Teodoro/tukuran_cart.jpg', 'Experience this unusual mode of transportation in Calsapa, San Teodoro, as you ride a carabao-pulled cart to Tukuran Falls in Puero Galera. Before arriving at your destination, you can take in the rustic scenery and lush greenery.', '13.422780777463723', '121.00997305427019', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(40, 'Bansud Municipal Park And Plaza', 'Bansud', 'Poblacion, Bansud', 'Destination', 'Bansud/park.jpg', 'The Municipal Park and Plaza, located directly across from Bansud\'s Municipal Hall, is a large recreational area with paddle boating and fishing. Inside the plaza is a man-made lagoon that hatches tilapia for fishing activities.', '12.864182895467014', '121.45584624347853', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(41, 'Bansud Museum', 'Bansud', 'Poblacion, Bansud', 'Destination', 'Bansud/museum.jpg', 'The Bansud Museum, located within the grounds of the Municipal Hall and Plaza, houses the town\'s artifacts and historical relics.', '12.861514418534199', '121.46464691454587', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(42, 'Bato Viewing Hills', 'Bansud', 'Bato, Bansud', 'Destination', 'Bansud/bato_viewing.jpg', 'Bato Viewing Hills is a relaxing destination ideal for unwinding and meditation, with views of lush forests, mountainous landscapes, and the overall wonder of nature.', '12.783054368137789', '121.41454766994813', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(43, 'Batong Buwaya River', 'Bansud', 'Rosacara, Bansud', 'Destination', 'Bansud/batong_buwaya_river.jpg', 'The Batong Buwaya River is well-known for its rock formation that resembles a crocodile\'s head with an open mouth. Its untouched natural rock formations, cool, flowing water through filtering stones, and surrounding greenery add to its allure for those seeking a quiet retreat with nature.', '12.821776869380695', '121.2923583866425', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(44, 'Manihala Waterfalls', 'Bansud', 'Minahala, Bansud', 'Destination', 'Bansud/manihala_waterfalls.jpg', 'Manihala Falls requires about 10-minutes of trekking. It has a captivating cascade of spring water flowing through sedimentary rocks, forming a water pool at the bottom where you can swim, fish, or picnic.', '12.802689589262716', '121.42139095200373', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(45, 'Paypay Ama Waterfalls', 'Bansud', 'Bato, Bansud', 'Destination', 'Bansud/paypay_ama_waterfalls.jpg', 'Paypay Ama Waterfalls can be reached via an exciting upland nature trail. Plunge into the cool waters or simply relax and unwind while listening to the gushing water.', '12.809300215354478', '121.29934789260035', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(46, 'Rosacara Rolling Hills', 'Bansud', 'Rosacara, Bansud', 'Destination', 'Bansud/rosacara_rolling_hills.jpg', 'Rosacara Rolling Hills, with its lush greenery and adventurous trails leading to the top of the hills, provides a peaceful ambiance with a cool mountain breeze for nature lovers and adventure seekers.', '12.833844602492727', '121.43938338459323', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(47, 'Sunken Cemetery', 'Bansud', 'Proper, Bansud', 'Destination', 'Bansud/sunken_cemetery.jpg', '', '12.858058988030018', '121.47884525511226', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(48, 'Kuta Shrine', 'Bongabong', 'Anilao, Bongabong', 'Destination', 'Bongabong/kuta_shrine.jpg', 'The Kuta Church Ruins in Anilao, Bongabong are the remains of an 18th century church. At the time, it serves as a place of worship as well as a fortress against Moro invaders. The church is thought to have been burned down and abandoned as a result of the Moro\'s constant attacks between 1753 and 1754. The National Historical Commission designated the site as a National Historical Landmark on June 25, 2012, making it the first in Oriental Mindoro.', '12.723604540265404', '121.51307202128696', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(49, 'Sukol River', 'Bongabong', 'Ipil, Bongabong', 'Destination', 'Bongabong/sukol_river.jpg', 'Sukol River is one of Bongabong\'s four major rivers. It is lined with various species of magrove forests and is teeming with birds and other fauna.', '12.740828318458227', '121.49329493272393', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(50, 'Tawiran Sa Mapang', 'Bongabong', 'Mapang, Bongabong', 'Destination', 'Bongabong/tawiran_sa_mapang.jpg', 'The most popular activities in Tawiran sa Mapang are tubing and kayaking. Visitors can enjoy the cool, rushing water and bask in the sun on the banks of the Bongabong River, which is lined with cottages.', '12.684624405287053', '121.40595139867989', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(51, 'Tesoro Resort', 'Bongabong', 'Mapang, Bongabong', 'Destination', 'Bongabong/tesoro_resort.jpg', 'You can rent huts and cottages on a more private section of the Bongabong River to fully enjoy the destination.', '12.683787045303553', '121.39968575883043', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(52, 'Aslom Island', 'Bulalacao', 'Milagrosa, Bulalacao', 'Destination', 'Bulalacao/aslom_island.jpg', 'Because of the abundance of sampalok (tamarind) trees, Aslom Islet in Bulalacao got its name from the Cebuano word aslom, which means \"sour.\" The crescent-shaped white sandbar that stretches for about 500 meters distinguishes the islet.', '12.266359217718744', '121.27677772554671', 'Van = Calapan to Destination- 150-180 pesos', '', '5000', 4),
(53, 'Buyayao Island', 'Bulalacao', 'Buyayao, San Roque, Bulalacao', 'Destination', 'Bulalacao/buyayao.jpg', 'Buyayao Island is a 206-hectare forest reserve with over 500 forest species growing among thick vegetation and ornamental plants. Aside from its abundant wildlife, the island\'s corals and marine diversity make it ideal for snorkeling and diving.', '12.382775781992075', '121.4184944181673', 'Van = Calapan to Destination- 150-180 pesos', '', '5000', 4),
(54, 'Pocanil Rock Formation', 'Bulalacao', 'Pocanil, San Roque, Bulalacao', 'Destination', 'Bulalacao/pocanil.jpg', 'Pocanil Rock Formation is adjacent to Pocanil Beach Resort, which serves as a launching point for trips to Buyayao Island. Rappelling, rock climbing, and spelunking are all popular activities at the Pocanil Rock Formation.', '12.395685896898891', '121.39514847242681', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(55, 'Suguicay Island', 'Bulalacao', 'Suguicay, San Juan, Bulalacao', 'Destination', 'Bulalacao/suguicay.jpg', 'Suguicay Island is one of the lovely islands in Bulalacao, Oriental Mindoro. It is an ideal location for those looking to recharge their batteries and take a break from the mental and emotional stresses of modern life. The boat ride from Bangkal Staging Point in Brgy. Suguicay Island is accessible from San Juan. Its inviting turquoise waters, fine white sand, and the soothing sound of the waves are ideal for unwinding and getting away from life\'s stresses.', '12.337423518075498', '121.40049221205349', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(56, 'Abintang', 'Bulalacao', 'Abintang, Nasucob, Bulalacao', 'Destination', 'Bulalacao/abintang.jpg', 'Abintang is a breathtaking view deck from Bulalacao\'s uphill. This area offers a panoramic view of the seascapes of Buyayao, Suguicay, and Semirara Islands in Antiquea.', '12.350837584019414', '121.32870316474367', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(57, 'Bagong Sikat Falls', 'Bulalacao', 'Bagong Sikat, Bulalacao', 'Destination', 'Bulalacao/bagong_sikat_falls.jpg', 'Bagong Sikat Falls is a one-story tall waterfall with a deep and wide catch basin. It takes about 45 minutes to an hour to trek through rice fields, forested grounds, and a few streams to reach this magnificent waterfall.', '12.366314137051958', '121.27224964301114', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(58, 'Balatasan Long Beach', 'Bulalacao', 'Balatasan, Bulalacao', 'Destination', 'Bulalacao/balatasan_long_beach.jpg', 'Apart from serving as a departure point for trips to Maasin and Tambaron Islands, this long stretch of white sand beach in Brgy. Balatasan has clear waters that are ideal for swimming and other water activities. Balatasan Long Beach is the ideal getaway, with huts and floating cottages available.', '12.312501837720028', '121.37263034885359', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(59, 'Boulevard', 'Bulalacao', 'Maasin, Bulalacao', 'Destination', 'Bulalacao/boulevard.jpg', '', '12.25563310391686', '121.38590411674063', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(62, 'Aninuan Falls', 'Puerto Galera', 'Aninuan, Puerto Galera', 'Destination', 'Puerto_Galera/aninuan.jpg', 'Aninuan Falls, a 4-meter waterfall in Aninuan, Puerto Galera, is nestled at the foot of Mt. Malasimbo. A 20-30 minute hike will take you to the falls\' cool and refreshing water.', '13.482743487279102', '120.90651983956802', 'Van = Calapan to Destination- 150-200 pesos', '', '5000', 4),
(66, 'Aplayang Munti', 'Puerto Galera', 'Dulangan, Puerto Galera', 'Destination', 'Puerto_Galera/aplayang_munti.jpg', 'Aplayang Munti, also known as Virgin Island\'s Pebble Beach, has a beautiful rock formation and a beautiful view of the sea. Its tranquil setting and calm waters are ideal for relaxing and meditating.', '13.476945191372163', '120.97169835121355', 'Van = Calapan to Destination- 150-200 pesos', '', '5000', 4),
(67, 'Haligi Beach', 'Puerto Galera', 'Sto. Nino, Puerto Galera', 'Destination', 'Puerto_Galera/haligi.jpg', 'Haligi Beach is a lovely small beach in a cove. Its most appealing features are its white sand and crystal waters, where one can go swimming or snorkeling.', '13.517915859580498', '120.94287505602497', 'Van = Calapan to Destination- 150-200 pesos', '', '5000', 4),
(68, 'Lighthouse Escarceo', 'Puerto Galera', 'Sinandigan, Puerto Galera', 'Destination', 'Puerto_Galera/light_house.jpg', 'The derelict lighthouse and the remains of the old lighthouse living quarters, built in 1955, are located directly on top of the Puerto Galera dive sites.', '13.521801413746635', '120.99305432165276', 'Van = Calapan to Destination- 150-200 pesos', '', '5000', 4),
(70, 'Silad Island', 'Bulalacao', 'Milagrosa, Bulalacao', 'Destination', 'Bulalacao/silad_island.jpg', 'The island\'s coral-filled and yellowish sands complement its bone-like shape. The combination of blue and green seawater, as well as the coconut trees dotting the hill in the background, creates a view that is not only visually appealing, but also provides a soothing experience of island life.', '12.250543218214789', '121.25137184915486', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(71, 'Tambaron Island', 'Bulalacao', 'Tambaron, Maasin Bulalacao', 'Destination', 'Bulalacao/tambaron_island.jpg', 'Tambaron is the most developed of Bulalacao\'s islands and islets. Tourists can spend the night in cabanas or fan rooms.', '12.273166392153003', '121.38012889285666', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(72, 'Target Island', 'Bulalacao', 'Milagrosa, Bulalacao', 'Destination', 'Bulalacao/target_island.jpg', 'Target Island, also known as Alibatan Island in Bulalacao, Oriental Mindoro, was used as a bombing practice site during WWII. The 5-hectare island, surrounded by white sand beaches, has a lagoon in the center, which is thought to have formed as a result of the bombings.', '12.215698653396185', '121.28209899671097', 'Van = Calapan to Destination- 280-300 pesos', '', '5000', 4),
(73, 'Buktot Beach', 'Mansalay', 'Manaul, Mansalay', 'Destination', 'Mansalay/buktot.jpg', 'Buktot Beach is a natural wonder with powdery white sands and stunning rock formations. It rents out cabanas so that family and friends can enjoy the summer breeze at Mansalay\'s hidden gem.', '12.448727042659604', '121.4203593603086', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(74, 'Casabangan Beach/ Marine Protected Areas', 'Mansalay', 'Don Pedro, Mansalay', 'Destination', 'Mansalay/casabangan.jpg', 'Casabangan Beach is famous for its crystal clear blue waters and fine white sand. Swimming and snorkeling are the best ways to enjoy this picturesque location.', '12.505163341472436', '121.3207687988504', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(75, 'La Roza Del Marie Beach Resort', 'Mansalay', 'Brgy. Wasig, Mansalay', 'Destination', 'Mansalay/la_roza.jpg', 'This quaint and charming Mansalay destination provides a peaceful haven as you take in the beauty of the panoramic view of where the sky meets the sea.', '12.546094989503839', '121.49456003471704', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(76, 'Mangyan Burial Cave', 'Mansalay', 'Sitio Palaypay, B. Del Mundo, Mansalay', 'Destination', 'Mansalay/mangyan_burial.jpg', 'Mangyan Burial Cave is located on the Palaypay Cove Fish Sanctuary\'s coast. It is here that the ancient Mangyans\' sacred site can be found. Although most of the Mangyans\' remains have been washed away into the adjacent sea, some remain hidden beneath boulders and massive rocks.', '12.532442624818247', '121.46275734274697', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(77, 'Mangyan Villages', 'Mansalay', 'Panaytayan, Mansalay', 'Destination', 'Mansalay/mangyan_villages.jpg', 'Mangyan Village is located in Mansalay\'s Barangay Panaytayan. This Mangyan Settlement is ideal for those interested in learning about the Hanunuo Mangyans\' rich culture and traditions.', '12.551276723787167', '121.34748635423543', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(78, 'Mansalay Eco Park', 'Mansalay', 'Sitio Barubo, B. Del Mundo, Mansalay', 'Destination', 'Mansalay/mansalay_ecopark.jpg', 'The Mansalay Eco Park provides a panoramic view of the Mansalay lowlands and the Tablas Strait. During the Lenten season, the eco park is a popular pilgrimage site in the province.', '12.551431463970022', '121.471149509113', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(79, 'Mt. Abenlay Eco Tour Monkey Trail', 'Mansalay', 'Budburan, Mansalay', 'Destination', 'Mansalay/mt_abenlay.jpg', 'Located on the outskirts of Brgy. Budburan, Mansalay, and Mt. Abenlay Eco Tour Monkey Trail provide a scenic landscape where visitors can see monkeys from the viewing deck area in Budburan.', '12.474113489513856', '121.33879861934541', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(80, 'Palaypay Fish Sanctuary', 'Mansalay', 'Sitio Palaypay, B. Del Mundo, Mansalay', 'Destination', 'Mansalay/palaypay.jpg', 'The Palaypay Fish Sanctuary in Mansalay is a haven of rich marine biodiversity, a refuge for various corals, acquatic rocks, and marine species. The beach area is made even more relaxing by the presence of large aquatic trees and mangroves.', '12.517824057629266', '121.45807384347485', 'Van = Calapan to Destination- 250-280 pesos', '', '5000', 4),
(81, 'Sunken Cemetery', 'Mansalay', 'Sitio Alegria, Sta. Brigida, Mansalay', 'Destination', 'Mansalay/sunken_cemetery.jpg', 'The Sunken Cemetery is where the remains of ancient Mansalay residents were interred. The sunken cemetery is visible during low tide, and the gravestones can be seen from a distance.', '12.566867528287624', '121.50138522284094', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(82, 'Avida Dane Farm Resort', 'Roxas', 'San Aquilino, Roxas', 'Destination', 'Roxas/avida.jpg', 'Avida Dane Farm Resort provides a more secluded and private getaway with function halls, a garden with playgrounds, and a swimming pool.', '12.586405856458445', '121.48769617446172', 'Van = Calapan to Destination- 200-280 pesos', '', '2000', 2),
(83, 'Greenscape Beach Resort', 'Roxas', 'San Jose, Roxas', 'Destination', 'Roxas/greenscape.jpg', 'This day tour destination allows you to enjoy the sea and their swimming pool at the same time. The most popular activities here are videoke and picnics.', '12.594641833903038', '121.52538163891764', 'Van = Calapan to Destination- 200-280 pesos', '', '2000', 2),
(84, 'JC Infinity Beach Resort', 'Roxas', 'San Jose, Roxas', 'Destination', 'Roxas/jc_infinity.jpg', 'This is the place to go if you want both saltwater and a swimming pool. Their infinity pool is worth a visit with family and friends.', '12.601116210531364', '121.54143424076551', 'Van = Calapan to Destination- 200-280 pesos', '', '2000', 2),
(85, 'San Rafael Cave', 'Roxas', 'San Rafael, Roxas', 'Destination', 'Roxas/san_rafael_cave.jpg', 'San Rafael Cave is the largest cave in eastern Mindoro and is roughly the size of a cathedral. It is a 7-chamber cave located approximately 8 kilometers south of Roxas town proper and has been declared safe for tourism activity by the Department of Environment and Natural Resources (DENR) (Classification III). The cave is divided into ten chambers, each of which takes about two hours to explore. The first seven chambers are easily accessible, while the eighth requires crawling through a narrow passageway', '12.63941218101686', '121.42876518438264', 'Van = Calapan to Destination- 200-280 pesos', '', '2000', 2),
(86, 'Agsalin Fish Sanctuary', 'Gloria', 'Agsalin, Gloria', 'Destination', 'Gloria/agsalin.jpg', 'At the Para el MAR: MPA Awards and Recognitions 2017, Agsalin Fish Sanctuary was named Top Performing MPA in the United States. The sanctuary has 80.13 hectares of coral reef and subtidal sea grass beds where you can try kayaking and snorkeling.', '12.880188720497369', '121.47474618251839', 'Van = Calapan to Destination- 180-220 pesos', '', '2000', 2),
(87, 'Bamboo Plantation', 'Gloria', 'Malubay, Gloria', 'Destination', 'Gloria/bamboo_plantation.jpg', 'The Municipal Bamboo Plantation is a diverse bamboo plantation that houses various varieties of bamboos used for local livelihood. Relax and enjoy a picnic beneath the cool shade of the bamboos.', '12.942500444027058', '121.40858148922922', 'Van = Calapan to Destination- 180-220 pesos', '', '2000', 2),
(88, 'M. Adriatico Pottery', 'Gloria', 'M. Adriatico, Gloria', 'Destination', 'Gloria/adriatico_pottery.jpg', 'Visitors can see the art and process of pottery making at Macario Adriatico in Gloria. One of the oldest Filipino decorative arts is made with clay and fire at M. Adriatico Poterry.', '12.921452533891358', '121.32866381516827', 'Van = Calapan to Destination- 180-220 pesos', '', '2000', 2),
(89, 'Sta. Theresa Fish Sanctuary', 'Gloria', 'Sta. Theresa, Gloria', 'Destination', 'Gloria/sta_theresa.jpg', 'Sta. The Theresa Fish Sanctuary is a 14-hectare marine preserve (MPA). Snorkeling is one of the activities available at the sanctuary, which is home to a wide range of marine flora and fauna.', '12.920030552695216', '121.48171129574645', 'Van = Calapan to Destination- 180-220 pesos', '', '2000', 2),
(90, 'Walang Langit Falls', 'Gloria', 'Buong Lupa, Gloria', 'Destination', 'Gloria/walang_langit.jpg', 'Walang Langit Falls got its name from the dense canopy of trees that covered the area in the early 1990s. The canopy in the gorge leading to the falls was dense at the time, and the area was so dark that travelers needed flashlights to navigate their way around. Unfortunately, in the late 1990s, the landowners cut down the trees, exposing Walang Langit Falls to sunlight.', '12.975792214038973', '121.4717412255529,', 'Van = Calapan to Destination- 180-220 pesos', '', '2000', 2),
(91, 'Casa Del Rio', 'Socorro', 'Fortuna, Socorro', 'Destination', 'Socorro/casa_delrio.jpg', 'Casa del Rio is located on the other side of the Fortuna Hanging Bridge and features floating cottages and riverbank huts ideal for recreational activities with friends and family.', '13.029789758573267', '121.32960856775867', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(92, 'City of Hearts', 'Socorro', 'Fortuna, Socorro', 'Destination', 'Socorro/city_of_hearts.jpg', 'This secluded resort provides peace and quiet for friends and family. With a variety of pools of varying depths, cottages, a beautiful landscape, and a playground, this location is suitable for everyone.', '13.037689031683922', '121.27129083892348', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(93, 'Naujan Lake Boardwalk And Bicycle Lane', 'Socorro', 'Batong Dalig, Socorro', 'Destination', 'Socorro/naujan_lake_boardwalk.jpg', 'This boardwalk and bicycle lane near Naujan Lake in Batong Dalig is ideal for recreational and physical activities such as walking, biking, and jogging. Exercise your body and mind while admiring the stunning view of Naujan Lake.', '13.104643432816356', '121.33084809908044', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(94, 'SAHSPI (St. Augustine House Of Spirituality)', 'Socorro', 'Subaan, Socorro', 'Destination', 'Socorro/sahspi.jpg', 'This location is ideal for religious activities and retreats because it allows you to reconnect with your spirituality and faith. During the Lenten season, they offer pilgrimage, religious camps, and other faith tourism activities.', '13.077092252260597', '121.36252686951619', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(95, 'SAKAF (Samahan Para Sa Kabuhayan Ng Fortuna)', 'Socorro', 'Fortuna, Socorro', 'Destination', 'Socorro/sakaf.jpg', 'A community-based sustainable tourism organization manages an ecotourism destination in Fortuna, Soccoro that offers activities such as kayaking, floating cottages, and swimming, among others.', '13.03767857941706', '121.27140885611269', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(96, 'Bihiya Beach', 'Pola', 'Misong, Pola', 'Destination', 'Pola/bihiya.jpg', 'Beachgoers are awestruck by its gorgeous creamy white sand and pristine waters, which are comparable to other well-known beaches in the country. Its overall laid-back appeal, low-lying coconut trees, and a 200-meter beachfront make you forget your worries and let the stress slip away.', '13.204320554234236', '121.43068887480673', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(97, 'Bilog Lagoon', 'Pola', 'Bacawan, Pola', 'Destination', 'Pola/bilog_lagoon.jpg', 'This mystical body of water in Bacawan, Pola contains crystal clear water into which one can take a refreshingly deep dip.', '13.125432488251542', '121.53318549093777', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(98, 'Kabilang Ibayo Beach', 'Pola', 'Batuhan, Pola', 'Destination', 'Pola/kabilang_ibayo.jpg', 'Kabilang Ibayo Beach is a long stretch of beachfront ideal for walking, jogging, and other physical activities while basking in the sun and sea breeze.', '13.135566869980705', '121.45453894575523', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(99, 'Lambanog Beach', 'Pola', 'Misong, Pola', 'Destination', 'Pola/lambanog.jpg', 'Lambanog Beach, accessible by boat or banca, is an unspoiled beach destination in Pola. Lambanog Beach is known for its superfine white sand and crystalline waters teeming with corals and marine life.', '13.210156519360673', '121.42884399593623', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(100, 'Mangrove Eco Park', 'Pola', 'Batuhan, Pola', 'Destination', 'Pola/mangrove_ecopark.jpg', 'The Mangrove Eco Park in Pola is home to some of Oriental Mindoro\'s oldest and rarest magroves. A boat ride around Batuhan\'s mangrove area makes you appreciate nature even more. The canopy of mangrove tree branches is the most distinguishing feature of the magrove area, and it will undoubtedly take your breath away.', '13.133029702361334', '121.45660724145667', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(101, 'Pola Heritage Houses', 'Pola', 'Poblacion, Pola', 'Destination', 'Pola/pola_heritage.jpg', 'Because of its historical significance, Pola is known as the Oriental Mindoro Heritage Town.', '13.146820299899275', '121.43219443426888', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(102, 'Tagumpay Beach', 'Pola', 'Tagumpay, Pola', 'Destination', 'Pola/tagumpay_beach.jpg', 'Approximately 9 kilometers away from Pola Town proper is Tagumpay Beach, one of the most frequented beaches in Pola with its fine white sand, relaxing ocean breeze and refreshing blue waters.', '13.208874016666508', '121.41742802821612', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(103, 'Talon Falls / Calima Falls', 'Pola', 'Calima, Pola', 'Destination', 'Pola/talon_falls.jpg', 'Calima Falls, also known as Talon Falls by locals, is about a 40-minute hike away. The only way to get to the falls is to walk through the rocky gorge. The cascades of the falls are refreshing and will undoubtedly energize your body and mind.', '121.41742802821612', '121.48556368209533', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(104, 'Tungtong Point', 'Pola', 'Bayanan, Pola', 'Destination', 'Pola/tungtong.jpg', 'Tungtong Point, a protruding rock, is said to resemble a giant octopus head. Above the rock formation is the St. John the Baptist Prayer Park, where you can relax and meditate while overlooking Pola Bay.', '13.164452012723839', '121.4286795239267', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(105, 'Blanco Beach Resort', 'Pinamalayan', 'Marfrancisco, Pinamalayan', 'Destination', 'Pinamalayan/balnco_beach.jpg', 'Blanco Beach Resort offers cabins and cottages for rent. This destination is ideal for family gatherings or outings with friends because it allows you to enjoy the sun, sea, and sand at their best.', '13.064730712646025', '121.51607495340245', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(106, 'Cawa-Cawa Falls', 'Pinamalayan', 'Buli, Pinamalayan', 'Destination', 'Pinamalayan/cawa_cawa.jpg', 'The name of this waterfall in Pinamalayan comes from its cauldron shape. The falls are only a short walk away. Interestingly, there are many myths and folktales surrounding Cawa-cawa Falls that are as entertaining as the swimming activities themselves.', '13.096451235384492', '121.49876653976827', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(107, 'Del Bae Beach Resort', 'Pinamalayan', 'Guinhawa, Pinamalayan', 'Destination', 'Pinamalayan/del_bae.jpg', 'Del Bae Beach Resort is ideal for picnics, gatherings of family and friends, or just a fun weekend getaway, with cottages available for day tours.', '13.063871614074632', '121.51670996860466', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(108, 'El Dionisio Paraiso White Beach Resort', 'Pinamalayan', 'Brgy. Banilad, Pinamalayan', 'Destination', 'Pinamalayan/el_dionisio.jpg', '', '13.081800469238903', '121.54657789108883', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(109, 'Pili-Banilad-Ranzo Biking Trail', 'Pinamalayan', 'Pili, Banilad and Ranzo, Pinamalayan', 'Destination', 'Pinamalayan/pili_banilad.jpg', 'This coastal road in Pinamalayan will give you readtrip vibes, with a portion of it comparable to Patapat Viaduct in Pagudpud. The sea breeze will energize you as you travel along the road facing the beach while biking.', '13.102709237272164', '121.54559874800259', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(110, 'Pinamalayan Municipal Park', 'Pinamalayan', 'Zone 3, Pinamalayan', 'Destination', 'Pinamalayan/park.jpg', 'The town\'s activities and events are held in the Pinamalayan Municipal Park, which is located in front of the Municipal Hall. There are several playgrounds and monuments within the park that commemorate significant events in Pinamalayan\'s history.', '13.036097423974812', '121.48544039216188', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(111, 'Pinamalayan Rainbow Junction/Marfranisco Triangle', 'Pinamalayan', 'Marfrancisco, Pinamalayan', 'Destination', 'Pinamalayan/rainbow.jpg', 'The Pinamalayan Rainbow Junction is a vibrant landmark located along the Strong Republic Nautical Highway that displays the town\'s emblem, the rainbow, as a testament to its vibrant culture and history.', '13.034659417419256', '121.4828336427515', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(112, 'Pinamalayan Welcome Arch', 'Pinamalayan', 'Sto. Nino, Pinamalayan', 'Destination', 'Pinamalayan/welcome_arch.jpg', 'You will be greeted by this colorful and artistic arch which welcomes you when you enter the Municipality of Pinamalayan.', '13.065524812726578', '121.45572698985042', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(113, 'Ranzo Fish Sanctuary', 'Pinamalayan', 'Ranzo, Pinamalayan', 'Destination', 'Pinamalayan/ranzo.jpg', 'This location in Brgy. Ranzo, Pinamalayan is a rich marine sanctuary. With such clear water and a calm sea, you can try activities such as kayaking, snorkeling, and even diving.', '13.113906308629295', '121.55198354655103', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(114, 'Ranzo Light House', 'Pinamalayan', 'Ranzo, Pinamalayan', 'Destination', 'Pinamalayan/ranzo_light_house.jpg', 'After a 20-minute hike, you\'ll arrive at Ranzo Lighthouse, which provides a panoramic view of the Ranzo Fish Sanctuary and beyond.', '13.117092108626045', '121.55266285078486', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(115, 'Wawa Mangrove Forest And Kayaking Site', 'Pinamalayan', 'Wawa, Pinamalayan', 'Destination', 'Pinamalayan/wawa_mangrove.jpg', 'Explore and paddle through the mangrove forest at this kayaking adventure site to appreciate nature\'s beauty.', '13.038914136511593', '121.48162404590963', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(116, 'Bato Creek Kayaking & White Water Rafting', 'Victoria', 'Villa Cerveza, Victoria', 'Destination', 'Victoria/bato_creek.jpg', 'Enjoy the relaxing summer atmosphere and cool waters of the Bato Creek River in Villa Cerveza, Victoria. It is an ideal summer destination for thrilling water activities such as kayaking and whitewater rafting while enjoying the peaceful scenery of lush trees along the river.', '13.100792533944295', '121.17603671193655', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(117, 'Equias Integrated Farm', 'Victoria', 'Victoria', 'Destination', 'Victoria/equias.jpg', 'Equias Integrated Farm, an accredited Learning Site for Agriculture, is a must-see farm tourism site in Victoria because it provides farm activities for both educational and recreational purposes.', '13.153093001351506', '121.28904819856676', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(118, 'Kuatro Maria\'s Agroecology Farm', 'Victoria', 'San Narciso, Victoria', 'Destination', 'Victoria/kuarto_marias.jpg', 'Kuatro Maria\'s Agroecology Farm is a well-known farm tourism destination that can be visited for both recreational and educational purposes.', '13.193019612790279', '121.31160649800569', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(119, 'Mabalbay Falls', 'Victoria', 'Villa Cerveza, Victoria', 'Destination', 'Victoria/mabalbay.jpg', 'Mabalbay Falls, a hidden gem in Villa Cerveza Vicotria, is about 40 minutes of trekking and stream crossing away. This destination is ideal for those who enjoy adventure, as getting to the waterfalls requires some skill.', '13.122058515972487', '121.19979453892454', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(120, 'VCDC Farm', 'Victoria', 'Brgy. Malamig, Leido, Victoria', 'Destination', 'Victoria/vcdc_farm.jpg', 'VCDC Farm, located in Victoria, is a Farm Tourism Site as well as an ATI Learning Site for Agriculture. This farm and educational facility is well-known for its all-natural products, which include Ginger Brew, Turmeric Brew, Ginger Turmeric Brew, Ginger Turmeric Candy, and Calamansi Concentrate.', '13.178115914321964', '121.27692833042346', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(121, 'Victoria Nature Park', 'Victoria', 'Bambanin, Victoria', 'Destination', 'Victoria/victoria_naturepark.jpg', 'Victoria Nature Park is the province\'s first Integrated Permaculture Farm, with a relaxing setting overlooking Naujan Lake. 17 hectares of land are dedicated to the production of high-quality agricultural products as well as farm tours, visits, and educational demonstrations.', '13.159069771784536', '121.25329204911571', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(122, '333 Steps', 'Naujan', 'Melgar A, Naujan', 'Destination', 'Naujan/333.jpg', 'It takes 333 steps to get to the top, where there is an altar where tourists can cast their wishes. Each step becomes more difficult, but the view at the top is breathtaking, with a panoramic view of Naujan and the sea.', '13.264475934711994', '121.34869187404206', 'Jeep = Calapan to Destination- 80-150 pesos', '', '1000', 1),
(123, 'Arangin Falls', 'Naujan', 'Arangin, Naujan', 'Destination', 'Naujan/arangin.jpg', 'Arangin Falls is a one-of-a-kind waterfall with many levels that cascade down the side of a mountain. The waterfall cascades into a small basin, which is used for picnics.', '13.224193949318177', '121.11741973258721', 'Jeep = Calapan to Destination- 80-150 pesos', '', '1000', 1),
(124, 'Buloc-Buloc Cove', 'Naujan', 'Montemayor, Naujan', 'Destination', 'Naujan/buloc_buloc.jpg', 'Buloc-buloc Cove is a 72-hectare Marine Protected Area (MPA) known as BuCoMaPA. Aside from the cove itself, a boat can take you to and into a charming and mystical cave.', '13.23660485071245', '121.40357840706096', 'Jeep = Calapan to Destination- 80-150 pesos', '', '1000', 1),
(125, 'Dao Water Lily Mini Park', 'Naujan', 'Dao, Naujan', 'Destination', 'Naujan/dao_water.jpg', 'At Dao Waterlily Mini Park in Naujan, you\'ll find ultimate bliss aboard a floating cottage. Their inventive handicrafts and souvenirs made of dried waterlilies are also on display in the park.', '13.248641743043818', '121.31639489558691', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(126, 'Karacha Falls', 'Naujan', 'Malvar, Naujan', 'Destination', 'Naujan/karacha.jpg', 'You\'ll follow off-the-beaten-path paths and off-road tracks to Karacha Falls in Malvar. When you arrive at your destination, you can already see the manifestation of nature. A swimmable stream with cottages and huts is located below. The majestic, towering waterfalls with cool cascades are further up, across the rocky path.', '13.188720505745213', '121.15051663716216', 'Jeep = Calapan to Destination- 80-150 pesos', '', '1000', 1),
(128, 'Naujan Lake', 'Naujan', 'Bayani, Naujan', 'Destination', 'Naujan/naujan_lake.jpg', 'The Ramsar Convention has designated Naujan Lake as a \"wetland of international importance,\" making it the fifth largest lake in the Philippines and the largest freshwater lake in Oriental Mindoro. The municipalities of Naujan, Victoria, Socorro, and Pola surround it. The lake is home to a diverse range of local and migratory fish and water birds.', '13.241203800155475', '121.34085083145541', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(129, 'Naujan Town Plaza', 'Naujan', 'Poblacion, Naujan', 'Destination', 'Naujan/palza.jpg', 'Liwasang Bonifacio is the town plaza in front of Naujan Municipal Hall, where the town\'s activities and events are held.', '13.330801328933381', '121.30025235900705', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(130, 'Paitan River', 'Naujan', 'Paitan, Naujan', 'Destination', 'Naujan/paitan_river.jpg', 'Paitan River is a wide and deep river with minor rapids near a Mangyan Village in Naujan. It used to be a hydroelectric power plant and faces Mt. Halcon.', '13.186677814551361', '121.07650509452601', 'Jeep = Calapan to Destination- 80-150 pesos', '', '1000', 1),
(131, 'Pungao Hot Spring / Montelago Hot Spring', 'Naujan', 'Montelago, Naujan', 'Destination', 'Naujan/pungao_hotspring.jpg', 'Brgy. Pungao Hot Spring For a long time, Montelago has been healing the locals. The volcanic hot spring is located about 800 meters from the two islets in Naujan Lake. Pungao Hot Spring is located at the foot of hills covered in igneous rock formations. Swimming and therapeutic bathing, island hopping, and bird watching are all popular activities at the attraction site. Furthermore, migratory birds can be seen from February to March.', '13.222644500810345', '121.37563895140353', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(132, 'Simbahang Bato', 'Naujan', 'Bancuro, Naujan', 'Destination', 'Naujan/simbahang_bato.jpg', 'The Bancuro Church Ruins in Naujan, also known as the Simbahang Bato, were constructed around 1680 by Augustinian missionaries eager to bring Christianity to the first settlers. Made of adobe and corals, it served as a house of prayer for devotees as well as a fortress against Moro raids. It was looted and burned on September 11, 1824, during the massive Moro raid \"Asultos de Moro.\" During WWII, the ruins of the original structure served as a refuge for the townspeople from Japanese soldiers. After centuries of decay, the locals resurrected it by constructing a \"church within a church.\" The Simbahang Bato reflects Naujeos\' fervent devotion as well as Naujan\'s timeless history.', '13.28152850512451', '121.32189002740324', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(133, 'Turtle Island', 'Naujan', 'Herrera, Naujan', 'Destination', 'Naujan/turtle_island.jpg', 'This destination in Naujan can be reached by boat and is named after the island\'s distinctive turtle shape. Turtle Island is surrounded by white sand and clear blue water, making it the ideal island getaway.', '13.215584470196294', '121.39243255027779', 'Jeep = Calapan to Destination- 80-200 pesos', '', '1000', 1),
(134, 'Long Beach', 'Puerto Galera', 'San Antonio, Puerto Galera', 'Destination', 'Puerto_Galera/long_beach.jpg', 'Long Beach in San Antonio, with a magnificent panoramic view of the sea, is ideal for those looking for a more secluded beach destination. This unspoiled beach with a long stretch of creamy white sand and clear waters offers solitude and an escape from Puerto Galera\'s busy shores.', '13.527611915215338', '120.94866330999989', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3);
INSERT INTO `destinations` (`id`, `name`, `place`, `location`, `category`, `image`, `description`, `latitude`, `longitude`, `fare`, `foods`, `price`, `brand_id`) VALUES
(135, 'Muelle Cultural Heritage Park', 'Puerto Galera', 'Poblacion, Puerto Galera', 'Destination', 'Puerto_Galera/melle_cultural.jpg', 'The Muelle Bay in Puerto Galera has been named one of the world\'s most beautiful bays by the Paris-based Les Plus Belles Baies Du Monde (The World\'s Most Beautiful Bays) Club. Puerto Galera, also known as the Heart of Asia, is a popular vacation destination due to its beautiful beaches and proximity to Manila. With its breathtaking views and amazing boardwalk, the pier area, which has been refurbished to become the Puerto Galera Muelle Bay Cultural Heritage Park, has beautiful scenery, landscape, and attractions.', '13.502802636057806', '120.95377962792261', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(136, 'Puerto Galera Windmill Farm', 'Puerto Galera', 'Baclayan, Puerto Galera', 'Destination', 'Puerto_Galera/wind_mill.jpg', 'The Puerto Galera Windmill Farm area offers a mejestic and almost surreal view of the entire town of Puerto Galera and the adjacent turquoise sea in the Verde Island Passage, with its wind turbines placed atop the mountains in Baclayan at nearly 1,000 meters above sea level.', '13.468046831231577', '120.92745932422616', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(137, 'Puerto Mangrove Conservation And Eco Tourism Area', 'Puerto Galera', 'Sigayan Tabinay, Puerto Galera', 'Destination', 'Puerto_Galera/puerto_mangrove.jpg', 'The mangrove reserve is reached via a long stretch of well-kept wooden boardwalk where one can exercise both the body and the mind. The Puerto Galera Mangrove Conservation and Ecotourism Area is a must-see if you want to spend your vacation in a quiet and peaceful setting where you can rest and enjoy nature\'s beauty.', '13.478798690388713', '120.96862472478364', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(138, 'Talipanan Falls', 'Puerto Galera', 'Aninuan, Puerto Galera', 'Destination', 'Puerto_Galera/talipanan.jpg', 'The track to Talipanan Falls winds for about 30 minutes uphill and through the forests and a number of streams from Iraya Mangyan Village to a two-tiered swimmable falls with a shallow basin.', '13.494627843209434', '120.88890506470759', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(139, 'Talipanan Mangyan Village', 'Puerto Galera', 'Aninuan, Puerto Galera', 'Destination', 'Puerto_Galera/talipanan_mangyan.jpg', 'The Iraya Mangyan village in Talipanan, Puerto Galera, is where you can see the locals\' ingenuity and immerse yourself in their culture. A variety of handicrafts and hand-made products, such as baskets, bags, and household items made of nito, rattan, and other natural materials, are on display.', '13.494344939763023', '120.88933824513576', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(140, 'Tamaraw Falls', 'Puerto Galera', 'Villaflor, Puerto Galera', 'Destination', 'Puerto_Galera/tamaraw_falls.jpg', 'This beautiful waterfall is one of the easiest to reach in Oriental Mindoro. Brgy. is located along the highway. Villaflor is a popular stopover for visitors heading to other tourist attractions in Puerto Galera.', '13.45044999291879', '120.99148683402352', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(141, 'Tukuran Falls, Puerto Galera, Oriental Mindoro', 'Puerto Galera', 'Villaflor, Puerto Galera', 'Destination', 'Puerto_Galera/tukuran_falls.jpg', 'Tukuran Falls, accessible via a carabao-drawn cart ride, provides a refreshing hidden getaway. Wading in the lagoon below or the cool cascades of the falls above the rock formation are options for visitors.', '13.433836360967264', '120.97472473587139', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(142, 'Under water Cave', 'Puerto Galera', 'San Antonio, Puerto Galera', 'Destination', 'Puerto_Galera/underwater_cave.jpg', 'The Underwater Cave in San Antonio is a popular stop on the island hopping tour in Puerto Galera. Its entrance is in a cove where the cave is partially submerged in ocean water. The water is waist-deep and shielded from the ocean waves, making it ideal for swimming and wading.', '13.516791518827901', '120.95927773217632', 'Van = Calapan to Destination- 150-180 pesos', '', '3000', 3),
(143, 'White Beach, Puerto Galera, Oriental Mindoro', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Destination', 'Puerto_Galera/white_beach.jpg', 'This most frequented and most famous beach in Oriental Mindoro is located in Brgy. San Isidro, Puerto Galera. It has fine white sand and clear blue water with a variety of water activities to try.', '13.505113375072547', '120.90127131382233', 'Van = Calapan to Destination- 150-180 pesos', '', '5000', 4),
(144, 'Tagbungan Mountain Resort', 'Baco', 'Dulangan III, Baco', 'Hotel', 'Baco/tagbungan.jpg', '', '13.30602098459795', '121.06495499672067', 'Jeep = Calapan to Destination- 50-80 pesos', '', '2000', 2),
(145, 'Imelda\'s Garden And Restaurant', 'Bansud', 'Poblacion, Bansud', 'Hotel', 'Bansud/imelda.jpg', '', '12.858502018561177', '121.46044121108527', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(146, 'JCRG Pension House', 'Bansud', 'Pag-asa, Bansud', 'Hotel', 'Bansud/jcrg.jpg', '', '12.871614284133997', '121.4506442499114', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(147, 'Madrimonte Beach Resort And Training Center', 'Bansud', 'Proper, Bansud', 'Hotel', 'Bansud/madrimonte.jpg', '', '12.86495888616462', '121.47785889307576', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(148, 'RJM Beach Resort', 'Bansud', 'Proper, Bansud', 'Hotel', 'Bansud/rjm.jpg', '', '12.86044033466781', '121.48403870224236', 'Van = Calapan to Destination- 120-150 pesos', '', '2000', 2),
(149, 'Anilao Mangrove Village Resort', 'Bongabong', 'Anilao, Bongabong', 'Hotel', 'Bongabong/anilao.jpg', '', '12.72053631838237', '121.50321492285663', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(150, 'Bongabong View Hotel & Restaurant', 'Bongabong', 'Poblacion, Bongabong', 'Hotel', 'Bongabong/view.jpg', '', '12.747070947773338', '121.4864862610978', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(151, 'Gabutero Organic Farm Resort', 'Bongabong', 'Labonan, Bongabong', 'Hotel', 'Bongabong/gabutero.jpg', '', '12.649547226412599', '121.51047603219439', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(152, 'Jopat\'s Resort', 'Bongabong', 'Poblacion, Bongabong', 'Hotel', 'Bongabong/jopat.jpg', '', '12.735363864450063', '121.50250932555082', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(153, 'Prisville Triangle Resort', 'Bongabong', 'Bagumbayan II, Bongabong', 'Hotel', 'Bongabong/prisville.jpg', '', '12.752680953708843', '121.48061382555102', 'Van = Calapan to Destination- 150-180 pesos', '', '2000', 2),
(154, 'By The Sea Hotel And Coffee Shop Inc.', 'Bulalacao', 'Kabangkalan, Poblacion, Bulalacao', 'Hotel', 'Bulalacao/bysea.jpg', '', '12.31354000369003', '121.33756356972391', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(155, 'Bulalacao Restaurant Hotel And Commercial Center', 'Bulalacao', 'Campaasan, Bulalacao', 'Hotel', 'Bulalacao/bulalacaohotel.jpg', '', '12.337646681317255', '121.32620954671953', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(156, 'EM\'z Bayview Mountain Resort', 'Bulalacao', 'Dacutan, Balatasan, Bulalacao', 'Hotel', 'Bulalacao/bayview.jpg', '', '13.405567540210633', '121.17986818927146', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(157, 'Felipa Lodge & Beach Resort', 'Bulalacao', 'Kabangkalan, Poblacion, Bulalacao', 'Hotel', 'Bulalacao/felipa.jpg', '', '12.313260895570448', '121.3388338910956', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(158, 'Festin Paradise Resort', 'Bulalacao', 'Calunacon, Milagrosa, Bulalacao', 'Hotel', 'Bulalacao/festin.jpg', '', '12.287033268410138', '121.2657695120531', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(159, 'Nicole Islands\' View Resort', 'Bulalacao', 'Milagrosa, Bulalacao', 'Hotel', 'Bulalacao/nicole.jpg', '', '12.284320155971445', '121.25524136787621', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(160, 'Real Five Hotel And Restaurant', 'Bulalacao', 'Campaasan, Bulalacao', 'Hotel', 'Bulalacao/real.jpg', '', '12.334605093983445', '121.34154326615604', 'Van = Calapan to Destination- 280-300 pesos', '', '3000', 3),
(161, 'Filipiniana Resort & Hotel', 'Calapan', 'Sto. Nino, Calapan City', 'Hotel', 'Calapan/filipiniana.jpg', '', '13.404787431506913', '121.18319450776039', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '3000', 3),
(162, 'Mahalta Resort & Convention Center', 'Calapan', 'Parang, Calapan City', 'Hotel', 'Calapan/mahalta.jpg', '', '13.416055249982263', '121.2120774633572', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '3000', 3),
(163, 'Achimie Hotel', 'Calapan', 'San Vicente Central, Calapan City', 'Hotel', 'Calapan/achimie.jpg', '', '13.411834324191195', '121.17929816603863', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '2000', 2),
(164, 'Agua\'s Hotel', 'Calapan', 'Sta. Isabel, Calapan City', 'Hotel', 'Calapan/aguas.jpg', '', '13.373130528189058', '121.17141624738512', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '2000', 2),
(165, 'Amore Inn', 'Calapan', 'Pachoca, Calapan City', 'Hotel', 'Calapan/amore.jpg', '', '13.414558780526514', '121.1703667585364', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(166, 'Anahaw Island View Resort', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/anahaw.jpg', '', '13.416722843655279', '121.16105745254482', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '2000', 2),
(167, 'Bimas Hotel', 'Calapan', 'Tawiran, Calapan City', 'Hotel', 'Calapan/bimas.jpg', '', '13.391456296014606', '121.16584681021524', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(168, 'Calapan Bay Hotel', 'Calapan', 'San Antonio, Calapan City', 'Hotel', 'Calapan/calapanbay.jpg', '', '13.423234598274732', '121.19303687158134', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(169, 'Destiny\'s Place Inn', 'Calapan', 'Lumangbayan, Calapan City', 'Hotel', 'Calapan/destiny.jpg', '', '13.402432196929086', '121.18279785439218', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(170, 'Eduardo\'s Resort', 'Calapan', 'Bayanan II, Calapan City', 'Hotel', 'Calapan/eduardos.jpg', '', '13.358377400390427', '121.16967686973315', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(171, 'Gemelli Inn', 'Calapan', 'Lalud, Calapan City', 'Hotel', 'Calapan/gemeli.jpg', '', '13.398352790325948', '121.16989374089819', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(172, 'Hiddenforest Lodge Inn', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/hiddenforest.jpg', '', '13.413207117452734', '121.1629088182545', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(173, 'JKL Family Cove', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/jkl.jpg', '', '13.410756270457226', '121.15602996973364', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(174, 'Nikita\'s Place Hotel', 'Calapan', 'Tawiran, Calapan City', 'Hotel', 'Calapan/nikitas.jpg', '', '13.391370393185467', '121.16575201021539', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(175, 'Parang Beach Resort', 'Calapan', 'Parang, Calapan City', 'Hotel', 'Calapan/parang.jpg', '', '13.414344077124438', '121.21337159487405', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(176, 'Red Line Drive Inn', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/redline.jpg', '', '13.40264130645585', '121.16424558439655', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(177, 'Sweet Care Hotel', 'Calapan', 'Lalud, Calapan City', 'Hotel', 'Calapan/sweetcare.jpg', '', '13.398412742959367', '121.17000728322758', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(178, 'Tree Of Life Business Center Hotel', 'Calapan', 'Calero, Calapan City', 'Hotel', 'Calapan/treelife.jpg', '', '13.417213754828794', '121.1853967390509', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(179, 'Vencio\'s Garden Hotel& Restaurant', 'Calapan', 'Tawiran, Calapan City', 'Hotel', 'Calapan/vencios.jpg', '', '13.397075765156885', '121.1689373120628', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(180, 'Bali Beach Resort', 'Gloria', 'Tambong, Gloria', 'Hotel', 'Gloria/bali.jpg', '', '12.969506488572053', '121.49192470672165', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(181, 'Banayad Beach Resort', 'Gloria', 'Tambong, Gloria', 'Hotel', 'Gloria/banayad.jpg', '', '12.980725793655079', '121.49104846788228', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(182, 'Hiraya Farm & Resort', 'Gloria', 'Tambong, Gloria', 'Hotel', 'Gloria/hiraya.jpg', '', '12.97457320922429', '121.49112302370546', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(183, 'Kawayanan Village: Kubotel', 'Gloria', 'Maligaya, Gloria', 'Hotel', 'Gloria/kawayanan.jpg', '', '12.970784790223991', '121.47791490511729', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(184, 'Royal Splash Beach Resort', 'Gloria', 'San Antonio, Gloria', 'Hotel', 'Gloria/royal.jpg', '', '12.945872050456671', '121.49670199856482', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(185, 'Villa Imaculada Concepcion', 'Gloria', 'Maligaya, Gloria', 'Hotel', 'Gloria/villa.jpg', '', '12.971071841397936', '121.47808367744487', 'Van = Calapan to Destination- 180-220 pesos', '', '1000', 1),
(186, 'Aaron Beach Resort', 'Mansalay', 'Cabalwa, Mansalay', 'Hotel', 'Mansalay/aaron.jpg', '', '12.488355531449539', '121.4318648180134', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(187, 'Carishiela\'s Lodging House', 'Mansalay', 'Poblacion, Mansalay', 'Hotel', 'Mansalay/carishiela.jpg', '', '12.535097263455024', '121.43892545308312', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(188, 'Footprints In The Sand Beach Resort', 'Mansalay', 'P. Del Mundo, Mansalay', 'Hotel', 'Mansalay/footprints.jpg', '', '12.532746155044537', '121.48150294161861', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(189, 'Go Beach Resort', 'Mansalay', 'Cabalwa, Mansalay', 'Hotel', 'Mansalay/gobeach.jpg', '', '12.488442916018778', '121.43125769557876', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(190, 'La Sersita Casitas & Water Spa Beach Resort', 'Mansalay', 'Don Pedro, Mansalay', 'Hotel', 'Mansalay/lasersita.jpg', '', '12.488645571579324', '121.4391251608288', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(191, 'Mahalta Glamping Resort: Mahalta Resorts And Leisure', 'Mansalay', 'Wasig, Mansalay', 'Hotel', 'Mansalay/mahalta.jpg', '', '12.554776291066808', '121.5038966965518', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(192, 'Mansalay Food House And Lodging', 'Mansalay', 'Poblacion, Mansalay', 'Hotel', 'Mansalay/mansalayfood.jpg', '', '12.520148244154935', '121.44024890486071', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(193, 'Nel Travelers Inn', 'Mansalay', 'B. Del Mundo, Mansalay', 'Hotel', 'Mansalay/neltravelers.jpg', '', '12.657422815425596', '121.44802099233038', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(194, 'Princess Ayline Bed And Breakfast', 'Mansalay', 'Poblacion, Mansalay', 'Hotel', 'Mansalay/ayline.jpg', '', '12.519261276044935', '121.43914819137063', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(195, 'RC Farm And Resort', 'Mansalay', 'Manaul, Mansalay', 'Hotel', 'Mansalay/rcfarm.jpg', '', '12.44286823635878', '121.40807145089926', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(196, 'Sidel Beach', 'Mansalay', 'Cabalwa, Mansalay', 'Hotel', 'Mansalay/sidelbeach.jpg', '', '12.460676289614696', '121.42206422812787', 'Van = Calapan to Destination- 250-280 pesos', '', '2000', 2),
(197, 'La Hacienda', 'Naujan', 'Bancuro, Naujan', 'Hotel', 'Naujan/hacienda.jpg', '', '13.316910850861664', '121.30587259657293', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(198, 'Bahay Tuklasan Dormitory', 'Naujan', 'Santiago, Naujan', 'Hotel', 'Naujan/bahay.jpg', '', '13.319873316955192', '121.30076761279057', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(199, 'Benilda Ng Bancuro', 'Naujan', 'Bancuro, Naujan', 'Hotel', 'Naujan/benilda.jpg', '', '13.279669929774084', '121.31201681279003', 'Jeep = Calapan to Destination- 80-120 pesos', '', '2000', 2),
(201, 'Darie Tambayan Hotel', 'Naujan', 'Barcenaga, Naujan', 'Hotel', 'Naujan/darie.jpg', '', '13.283073608415291', '121.24544634201833', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(202, 'El Caviteño Apartelle', 'Naujan', 'Estrella, Naujan', 'Hotel', 'Naujan/caviteno.jpg', '', '13.323465911862467', '121.31340116675104', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(203, 'Emerald Isle', 'Naujan', 'Estrella, Naujan', 'Hotel', 'Naujan/emerald.jpg', '', '13.323382391330856', '121.31348699744396', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(205, 'Hafa Adai', 'Naujan', 'Estrella, Naujan', 'Hotel', 'Naujan/hafa.jpg', '', '13.33177389392526', '121.31018754772529', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(206, 'Travellers\' Inn', 'Naujan', 'Barcenaga, Naujan', 'Hotel', 'Naujan/travellers.jpg', '', '13.301205195655415', '121.24545149670533', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(207, 'Air Vacation House And Beach Resort', 'Pinamalayan', 'Pili, Pinamalayan', 'Hotel', 'Pinamalayan/vacation.jpg', '', '13.070150408754172', '121.52658348580749', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(208, 'Aplaya By Positadi', 'Pinamalayan', 'Brgy. Banilad, Pinamalayan', 'Hotel', 'Pinamalayan/positadi.jpg', '', '13.081978750737184', '121.54470959744147', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(209, 'Blooming Rainbow Inn', 'Pinamalayan', 'Madrid Blvd., Zone 2, Pinamalayan', 'Hotel', 'Pinamalayan/blooming.jpg', '', '13.034674281272252', '121.48678935189743', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(210, 'Casa Magna', 'Pinamalayan', 'Marayos, Pinamalayan', 'Hotel', 'Pinamalayan/casa.jpg', '', '13.007739515483179', '121.36507684501551', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(211, 'El Dionisio Beach Resort', 'Pinamalayan', 'Banilad, Pinamalayan', 'Hotel', 'Pinamalayan/dionisio.jpg', '', '13.081592246968517', '121.54643256860487', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(212, 'Ilocandia Beach Resort', 'Pinamalayan', 'Guinhawa, Pinamalayan', 'Hotel', 'Pinamalayan/ilocandia.jpg', '', '13.061447957241795', '121.5124737955849', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(213, 'Jamilla\'s Pension House', 'Pinamalayan', 'Madrid Blvd., Zone 2, Pinamalayan', 'Hotel', 'Pinamalayan/jamilla.jpg', '', '13.033514062820094', '121.48748672627747', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(214, 'Magdalena Beach Resort', 'Pinamalayan', 'Pili, Pinamalayan', 'Hotel', 'Pinamalayan/magdalena.jpg', '', '13.067979078276963', '121.52180027863919', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(215, 'Marvelous M Hotel & Restobar', 'Pinamalayan', 'Zone 2, Pinamalayan', 'Hotel', 'Pinamalayan/marvelous.jpg', '', '13.037017384498236', '121.48946748395078', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(216, 'Seacliff Suites Hotel And Resort', 'Pinamalayan', 'Zone 3, Pinamalayan', 'Hotel', 'Pinamalayan/seacliffs.jpg', '', '13.036258761775048', '121.48356788209465', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(217, 'Sunrise Beach Resort', 'Pinamalayan', 'Pili, Pinamalayan', 'Hotel', 'Pinamalayan/sunrise.jpg', '', '13.06400810856607', '121.51548112176522', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(218, 'The Sanctuary By Positadi', 'Pinamalayan', 'Banilad, Pinamalayan', 'Hotel', 'Pinamalayan/sanctuary.jpg', '', '13.076840165330447', '121.54286049317633', 'Van = Calapan to Destination- 150-200 pesos', '', '2000', 2),
(219, 'Blue Star Beach Resort', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/blue.jpg', '', '13.14363372072159', '121.44715595325908', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(220, 'Coco Beach', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/coco.jpg', '', '13.13676532864472', '121.45688591845203', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(221, 'Illeana Beach Resort', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/illeana.jpg', '', '13.137804494800294', '121.45593131627022', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(222, 'Lovapalooza Beach Resort', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/lovapalooza.jpg', '', '13.143706697758299', '121.44708081157327', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(223, 'Luce Del Sole Beach Resort', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/luce.jpg', '', '13.13763732639887', '121.4543005332957', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(224, 'Oloroso Beach Resort', 'Pola', 'Batuhan, Pola', 'Hotel', 'Pola/oloroso.jpg', '', '13.13747015788362', '121.45601714695307', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(225, 'Agbing Beach Resort', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/agbing.jpg', '', '13.507677012903548', '120.90571568559356', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(226, 'Campbells Beach Resort', 'Puerto Galera', 'Big Lalaguna, Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/camp.jpg', '', '13.525334543802266', '120.96727368895382', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(227, 'BADLADZ Beach & Dive Resort', 'Puerto Galera', 'Tabinay, Puerto Galera', 'Hotel', 'Puerto_Galera/badladz.jpg', '', '13.489326196163962', '120.96017088811915', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(228, 'D\' Mountain Beach Resort', 'Puerto Galera', 'Talipanan, Puerto Galera', 'Hotel', 'Puerto_Galera/dmountain.jpg', '', '13.499026369161438', '120.89011981073278', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(229, 'Edgewater Dive And Spa Resort Inc.', 'Puerto Galera', 'Sitio Kabilang Gulod, Puerto Galera', 'Hotel', 'Puerto_Galera/edge.jpg', '', '13.513913971962143', '120.97140416840384', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(230, 'Felina Guest House', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/felina.jpg', '', '13.504188689328329', '120.9038408070367', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(231, 'Gallerian Rosie\'s Inn & Bar', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/gallerian.jpg', '', '13.503878621930387', '120.90748514437476', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(232, 'Hai Wu Jian Inc.', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/haiwujian.jpg', '', '13.519873971090815', '120.97388204987556', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(233, 'Ilaya Island Suites', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/ilaya.jpg', '', '13.502958412195653', '120.95424395424969', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(234, 'J And J Guest House', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/jandj.jpg', '', '13.505929697616246', '120.90657178189743', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(235, 'La Laguna Beach Club And Dive Center', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/lalagunabeach.jpg', '', '13.52488996726761', '120.96884253587254', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(236, 'Magsino\'s Inn', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/magsino.jpg', '', '13.506369443803512', '120.90780631073282', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 0),
(237, 'Nagura Beach Resort', 'Puerto Galera', 'balatero, Puerto Galera', 'Hotel', 'Puerto_Galera/nagura.jpg', '', '13.507880431613472', '120.93083740703679', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(238, 'Ocean Dream Lodge', 'Puerto Galera', 'Puerto Galera', 'Hotel', 'Puerto_Galera/oceandream.jpg', '', '13.521729619483573', '120.97882387820152', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(239, 'Paddy\'s Bar Backpackers', 'Puerto Galera', 'Sinandigan, Puerto Galera', 'Hotel', 'Puerto_Galera/paddys.jpg', '', '13.518435869584419', '120.98360445675826', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(240, 'Queen Of Isle', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/queen.jpg', '', '13.505205391437274', '120.90318838310658', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(241, 'Red Coral', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/coral.jpg', '', '13.520847172263972', '120.97547731194223', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(242, 'Sabang Oasis/Sabang Haven Resort', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/sabang.jpg', '', '13.52015748394854', '120.97502336961303', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(243, 'Tamaraw Beach Resort', 'Puerto Galera', 'Aninuan, Puerto Galera', 'Hotel', 'Puerto_Galera/tamarawresort.jpg', '', '13.50298460366011', '120.89937699660048', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(244, 'Utopia Resort & Spa', 'Puerto Galera', 'Palangan, Puerto Galera', 'Hotel', 'Puerto_Galera/utopia.jpg', '', '13.503724293251677', '120.96270629844824', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(245, 'Victoria\'s Bed And Breakfast', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/victorias.jpg', '', '13.50441116690112', '120.9070585561188', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(246, 'White Beach Guest House', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Hotel', 'Puerto_Galera/whiteguest.jpg', '', '13.50447439901727', '120.90466275121393', 'Van = Calapan to Destination- 150-200 pesos', '', '3000', 3),
(247, 'Adine Hotel', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/adine.jpg', '', '12.593525429843263', '121.53003252967933', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(248, 'Conthea Inn And Restaurant', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/conthea.jpg', '', '13.405567540210633', '121.17986818927146', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(249, 'JMF Pensionne Inn', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/jmf.jpg', '', '12.593648146281156', '121.52888815071952', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(250, 'Kamayan Penthouse', 'Roxas', 'San Jose, Roxas', 'Hotel', 'Roxas/kamayan.jpg', '', '12.599536941536856', '121.53740099843618', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(251, 'La Primera Grande Beach Resort', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/primera.jpg', '', '12.597859931404102', '121.53380916960086', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(252, 'Maur Hotel', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/maur.jpg', '', '12.593799575982006', '121.52843992727148', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(253, 'RL Ganan Hotel', 'Roxas', 'Bagumbayan, Roxas', 'Hotel', 'Roxas/rl.jpg', '', '12.59136056563903', '121.51882049658839', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(254, 'Serge Kafe Apartelle', 'Roxas', 'Bagumbayan, Roxas', 'Hotel', 'Roxas/serge.jpg', '', '12.590402208045354', '121.51716491008234', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(255, 'Starcook Inn And Restaurant', 'Roxas', 'Bagumbayan, Roxas', 'Hotel', 'Roxas/starcook.jpg', '', '12.586976765803888', '121.51868712727133', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(256, 'Tulip Residence Inn', 'Roxas', 'Dangay, Roxas', 'Hotel', 'Roxas/tulip.jpg', '', '12.599275380916398', '121.5252454845583', 'Van = Calapan to Destination- 200-280 pesos', '', '3000', 3),
(257, 'Amor Beach Resort', 'San Teodoro', 'Tacligan, San Teodoro', 'Hotel', 'San_Teodoro/amor.jpg', '', '13.404785258118267', '121.05889645426998', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(258, ' Captain Locker Accomodation Reservation Services', 'San Teodoro', 'Ilag, San Teodoro', 'Hotel', 'San_Teodoro/captain.jpg', '', '13.451878549589262', '120.9774780812583', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(259, 'Mama\'s Eco-Farm', 'San Teodoro', 'Bigaan, San Teodoro', 'Hotel', 'San_Teodoro/mamas.jpg', '', '13.413314850334517', '121.00062131194083', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(260, 'Rainbow Beach Resort', 'San Teodoro', 'Tacligan, San Teodoro', 'Hotel', 'San_Teodoro/rainbow.jpg', '', '13.405386784513473', '121.05739175426991', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(261, 'Tropicamp Beach Resort / Lush Green Campsite', 'San Teodoro', 'Tacligan, San Teodoro', 'Hotel', 'San_Teodoro/lushcamp.jpg', '', '13.405191688028872', '121.05533939601796', 'Jeep = Calapan to Destination- 80-100 pesos', '', '2000', 2),
(262, 'Casa Del Rio', 'Socorro', 'Fortuna, Socorro', 'Hotel', 'Socorro/casa.jpg', '', '13.029789758573267', '121.32968366960633', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(263, 'City Of Hearts', 'Socorro', 'Fortuna, Socorro', 'Hotel', 'Socorro/cityhearts.jpg', '', '13.037762197539667', '121.27131229659426', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(264, 'Hotel De Anselmo', 'Socorro', 'Zone 2, Socorro', 'Hotel', 'Socorro/anselmo.jpg', '', '13.056390568925895', '121.41023374077137', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(265, 'Kaffe De Oro Hotel', 'Socorro', 'Zone 2, Socorro', 'Hotel', 'Socorro/kaffeoro.jpg', '', '13.055908620818656', '121.40986418310065', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(266, 'RGL Condotel', 'Socorro', 'Catiningan, Socorro', 'Hotel', 'Socorro/condotel.jpg', '', '13.037802993132132', '121.47955402162486', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(267, '88 Hotel And Events Center', 'Victoria', 'Poblacion 3, Victoria', 'Hotel', 'Victoria/hotel.jpg', '', '13.171165609257864', '121.27894518322553', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(268, 'Barber\'s Resort', 'Victoria', 'Babangonan, Victoria', 'Hotel', 'Victoria/barbers.jpg', '', '13.196398259732467', '121.26956830678168', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(270, 'Matala Resort And Catering Services', 'Victoria', 'Poblacion 1, Victoria', 'Hotel', 'Victoria/matala.jpg', '', '13.180041521127096', '121.27995422299954', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(271, 'Ritz Diamond Hotel And Restaurant', 'Victoria', 'Poblacion 1, Victoria', 'Hotel', 'Victoria/ritz.jpg', '', '13.172689481888426', '121.2778287255547', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(272, 'Villa Bautista Resort And Hotel', 'Victoria', 'Poblacion 2, Victoria', 'Hotel', 'Victoria/villa.jpg', '', '13.183721134612423', '121.28240389671954', 'Van = Calapan to Destination- 100-150 pesos', '', '2000', 2),
(273, 'MDME. Kap\'s Garinde Bar', 'Baco', 'Barangay Alag, Baco', 'Restaurant', 'Baco/mdme_kaps_bar.jpg', '', '13.367678077471275', '121.0837796341223', 'Jeep = Calapan to Destination- 50-80 pesos', 'Price = 50 pesos - 350 pesos', '2000', 2),
(274, 'Aquacer Restaurant', 'Bansud', 'Poblacion, Bansud', 'Restaurant', 'Bansud/aquacer.jpg', '', '12.858916508172896', '121.45830985511236', 'Van = Calapan to Destination- 120-150 pesos', 'Price = 50 pesos - 250 pesos', '2000', 2),
(275, 'Bigboss Restobar', 'Bansud', 'Poblacion, Bansud', 'Restaurant', 'Bansud/bigboss.jpg', '', '12.856619250218198', '121.46082744915819', 'Van = Calapan to Destination- 120-150 pesos', 'Price = 50 pesos - 350 pesos', '2000', 2),
(276, 'BLK. 23 Resto Bar', 'Bansud', 'Poblacion, Bansud', 'Restaurant', 'Bansud/blk. 23.jpg', '', '12.861556257168134', '121.4638744384', 'Van = Calapan to Destination- 120-150 pesos', 'Price = 50 pesos - 350 pesos', '2000', 2),
(277, 'Eksklusibo Grill & Restaurant', 'Bansud', 'Poblacion, Bansud', 'Restaurant', 'Bansud/eksklusibo.jpg', '', '12.864304805474159', '121.45500572627566', 'Van = Calapan to Destination- 120-150 pesos', 'Price = 50 pesos - 350 pesos', '2000', 2),
(278, 'Green Thumb Restobar', 'Bansud', 'Pag-asa, Bansud', 'Restaurant', 'Bansud/green_thumb.jpg', '', '12.873957142546594', '121.44918512830263', 'Van = Calapan to Destination- 120-150 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(279, 'Bongabong View Hotel & Restaurant', 'Bongabong', 'Poblacion, Bongabong', 'Restaurant', 'Bongabong/bongabong_view.jpg', '', '12.747092020383919', '121.48642188959353', 'Van = Calapan to Destination- 150-180 pesos', 'Price = 50 pesos - 350 pesos', '2000', 2),
(280, 'Japz Grill And Bistro', 'Bongabong', 'Bagong Bayan I, Bongabong', 'Restaurant', 'Bongabong/japz_grill.jpg', '', '12.746840874471774', '121.48556358276485', 'Van = Calapan to Destination- 150-180 pesos', 'Price = 70 pesos - 350 pesos', '2000', 2),
(281, 'Juris Restaurant', 'Bongabong', 'Bagong Bayan I, Bongabong', 'Restaurant', 'Bongabong/juris_restaurant.jpg', '', '12.749017392206795', '121.48358947630497', 'Van = Calapan to Destination- 150-180 pesos', 'Price = 60 pesos - 350 pesos', '2000', 2),
(282, 'By The Sea Hotel And Coffee Shop Inc.', 'Bulalacao', 'Kabangkalan, Poblacion, Bulalacao', 'Restaurant', 'Bulalacao/by_sea.jpg', '', '12.31363434186364', '121.33756356972391', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 70 pesos - 350 pesos', '3000', 3),
(283, 'Boochoks Milktea And Foodhaus', 'Bulalacao', 'Campaasan, Bulalacao', 'Restaurant', 'Bulalacao/boochoks.jpg', '', '12.337162088434656', '121.32652373849793', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 350 pesos', '3000', 3),
(284, 'Dimpol\'s Enterprises', 'Bulalacao', 'Cawakat, Campasaan, Bulalacao', 'Restaurant', 'Bulalacao/dimpols.jpg', '', '12.339209168086002', '121.32344280980973', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 350 pesos', '3000', 3),
(285, 'Kusina Ni Nay Cion', 'Bulalacao', 'Kabangkalan, Poblacion, Bulalacao', 'Restaurant', 'Bulalacao/kusina_nay.jpg', '', '12.328271979093612', '121.34261229669782', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 70 pesos - 350 pesos', '3000', 3),
(286, 'Paigao Restaurant', 'Bulalacao', 'Campaasan, Bulalacao', 'Restaurant', 'Bulalacao/paigao.jpg', '', '12.341233371118314', '121.33268598907412', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 250 pesos', '3000', 3),
(287, 'Panlasang Babalik -Balikan (PBB) Restaurant', 'Bulalacao', 'Campaasan, Bulalacao', 'Restaurant', 'Bulalacao/pbb.jpg', '', '12.340807163917333', '121.33601056459368', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 300 pesos', '3000', 3),
(288, 'Samitea Milktea Shop', 'Bulalacao', 'Campaasan, Bulalacao', 'Restaurant', 'Bulalacao/samitea.jpg', '', '12.335519831847067', '121.33048092580505', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 70 pesos - 150 pesos', '3000', 3),
(289, 'Santiago Food House', 'Bulalacao', 'San Roque, Bulalacao', 'Restaurant', 'Bulalacao/santiago.jpg', '', '12.38814744544557', '121.40627771087082', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 300 pesos', '3000', 3),
(290, 'Southdrive Beach Resort Café Francesca', 'Bulalacao', 'Maujao, Bulalacao', 'Restaurant', 'Bulalacao/southdrive.jpg', '', '12.310606522440077', '121.33683834280191', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 100 pesos - 350 pesos', '3000', 3),
(291, 'Soydee Restaurant', 'Bulalacao', 'San Roque, Bulalacao', 'Restaurant', 'Bulalacao/soydee.jpg', '', '12.388051854089039', '121.40619714967907', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 250 pesos', '3000', 3),
(292, 'Two M Two A', 'Bulalacao', 'Balatasan, Bulalacao', 'Restaurant', 'Bulalacao/twoMtwo.jpg', '', '12.31131403072173', '121.37277453693365', 'Van = Calapan to Destination- 280-300 pesos', 'Price = 50 pesos - 200 pesos', '3000', 3),
(293, 'Arsenia\'s Hapag Kainan Sa Kabukiran', 'Calapan', 'Biga, Calapan City', 'Restaurant', 'Calapan/arsenias.jpg', '', '13.332885706219578', '121.17232938137936', 'Jeep = Calapan to Destination - 50-80 pesos', 'Price = 70 pesos - 400 pesos', '1000', 1),
(294, 'Bolus Kitchenette', 'Calapan', 'Lumangbayan, Calapan City', 'Restaurant', 'Calapan/bolus.jpg', '', '13.405567540210633', '121.17986818927146', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 199 pesos - 399 pesos', '1000', 1),
(295, 'Café Del Jardin', 'Calapan', 'Tawiran, Calapan City', 'Restaurant', 'Calapan/porh_cafe.jpg', '', '13.391358384681213', '121.16594939744483', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 100 pesos - 250 pesos', '1000', 1),
(296, 'Daisuki Na Aji', 'Calapan', 'Sto. Nino, Calapan City', 'Restaurant', 'Calapan/daisuki.jpg', '', '13.40468695921225', '121.1835785282285', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 70 pesos - 200 pesos', '1000', 1),
(297, 'Grillo Pizzeria Ristorante', 'Calapan', 'Lumangbayan, Calapan City', 'Restaurant', 'Calapan/grillo_pizzeria.jpg', '', '13.402729383010849', '121.18162908507502', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 100 pesos - 300 pesos', '1000', 1),
(298, 'Halcon\'s Bar & Resto', 'Calapan', 'Lumangbayan, Calapan City', 'Restaurant', 'Calapan/halcons_bar.jpg', '', '13.404304721988916', '121.18342764089834', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 100 pesos - 500 pesos', '1000', 1),
(299, 'Ineng\'s Special BBQ', 'Calapan', 'Camilmil, Calapan City', 'Restaurant', 'Calapan/inengs_special_bbq.jpg', '', '13.43770383393344', '121.15820539050158', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 70 pesos - 300 pesos', '1000', 1),
(300, 'Jemarru Dine & Inn', 'Calapan', 'Sto. Nino, Calapan City', 'Restaurant', 'Calapan/auntie_lola.jpg', '', '13.405567540210633', '121.17986818927146', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 70 pesos - 300 pesos', '1000', 1),
(301, 'Kuya Raffy And Ate Paz Food Express', 'Calapan', 'Camilmil, Calapan City', 'Restaurant', 'Calapan/kuya_raffy.jpg', '', '13.405567540210633', '121.17986818927146', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 20 pesos - 150 pesos', '1000', 1),
(302, 'Mabuhay Panciteria', 'Calapan', '85 Ramirez, San Vicente Central, Calapan City', 'Restaurant', 'Calapan/mabuhay.jpg', '', '13.411713739533184', '121.17882010460372', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 100 pesos - 250 pesos', '1000', 1),
(303, 'Pards Litsong Manok', 'Calapan', 'Bayanan II, Calapan City', 'Restaurant', 'Calapan/pards.jpg', '', '13.405567540210633', '121.17986818927146', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 30 pesos - 300 pesos', '1000', 1),
(304, 'Quisha\'s Kitchenette', 'Calapan', 'Lumangbayan, Calapan City', 'Restaurant', 'Calapan/quisha_kitchenette.jpg', '', '13.415803634537273', '121.17861846108855', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(305, 'Tagpuan Bistro', 'Calapan', 'Sta. Maria Village, Calapan City', 'Restaurant', 'Calapan/tagpuan_bistro.jpg', '', '13.409166799588919', '121.17512762186185', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 60 pesos - 200 pesos', '1000', 1),
(306, 'Uncle Jov\'s Restaurant', 'Calapan', 'Lumangbayan, Calapan City', 'Restaurant', 'Calapan/uncle_jovs.jpg', '', '13.40344649323558', '121.1842743262816', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 70 pesos - 300 pesos', '1000', 1),
(307, 'Wil\'s Diner', 'Calapan', '2F CM Corporate Center Gov. Infantado St., Sta. Maria Village, Calapan City', 'Restaurant', 'Calapan/wils_diner.jpg', '', '13.408237527298557', '121.17586119888263', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 100 pesos - 300 pesos', '1000', 1),
(308, 'XY Café', 'Calapan', 'Sta. Maria Village, Calapan City', 'Restaurant', 'Calapan/xy_cafe.jpg', '', '13.405567540210633', '121.17986818927146', 'Tricycle = Calapan to Destination - 20-50 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(309, '18 Resto And Catering Services', 'Gloria', 'Juan Luna St., Poblacion, Gloria', 'Restaurant', 'Gloria/18resto.jpg', '', '13.03682502292122', '121.48864155630295', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 250 pesos', '2000', 2),
(311, 'I Love Tea Tea', 'Gloria', 'Maligaya, Gloria', 'Restaurant', 'Gloria/ilovetea.jpg', '', '12.971087257631803', '121.47820489372978', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(312, 'Maestro Kusinero Restaurant & Catering Services', 'Gloria', 'Nautical Highway, Maligaya, Gloria', 'Restaurant', 'Gloria/maestro.jpg', '', '12.932847951775004', '121.4702416506384', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 300 pesos', '2000', 2),
(313, 'Majestea', 'Gloria', 'Maligaya, Gloria', 'Restaurant', 'Gloria/majestea.jpg', '', '12.971087257631803', '121.47820489372978', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(315, 'Mangyangyupsal', 'Gloria', 'Maligaya, Gloria', 'Restaurant', 'Gloria/mangyangyupsal.jpg', '', '12.970961796723683', '121.47811906304693', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 250 pesos', '2000', 2),
(316, 'M\'s Eatery', 'Gloria', 'Maligaya, Gloria', 'Restaurant', 'Gloria/eatery.jpg', '', '12.971087257631803', '121.47820489372978', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(317, 'Vin Che Segen', 'Gloria', 'Tambong, Gloria', 'Restaurant', 'Gloria/vinchesegen.jpg', '', '12.965148997474957', '121.49004953097892', 'Van = Calapan to Destination- 180-220 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(318, 'Mansalay Food House And Lodging', 'Mansalay', 'Poblacion, Mansalay', 'Restaurant', 'Mansalay/foodhouse.jpg', '', '12.520200612661442', '121.44030254904379', 'Van = Calapan to Destination- 250-280 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(319, 'Mr. Frag Restaurant', 'Mansalay', 'B. Del Mundo, Mansalay', 'Restaurant', 'Mansalay/mr.frag.jpg', '', '12.53263770106222', '121.46272461898099', 'Van = Calapan to Destination- 250-280 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(320, 'Nature\'s Gift Garden Restaurant', 'Mansalay', 'B. Del Mundo, Mansalay', 'Restaurant', 'Mansalay/natures.jpg', '', '12.530233943393958', '121.46325751886337', 'Van = Calapan to Destination- 250-280 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(321, 'Princess Ayline', 'Mansalay', 'Poblacion, Mansalay', 'Restaurant', 'Mansalay/avline.jpg', '', '12.519303170995018', '121.4395773448353', 'Van = Calapan to Destination- 250-280 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(322, 'Ate\'s Restaurant', 'Naujan', 'Poblacion 1, Naujan', 'Restaurant', 'Naujan/ates.jpg', '', '13.329489718714381', '121.30098556651957', 'Jeep = Calapan to Destination- 80-120 pesos', 'Price = 70 pesos - 150 pesos', '2000', 2),
(323, 'Abing\'s Grill And Restaurant', 'Pinamalayan', 'Zone 2, Pinamalayan', 'Restaurant', 'Pinamalayan/abings.jpg', '', '13.034247089698681', '121.48520110326395', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '2000', 2),
(324, 'Box Tea Shop', 'Pinamalayan', 'Zone 2, Pinamalayan', 'Restaurant', 'Pinamalayan/boxtea.jpg', '', '13.037059036904703', '121.48037638288181', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(325, 'Chowking Pinamalayan', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/chowking.jpg', '', '13.038977690811722', '121.48028926860434', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 50 pesos - 500 pesos', '1000', 1),
(326, 'D\'heleras Food Hub', 'Pinamalayan', 'Cacawan, Pinamalayan', 'Restaurant', 'Pinamalayan/dheleras.jpg', '', '13.039760521362512', '121.48719859744105', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(327, 'He Brews Café', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/hebrews.jpg', '', '13.03909860840693', '121.47986541842785', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(328, 'I Love K\' Tea Tea', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/ilovetea.jpg', '', '13.03918575268072', '121.48018806860436', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(329, 'Jollibee Foods Corporation', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/jollibee.jpg', '', '13.039510321510644', '121.48015511278753', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 30 pesos - 550 pesos', '1000', 1),
(330, 'Kazoku Japanese Restaurant', 'Pinamalayan', 'Zone 1, Pinamalayan', 'Restaurant', 'Pinamalayan/kazoku.jpg', '', '13.031899969858314', '121.48965718283935', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(331, 'Meat-Up Korean Bbq Buffet Grill And Restaurant', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/meat-up.jpg', '', '13.038427583365488', '121.48294901278746', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 100 pesos - 300 pesos', '1000', 1),
(332, 'Nanay Goya\'s Garden Restaurant', 'Pinamalayan', 'Remerco Blvd., Zone 2, Pinamalayan', 'Restaurant', 'Pinamalayan/goyas.jpg', '', '13.031693931190555', '121.48784633976756', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(333, 'Pizzeria Ginettas', 'Pinamalayan', 'Zone 1, Pinamalayan', 'Restaurant', 'Pinamalayan/pizzeria.jpg', '', '13.03554931329228', '121.48132336833436', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '1000', 1),
(334, 'R.G. Jamilla\'s Restaurant', 'Pinamalayan', 'Zone 2, Pinamalayan', 'Restaurant', 'Pinamalayan/r.g.jamillas.jpg', '', '13.033536090815284', '121.48753001093111', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(335, 'Shooter\'s Grill Hauz Café Bistro', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/shooters.jpg', '', '13.034340619165986', '121.48281218491525', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '1000', 1),
(336, 'The House Of Unlimited', 'Pinamalayan', 'Mafrancisco, Pinamalayan', 'Restaurant', 'Pinamalayan/unlimited.jpg', '', '13.03359768234987', '121.48743308209438', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 199 pesos - 300 pesos', '1000', 1),
(337, 'Xeon Winghouse', 'Pinamalayan', 'Zone 3, Pinamalayan', 'Restaurant', 'Pinamalayan/xeon.jpg', '', '13.034097739270084', '121.4870594895197', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 100 pesos - 250 pesos', '1000', 1),
(338, 'Enriquitos', 'Pola', 'Zone 2, Pola', 'Restaurant', 'Pola/enriquitos.jpg', '', '13.143890925090952', '121.44110889744215', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 70 pesos - 200 pesos', '1000', 1),
(339, 'Jamies Pasalubong Atpb.', 'Pola', 'Batuhan, Pola', 'Restaurant', 'Pola/jamies.jpg', '', '13.140789009212552', '121.43823829744208', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(341, 'Mimay And Pat Bar', 'Pola', 'Batuhan, Pola', 'Restaurant', 'Pola/mimay.jpg', '', '13.405567540210633', '121.17986818927146', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(342, 'Aplayang Munti', 'Puerto Galera', 'Dulangan, Puerto Galera', 'Restaurant', 'Puerto_Galera/aplayang.jpg', '', '13.477007791789317', '120.97173053771988', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(343, 'Bella Napoli', 'Puerto Galera', 'Sabang, Puerto Galera', 'Restaurant', 'Puerto_Galera/bella.jpg', '', '13.520728988732955', '120.97511082202124', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(344, 'Cafe Marco', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Restaurant', 'Puerto_Galera/cafe_marco.jpg', '', '13.507617071483073', '120.90560950518876', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(345, 'Dongkim Restaurant', 'Puerto Galera', 'Sabang, Puerto Galera', 'Restaurant', 'Puerto_Galera/dongkim.jpg', '', '13.510336187895865', '120.9555711061706', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(346, 'Eddie\'s Place', 'Puerto Galera', 'Puerto Galera', 'Restaurant', 'Puerto_Galera/eddies.jpg', '', '13.52062676293538', '120.97687250703689', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(347, 'Fap Exzel Hotel And Ktv Bar', 'Puerto Galera', 'Sabang, Puerto Galera', 'Restaurant', 'Puerto_Galera/exzel.jpg', '', '13.52109620894787', '120.9710331493661', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(349, 'GOODELIGHTS', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Restaurant', 'Puerto_Galera/goodelights.jpg', '', '13.505058562865294', '120.90205561194202', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3);
INSERT INTO `destinations` (`id`, `name`, `place`, `location`, `category`, `image`, `description`, `latitude`, `longitude`, `fare`, `foods`, `price`, `brand_id`) VALUES
(350, 'Le Dan Fastfood', 'Puerto Galera', 'Sabang, Puerto Galera', 'Restaurant', 'Puerto_Galera/fastfood.jpg', '', '13.405567540210633', '121.17986818927146', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 200 pesos', '3000', 3),
(351, 'Palacio De San Isidro Bar And Restaurant', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Restaurant', 'Puerto_Galera/palacio.jpg', '', '13.502700877854963', '120.90489234936597', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 300 pesos', '3000', 3),
(352, 'Queen Of Isle Restaurant', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Restaurant', 'Puerto_Galera/queen.jpg', '', '13.50516811220614', '120.90353788189749', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 200 pesos', '3000', 3),
(353, 'Resto Veranda', 'Puerto Galera', 'White Beach, Puerto Galera', 'Restaurant', 'Puerto_Galera/veranda.jpg', '', '13.505083073147004', '120.90295746285959', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '3000', 0),
(354, 'Seaside Grill And Restobar', 'Puerto Galera', 'San Isidro (White Beach), Puerto Galera', 'Restaurant', 'Puerto_Galera/seaside.jpg', '', '13.506383197216866', '120.90417889660053', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '3000', 3),
(355, 'Tamarind Restaurant', 'Puerto Galera', 'Sabang, Puerto Galera', 'Restaurant', 'Puerto_Galera/tamarind.jpg', '', '13.52035071524228', '120.97646620703696', 'Van = Calapan to Destination- 150-200 pesos', 'Price = 70 pesos - 250 pesos', '3000', 3),
(356, 'Red Tomato Restaurant', 'Roxas', 'Paclasan, Roxas', 'Restaurant', 'Roxas/tomato.jpg', '', '12.587994139063277', '121.51709791192985', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(357, 'Afteanoon Milktea', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/afteanoon.jpg', '', '12.590348582976494', '121.52091681008233', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(358, 'Biyaya\'s Tea House (I<3 Milktea Roxas Branch)', 'Roxas', 'Administration St., Bagumbayan, Roxas', 'Restaurant', 'Roxas/biyayas.jpg', '', '12.588150264605934', '121.51843114076519', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(359, 'Casa Gracia\'s Garden Restaurant', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/casa.jpg', '', '12.586636582126504', '121.52380356775302', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(360, 'De Calidad Restaurant', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/decalidad.jpg', '', '12.590421878879868', '121.52095972542384', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(361, 'Jollibee (Island Joy Food Corp.)', 'Roxas', 'Magsaysay St., Bagumbayan, Roxas', 'Restaurant', 'Roxas/jollibee.jpg', '', '12.589052350961598', '121.51867838309454', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 30 pesos - 550 pesos', '2000', 2),
(363, 'Lots\'a Pizza Roxas Branch', 'Roxas', 'Administration St., Bagumbayan, Roxas', 'Restaurant', 'Roxas/pizza.jpg', '', '12.588774322130083', '121.51791855425914', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 80 pesos - 300 pesos', '2000', 2),
(364, 'Naks Chicken Inasal And Lutong Bahay Express', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/naks.jpg', '', '12.59040093719532', '121.52095972542384', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 300 pesos', '2000', 2),
(365, 'Ohmygee Café', 'Roxas', 'Little Tanauan, Roxas', 'Restaurant', 'Roxas/ohmygee.jpg', '', '12.623115242256928', '121.46186339658892', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(366, 'Rem Fushion Korean Restaurant (Asian Fusion Restaurant)', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/fushion.jpg', '', '12.59040093719532', '121.52100264076537', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(367, 'Sabroso Restobar', 'Roxas', 'Dangay, Roxas', 'Restaurant', 'Roxas/sabroso.jpg', '', '12.595380338953678', '121.5270802986238', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(368, 'Starcook Inn And Restaurant', 'Roxas', 'Bagumbayan, Roxas', 'Restaurant', 'Roxas/starcook.jpg', '', '12.586861584971114', '121.51864421192984', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(369, 'Tita Cor\'s Restaurant', 'Roxas', 'Odiong, Roxas', 'Restaurant', 'Roxas/cors.jpg', '', '12.58865320947418', '121.51896838309446', 'Van = Calapan to Destination- 200-280 pesos', 'Price = 50 pesos - 200 pesos', '2000', 2),
(370, 'Café Bernita', 'San Teodoro', 'Poblacion, San Teodoro', 'Restaurant', 'San_Teodoro/cafe_bernita.jpg', '', '13.438491743033797', '121.01856145427037', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(371, 'Choy Bistro', 'San Teodoro', 'Lumangbayan, San Teodoro', 'Restaurant', 'San_Teodoro/choy_bistro.jpg', '', '13.418278739624368', '121.03361563523325', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(372, 'D\' Everlasting Diner & Restaurant', 'San Teodoro', 'Poblacion, San Teodoro', 'Restaurant', 'San_Teodoro/d_everlasting.jpg', '', '13.436277473983488', '121.02004799659964', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(373, 'Felipa\'s Restaurant', 'San Teodoro', 'Lumangbayan, San Teodoro', 'Restaurant', 'San_Teodoro/filipas.jpg', '', '13.418268303665164', '121.03365855057477', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(374, 'Kuya Kaloy\'s Batangas Special Goto And Lomi House', 'San Teodoro', 'Calangatan, San Teodoro', 'Restaurant', 'San_Teodoro/batangas_lomi.jpg', '', '13.38140771720461', '121.05351113060233', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(375, 'Restorante Gracia', 'San Teodoro', 'Poblacion, San Teodoro', 'Restaurant', 'San_Teodoro/restorante.jpg', '', '13.436810328709255', '121.01953301250136', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(376, 'Tea Heart Food And Beverage House', 'San Teodoro', 'Poblacion, San Teodoro', 'Restaurant', 'San_Teodoro/tea_heart.jpg', '', '13.436215524241705', '121.02002653892886', 'Jeep = Calapan to Destination- 80-100 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(377, 'Angel\'s Aling Inasal', 'Socorro', 'Zone 1, Socorro', 'Restaurant', 'Socorro/angels.jpg', '', '13.08826179421161', '121.35467535426568', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(378, 'Box Tea Shop', 'Socorro', 'L. Joson St., Zone 3, Socorro', 'Restaurant', 'Socorro/tea.jpg', '', '13.174875766093397', '121.27808392727908', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 70 pesos - 150 pesos', '1000', 1),
(379, 'Fe\'s Kambingan', 'Socorro', 'Zone 1, Socorro', 'Restaurant', 'Socorro/kambingan.jpg', '', '13.105771419061673', '121.40836754798359', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 300 pesos', '1000', 1),
(380, 'Habibi\'s Shawarma Station', 'Socorro', 'Zone 3, Socorro', 'Restaurant', 'Socorro/habibis.jpg', '', '13.05241092708705', '121.40670456775906', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 40 pesos - 100 pesos', '1000', 1),
(381, 'Hapag Kainan', 'Socorro', 'L. Joson St., Zone 3, Socorro', 'Restaurant', 'Socorro/kainan.jpg', '', '13.055515923706809', '121.40650363001836', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 40 pesos - 150 pesos', '1000', 1),
(382, 'Jillian\'s Bubble Tea House', 'Socorro', 'Along SRNH, Zone 2, Socorro', 'Restaurant', 'Socorro/jillian.jpg', '', '13.088834883469742', '121.35479656481462', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(383, 'Neil Central Burger Station', 'Socorro', 'Along SRNH, Zone 2, Socorro', 'Restaurant', 'Socorro/niel.jpg', '', '13.057097216861107', '121.40735234893944', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(384, 'Partea And Dine Restaurant', 'Socorro', 'P. Cabrera St., Zone LV, Socorro', 'Restaurant', 'Socorro/partea.jpg', '', '13.056801165662243', '121.40640976775903', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(385, 'R&R Garden Restaurant', 'Socorro', 'Zone LV, Socorro', 'Restaurant', 'Socorro/r&r.jpg', '', '13.056875568519656', '121.40650455616715', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(386, 'Tea-K-Talk', 'Socorro', 'Zone 1, Socorro', 'Restaurant', 'Socorro/teatalk.jpg', '', '13.091409640722828', '121.34280129844262', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(387, 'Teatime Milktea', 'Socorro', 'Along SRNH, Zone 2, Socorro', 'Restaurant', 'Socorro/teatime.jpg', '', '13.088251344085158', '121.35466462543027', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(388, 'Vista Pilar Floating Restaurant', 'Socorro', 'Batong Dalig, Socorro', 'Restaurant', 'Socorro/vista.jpg', '', '13.109769524346678', '121.33647456775984', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(389, 'Bradz Restaurant', 'Victoria', 'San Isidro, Victoria', 'Restaurant', 'Victoria/bradz.jpg', '', '13.147720473572788', '121.28788538610387', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(390, 'Camai Cusina', 'Victoria', 'Mabini, Victoria', 'Restaurant', 'Victoria/camai.jpg', '', '13.198531744864734', '121.27388475439035', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 150 pesos', '1000', 1),
(391, 'Chipping\'s Restaurant', 'Victoria', 'Poblacion 1, Victoria', 'Restaurant', 'Victoria/chippings.jpg', '', '13.18448319911818', '121.27446965204312', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 300 pesos', '1000', 1),
(392, 'El Barco Restaurant', 'Victoria', 'Poblacion 2, Victoria', 'Restaurant', 'Victoria/barco.jpg', '', '13.181918614178908', '121.27523240250333', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 250 pesos', '1000', 1),
(393, 'Elsie Café And Restaurant', 'Victoria', 'Mabini, Victoria', 'Restaurant', 'Victoria/elsie.jpg', '', '13.202739450563504', '121.27316418322569', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(394, 'Leo\'s Grill Hub', 'Victoria', 'Poblacion 1, Victoria', 'Restaurant', 'Victoria/leos.jpg', '', '13.173140407883828', '121.28090258675182', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(395, 'Maxine\'s Restaurant', 'Victoria', 'Poblacion 4, Victoria', 'Restaurant', 'Victoria/maxines.jpg', '', '13.18752330123014', '121.2772238768272', 'Van = Calapan to Destination- 100-150 pesos', 'Price = 50 pesos - 200 pesos', '1000', 1),
(396, 'Mangyan Heritage Center', 'Calapan', 'Ibaba East, Calapan City', 'Pasalubongcenter', 'Calapan/mangyan_heritage.jpg', '', '13.415058020968448', '121.17934397953269', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(397, 'Small Creation Variety', 'Calapan', 'San Vicente East, Calapan City', 'Pasalubongcenter', 'Calapan/small_creation.jpg', '', '13.410205407906865', '121.17954041021548', 'Tricycle = Calapan to Destination - 20-50 pesos', '', '1000', 1),
(398, 'Dao Souvenir', 'Naujan', 'Dao, Naujan', 'Pasalubongcenter', 'Naujan/dao_souvenir.jpg', '', '13.327997801039468', '121.30369837947816', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(399, 'Municipal Souvenir Shop', 'Naujan', 'Poblacion I, Naujan', 'Pasalubongcenter', 'Naujan/municipal_souvenir.jpg', '', '13.315272499048525', '121.30327528026233', 'Jeep = Calapan to Destination- 80-120 pesos', '', '1000', 1),
(400, 'John-Nette Banana Chips', 'Pinamalayan', 'Zone II, Pinamalayan', 'Pasalubongcenter', 'Pinamalayan/johnnette_bananachip.jpg', '', '13.034637928923138', '121.4886010432967', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(401, 'Jamilla\'s Restaurant (Pasalubong Corner)', 'Pinamalayan', 'Madrid BLVD, Zone II, Pinamalayan', 'Pasalubongcenter', 'Pinamalayan/jamilla_restau.jpg', '', '13.033609257898863', '121.48753001093111', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(402, 'Jamies Pasalubong Atpb.', 'Pola', 'Batuhan, Pola', 'Pasalubongcenter', 'Pola/jamies_pasalubong.jpg', '', '13.140726321837597', '121.43819538209561', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(403, 'White Beach Souvenir Shops', 'Puerto Galera', 'San Isidro, Puerto Galera', 'Pasalubongcenter', 'Puerto_Galera/whitebeach_souvenirshop.jpg', '', '13.505864518959957', '120.90354584044029', 'Van = Calapan to Destination- 150-200 pesos', '', '1000', 1),
(404, 'De Calidad Gift Shop', 'Roxas', 'Bagumbayan, Roxas', 'Pasalubongcenter', 'Roxas/decalidad.jpg', '', '12.590463762243825', '121.52093826775307', 'Van = Calapan to Destination- 200-280 pesos', '', '1000', 1),
(405, 'BCDC Agricultural Products', 'San Teodoro', 'Bigaan, San Teodoro', 'Pasalubongcenter', 'San_Teodoro/bcdc_agrisan.jpg', '', '13.422133362145175', '121.02428034559203', 'Jeep = Calapan to Destination- 80-100 pesos', '', '1000', 1),
(406, 'Mikko\'s Banana Chips & Pasalubong Center', 'Socorro', 'Catiningan, Socorro', 'Pasalubongcenter', 'Socorro/mikkos_bananachip.jpg', '', '13.053386774565833', '121.41711718310054', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(407, 'Victoria V. Two Trading', 'Victoria', 'Poblacion I, Victoria', 'Pasalubongcenter', 'Victoria/victoria_two.jpg', '', '13.172533840399526', '121.28134201852096', 'Van = Calapan to Destination- 100-150 pesos', '', '1000', 1),
(410, 'Blue Harbor Inn', 'Calapan', 'San Antonio, Calapan City', 'Hotel', 'Calapan/blue.jpg', '', '13.429296893562851', '121.19456001545939', '', '', '1000', 1),
(411, 'Bulalo Mangrove Inn', 'Calapan', 'Bulalo, Calapan City', 'Hotel', 'Calapan/bulalo mangrove.jpg', '', '13.407012865468925', '121.15686136973368', '', '', '1000', 1),
(412, 'Calapan Holiday Resort', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/holiday resort.jpg', '', '13.414014862801308', '121.15751929793915', '', '', '1000', 1),
(413, 'Casa Estela Hotel', 'Calapan', 'Libis, Calapan City', 'Hotel', 'Calapan/casa estela hotel.jpg', '', '13.414471632490727', '121.18376961021546', '', '', '1000', 1),
(414, 'Cocofarm Resort', 'Calapan', 'Canubing 1, Calapan City', 'Hotel', 'Calapan/cocofarm.jpg', '', '13.444095090315475', '121.16774238328378', '', '', '1000', 1),
(415, 'Czeascape Resort', 'Calapan', 'Balite, Calapan City', 'Hotel', 'Calapan/czeascape.jpg', '', '13.410365020215668', '121.17748205495366', '', '', '1000', 1),
(416, 'Donnyland Beach Resort', 'Calapan', 'Suqui, Calapan City', 'Hotel', 'Calapan/donnyland.jpg', '', '13.417234710749632', '121.21010872555692', '', '', '1000', 1),
(417, 'Dreaming Forest Hotel', 'Calapan', 'Masipit, Calapan City', 'Hotel', 'Calapan/dreaming.jpg', '', '13.381552245118579', '121.16285583898132', '', '', '1000', 1),
(418, 'El Pueblo Rhizort', 'Calapan', 'Mahal na Pangalan, Calapan City', 'Hotel', 'Calapan/el pueblo.jpg', '', '13.411744319220945', '121.15360555928665', '', '', '1000', 1),
(419, 'Green Line Metro Drive Inn Hotel', 'Calapan', 'Bulusan, Calapan City', 'Hotel', 'Calapan/green line.jpg', '', '13.405289548069803', '121.19335621206291', '', '', '1000', 1),
(420, 'Hotel Metropolis', 'Calapan', 'Ramirez St., San Vicente Central, Calapan City', 'Choose...', 'Calapan/hotel metropolis.jpg', '', '13.416419795945824', '121.18359933809774', '', '', '1000', 1),
(421, 'Huanying Hotel', 'Calapan', 'San Vicente Central, Calapan City', 'Hotel', 'Calapan/huanying.jpg', '', '13.412976950650483', '121.17737098138018', '', '', '1000', 1),
(422, 'Playa Ignacio Resort', 'Calapan', 'Pachoca, Calapan City', 'Hotel', 'Calapan/playa ignacio.jpg', '', '13.414735385167909', '121.16988125623993', '', '', '1000', 1),
(423, 'Riceland Inn I', 'Calapan', 'San Vicente Central, Calapan City', 'Hotel', 'Calapan/riceland.jpg', '', '13.412434406259742', '13.412434406259742', '', '', '1000', 1),
(424, 'Riceland Inn II', 'Calapan', 'Ilaya, Calapan City', 'Hotel', 'Calapan/riceland 2.jpg', '', '13.411025516148237', '13.411025516148237', '', '', '1000', 1),
(425, 'Casa Marco Suites Hotel', 'Puerto Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/marco.jpg', '', '13.507617071483073', '120.90600647209986', '', '', '2000', 2),
(426, 'Infinity Resort & Spa', 'Puerto Galera', 'Talipanan, Puerto Galera', 'Hotel', 'Puerto_Galera/infinity.jpg', '', '13.498685737090778', '120.88671943891282', '', '', '3000', 3),
(427, 'Luca Cucina Italiana Lodging House', 'Puerto Galera', 'Talipanan, Aninuan, Puerto Galera', 'Hotel', 'Puerto_Galera/luca.jpg', '', '13.499916806210384', '13.499916806210384', '', '', '2000', 2),
(428, 'Ara Beach Resort', 'Puerto Galera', 'Talipanan, Puerto Galera', 'Hotel', 'Puerto_Galera/ara.jpg', '', '13.499404928252439', '120.88720622237848', '', '', '2000', 2),
(429, 'Villa Juday Resort', 'Puerto Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/juday.jpg', '', '13.506084518902712', '120.90775367025175', '', '', '2000', 2),
(430, 'AAA Apartment', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/aaa.jpg', '', '13.520186120836064', '120.97578346655588', '', '', '2000', 2),
(431, 'Action Divers', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/action.jpg', '', '13.524281054597598', '120.97027649660076', '', '', '2000', 2),
(432, 'Agasi Hotel Seashore Beach Resort Inc.', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/agasi.jpg', '', '13.521495882621286', '120.9783765916952', '', '', '2000', 2),
(433, 'Amami Beach Resort', 'Puerto Galera', 'Aninuan, Puerto Galera', 'Hotel', 'Puerto_Galera/amami.jpg', '', '13.498972831488894', '120.88780235121389', '', '', '2000', 2),
(435, 'Angelyn\'s Beach Resort', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/angelyn.jpg', '', '13.50016690877136', '120.95431113217604', '', '', '2000', 2),
(436, 'Answer Hotel', 'Puerto Galera', 'Tabinay, Puerto Galera', 'Hotel', 'Puerto_Galera/answer.jpg', '', '13.48998660712776', '120.95914266285938', '', '', '2000', 2),
(437, 'Apartelle De Francesca Resort', 'Puerto Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/apartelle.jpg', '', '13.503386064584321', '120.90555195675803', '', '', '2000', 2),
(438, 'Apra Nirvana Resort Corp.', 'Puerto Galera', 'Poblacion, Puerto Galera', 'Hotel', 'Puerto_Galera/apra.jpg', '', '13.495243305748295', '120.95580141073279', '', '', '2000', 2),
(439, 'Ark Bay Suites', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/ark.jpg', '', '13.52108186640429', '120.97457888004955', '', '', '2000', 2),
(440, 'Arkipelago Divers Beach Resort', 'Puerto Galera', 'Small Lalaguna,Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/arkipelago.jpg', '', '13.523372474968768', '120.97153710888512', '', '', '2000', 2),
(441, 'At-Can\'s Inn', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/atcan.jpg', '', '13.520731620358108', '120.97753413587249', '', '', '2000', 2),
(442, 'Aura Resort Corporation', 'Puerto Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/aura.jpg', '', '13.522887755659388', '120.97203187820152', '', '', '2000', 2),
(443, 'Bakawan Forest Resort', 'Puerto Galera', 'Bakawan, San Isidro, Puerto Galera', 'Hotel', 'Puerto Galera/bakawan.jpg', '', '13.50753113569', '120.90559928984705', '', '', '2000', 2),
(444, 'Bamboo House Beach Lodge And Restaurant', 'Puerto Galera', 'Talipanan, Aninuan, Puerto Galera', 'Hotel', 'Puerto Galera/bamboo.jpg', '', '13.499402936332057', '120.88651316470758', '', '', '2000', 2),
(445, 'Bangera Enterprises Inc.', 'Puerto Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto Galera/bangera.jpg', '', '13.50485843425866', '120.90371584936587', '', '', '2000', 2),
(446, 'Below Water Resort', 'Puerto_Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/below.jpg', '', '13.519816726543187', '120.97604954566997', '', '', '2000', 2),
(447, 'Binay Guesthouse', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/binay.jpg', '', '13.504662137824845', '120.90651512607457', '', '', '2000', 2),
(448, 'Blue Edge Diving Center', 'Puerto_Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/blue.jpg', '', '13.520907268794959', '120.97718003694152', '', '', '2000', 2),
(449, 'Blue Lagoon Dive Resort (The Frenchy Resort Inc.)', 'Puerto_Galera', 'Small Lalaguna,Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/lagoon.jpg', '', '13.522801312810305', '120.9718735119423', '', '', '2000', 2),
(450, 'Buena Lynne\'s Lodging', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/buena.jpg', '', '13.505915119139894', '120.90388054751793', '', '', '2000', 2),
(451, 'Buena Lynne\'s Lodging', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/buena.jpg', '', '13.505915119139894', '120.90388054751793', '', '', '2000', 2),
(452, 'Casa Jem Residence', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/jem.jpg', '', '13.506995257103204', '120.90688313402423', '', '', '2000', 2),
(453, 'Casa Mia Resort', 'Puerto_Galera', 'Aninuan, Puerto Galera', 'Hotel', 'Puerto_Galera/mia.jpg', '', '13.499317228375158', '120.89768796655562', '', '', '2000', 2),
(454, 'Casa Sofia', 'Puerto_Galera', 'Sinandigan, Puerto Galera', 'Hotel', 'Puerto_Galera/sofia.jpg', '', '13.516870597070506', '120.98633813217627', '', '', '2000', 2),
(455, 'Club Mabuhay', 'Puerto_Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/mabuhay.jpg', '', '13.52004024168323', '120.97642370888506', '', '', '2000', 2),
(456, 'D\' Mountain Beach Resort', 'Puerto_Galera', 'Talipanan, Puerto Galera', 'Hotel', 'Puerto_Galera/dmountain.jpg', '', '13.499026369161438', '120.89011981073278', '', '', '2000', 2),
(457, 'Dahilig Resort', 'Puerto_Galera', 'Palangan. Puerto Galera', 'Hotel', 'Puerto_Galera/dahilig.jpg', '', '13.51041058502206', '120.97011164751792', '', '', '2000', 2),
(458, 'Danny\'s Lodging', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/danny lodging.jpg', '', '13.505964801144977', '120.90612784751792', '', '', '2000', 2),
(459, 'Delgado\'s Resort', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/delgados.jpg', '', '13.506839575680544', '120.9055847144291', '', '', '2000', 2),
(460, 'Dolphin Bay Beachfront Resort', 'Puerto_Galera', 'Palangan. Puerto Galera', 'Hotel', 'Puerto_Galera/dolhpin.jpg', '', '13.503730357701825', '120.96572928984699', '', '', '2000', 2),
(461, 'Don Leo\'s Lodge & Bar', 'Puerto_Galera', 'San Isidro, Puerto Galera', 'Hotel', 'Puerto_Galera/donleo.jpg', '', '13.505522769348318', '120.90364523402418', '', '', '2000', 2),
(462, 'Dream Hill Condos And Spa', 'Puerto_Galera', 'Sabang, Puerto Galera', 'Hotel', 'Puerto_Galera/dream.jpg', '', '13.519882862659292', '120.97894527820162', '', '', '2000', 2),
(463, 'Stuffed Pastillas', 'Baco', 'Alag', 'Products', 'Baco/stuffedpastillas.jpg', 'MDME. Kap\'s Garindebar ', '', '', '', '', '', 0),
(464, 'Turmeric Powder', 'Baco', 'Catuwiran 1', 'Products', 'Baco/turmericpowder.jpg', 'Lakas Bisig ng Magsasaka ng Prutas at Gulay ', '', '', '', '', '', 0),
(465, 'White Cheese', 'Bansud', 'Salcedo', 'Products', 'Bansud/whitecheese.jpg', 'Mindoro Dairy Cooperative ', '', '', '', '', '', 0),
(466, 'Freshmilk', 'Bansud', 'Salcedo', 'Products', 'Bansud/freshmilk.jpg', 'Mindoro Dairy Cooperative ', '', '', '', '', '', 0),
(468, 'Organic Black Rice', 'Bongabong', 'Mina de Oro', 'Products', 'Bongabong/organicblackrice.jpg', 'Mina de Oro Agrarian Reform Beneficiaries Multi-Purpose Cooperative', '', '', '', '', '', 0),
(469, 'Organic Brown Rice', 'Bongabong', 'Mina de Oro', 'Products', 'Bongabong/organicbrownrice.jpg', 'Mina de Oro Agrarian Reform Beneficiaries Multi-Purpose Cooperative', '', '', '', '', '', 0),
(470, '\r\nOrganic Red Rice', 'Bongabong', 'Mina de Oro', 'Products', 'Bongabong/organicredrice.jpg', 'Mina de Oro Agrarian Reform Beneficiaries Multi-Purpose Cooperative', '', '', '', '', '', 0),
(471, 'Bee Propolis Bath Soap', 'Bongabong', 'Malitbog', 'Products', 'Bongabong/beepropolisbathsoap.jpg', 'HN Organic Farm ', '', '', '', '', '', 0),
(472, 'Pure Raw Wild Honey', 'Bongabong', 'Malitbog', 'Products', 'Bongabong/purerawwildhoney.jpg', 'HN Organic Farm ', '', '', '', '', '', 0),
(473, 'Stingless Honey', 'Bongabong', 'Malitbog', 'Products', 'Bongabong/stringlesshoney.jpg', 'HN Organic Farm ', '', '', '', '', '', 0),
(474, 'Cup Noodles Seaweed & Malungay', 'Bulalacao', 'Balatasan', 'Products', 'Bulalacao/seaweedmalunggay.jpg', 'Samasabalatasan Agriculture Cooperative', '', '', '', '', '', 0),
(475, 'Longganisa', 'Bansud', 'Poblacion', 'Products', 'Bansud/longganisa.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(476, 'Pork Footlong', 'Bansud', 'Poblacion', 'Products', 'Bansud/porkfootlong.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(477, 'Pork Giniling', 'Bansud', 'Poblacion', 'Products', 'Bansud/porkginiling.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(478, 'Pork Tocino', 'Bansud', 'Poblacion', 'Products', 'Bansud/porktocino.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(479, 'Premium Hotdog', 'Bansud', 'Poblacion', 'Products', 'Bansud/premiumhotdog.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(480, 'Supreme Hotdog', 'Bansud', 'Poblacion', 'Products', 'Bansud/supremehotdog.jpg', 'Bansud Livestock Cooperative', '', '', '', '', '', 0),
(481, 'Seaweed Pancit Canton', 'Bulalacao', 'Balatasan', 'Products', 'Bulalacao/seaweedpancitcanton.jpg', 'Samasabalatasan Agriculture Cooperative', '', '', '', '', '', 0),
(482, 'Seaweed Pickles', 'Bulalacao', 'Balatasan', 'Products', 'Bulalacao/seaweedpickles.jpg', 'Samasabalatasan Agriculture Cooperative', '', '', '', '', '', 0),
(483, 'Seaweed Soap', 'Bulalacao', 'Balatasan', 'Products', 'Bulalacao/seaweedsoap.jpg', 'Samasabalatasan Agriculture Cooperative', '', '', '', '', '', 0),
(484, 'Apis Mellifera Honey', 'Calapan', 'Bulusan', 'Products', 'Calapan/apismelliferahoney.jpg', 'Iraya Imtegrated Farm INC.', '', '', '', '', '', 0),
(485, 'Pure Extract Unscented Calamansi', 'Calapan', 'Bulusan', 'Products', 'Calapan/pureextractunsweetenedcalamansi.jpg', 'Iraya Imtegrated Farm INC.', '', '', '', '', '', 0),
(486, 'Trigona Honey', 'Calapan', 'Bulusan', 'Products', 'Calapan/trigonahoney.jpg', 'Iraya Imtegrated Farm INC.', '', '', '', '', '', 0),
(487, 'Barako Coffee Brewed', 'Calapan', 'Lalud', 'Products', 'Calapan/barakocoffebrewed.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(488, 'Barako Coffee Grind Beans', 'Calapan', 'Lalud', 'Products', 'Calapan/barakocoffegrindbeans.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(489, 'Barako Coffee Whole Beans', 'Calapan', 'Lalud', 'Products', 'Calapan/barakocoffewholebeans.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(490, 'Coco Jam', 'Calapan', 'Lalud', 'Products', 'Calapan/cocojam.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(491, 'Passion Fruit', 'Calapan', 'Lalud', 'Products', 'Calapan/passionfruit.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(492, 'Suman Sa Lihiya', 'Calapan', 'Lalud', 'Products', 'Calapan/sumansalihiya.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(493, 'Turmeric Tea', 'Calapan', 'Lalud', 'Products', 'Calapan/turmerictea.jpg', 'Merl\'s Native Delicacies', '', '', '', '', '', 0),
(494, 'Coco Jam', 'Calapan', 'Lalud', 'Products', 'Calapan/cocojam.jpg', 'Starcafe & Delicatessen', '', '', '', '', '', 0),
(495, 'Suman Sa Lihiya', 'Calapan', 'Lalud', 'Products', 'Calapan/sumansalihiya.jpg', 'Starcafe & Delicatessen', '', '', '', '', '', 0),
(496, 'Nipa Vinegar', 'Calapan', 'Gutad', 'Products', 'Calapan/nipavinegar.jpg', 'Samahan ng mga Taong Nagtataguyod ng Produktong Natural', '', '', '', '', '', 0),
(497, 'Coco Water Vinegar', 'Calapan', 'San Vicente North', 'Products', 'Calapan/cocowatervinegar.jpg', 'Coconut Vendors Association ', '', '', '', '', '', 0),
(498, 'Blue Ternate Jam', 'Calapan', 'Buhuan', 'Products', 'Calapan/blueternatejam.jpg', 'Engineer\'s Food Lab', '', '', '', '', '', 0),
(499, 'Oyster Mushroom', 'Calapan', 'Buhuan', 'Products', 'Calapan/oystermushroom.jpg', 'Sunrise Mushroom', '', '', '', '', '', 0),
(500, 'Nipa Sugar & Sugar Syrup', 'Calapan', 'Parang', 'Products', 'Calapan/nipasugar&sugarsyrup.jpg', 'Manipa', '', '', '', '', '', 0),
(501, 'Nipa Vinegar', 'Calapan', 'Parang', 'Products', 'Calapan/nipavinegar.jpg', 'Manipa', '', '', '', '', '', 0),
(502, 'Oh My Suka', 'Calapan', 'Biga', 'Products', 'Calapan/ohmysuka.jpg', 'JC Binalot Food House', '', '', '', '', '', 0),
(503, 'Calamansi Concentrate', 'Calapan', 'Tawiran', 'Products', 'Calapan/calamansiconcentrate.jpg', 'Lanz & Sarah Food Products', '', '', '', '', '', 0),
(504, 'Chili Garlic Oil', 'Calapan', 'Tawiran', 'Products', 'Calapan/chiligarlicoil.jpg', 'Lanz & Sarah Food Products', '', '', '', '', '', 0),
(505, 'Salabat Powder', 'Calapan', 'Tawiran', 'Products', 'Calapan/salabatpowder.jpg', 'Lanz & Sarah Food Products', '', '', '', '', '', 0),
(506, 'Buko Pie', 'Gloria', 'Tambong', 'Products', 'Gloria/bukopie.jpg', 'R-Jay\'s', '', '', '', '', '', 0),
(507, 'Rice Crispies', 'Gloria', 'Maligaya', 'Products', 'Gloria/ricecrispies.jpg', 'Community Multipurpose Cooperative', '', '', '', '', '', 0),
(508, 'Dhayo\'s Bagoong', 'Mansalay', 'Sta. Terresita', 'Products', 'Mansalay/bagoong.jpg', 'Dhayo\'s Bagoong', '', '', '', '', '', 0),
(509, 'Dhayo\'s Patis', 'Mansalay', 'Sta. Terresita', 'Products', 'Mansalay/patis.jpg', 'Dhayo\'s Patis', '', '', '', '', '', 0),
(510, 'Buri Hats', 'Mansalay', 'Manaul', 'Products', 'Mansalay/burihats.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(511, 'Buri Placements', 'Mansalay', 'Manaul', 'Products', 'Mansalay/buriplacements.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(512, 'Buri Plant Basket', 'Mansalay', 'Manaul', 'Products', 'Mansalay/buriplantbasket.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(513, 'Buri Plant Basket 2', 'Mansalay', 'Manaul', 'Products', 'Mansalay/buriplantbasket2.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(514, 'Buri Wine Holder', 'Mansalay', 'Manaul', 'Products', 'Mansalay/buriwinehiolder.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(515, 'Food Picnic Bag', 'Mansalay', 'Manaul', 'Products', 'Mansalay/foodpicnicbag.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(516, 'Market Bag', 'Mansalay', 'Manaul', 'Products', 'Mansalay/marketbag.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(517, 'Shoulder Bag', 'Mansalay', 'Manaul', 'Products', 'Mansalay/shouldebag.jpg', 'Samahan ng Magbubukid ng Manaul', '', '', '', '', '', 0),
(518, 'Chili Garlic Sauce', 'Mansalay', 'Roma', 'Products', 'Mansalay/chiligarlicsauce.jpg', 'Nature and Farmers Agriculture Cooperative', '', '', '', '', '', 0),
(519, 'Spicy & Sweet, Hot & Sweet and Sweet & Spicy', 'Mansalay', 'Roma', 'Products', 'Mansalay/ss&hs&ss&s.jpg', 'Nature and Farmers Agriculture Cooperative', '', '', '', '', '', 0),
(520, 'Ramit, Bead & Buri', 'Mansalay', 'Panaytayan', 'Products', 'Mansalay/ramitbeadsburi.jpg', 'Mangyan Products/Eping Mayot', '', '', '', '', '', 0),
(521, 'Halfmoon Bag', 'Naujan', 'Dao', 'Products', 'Naujan/halfmoonbag.jpg', 'Dao Water Lily Association', '', '', '', '', '', 0),
(522, 'Round Sling Bag', 'Naujan', 'Dao', 'Products', 'Naujan/roundslingbag.jpg', 'Dao Water Lily Association', '', '', '', '', '', 0),
(523, 'Unisex Slipper', 'Naujan', 'Dao', 'Products', 'Naujan/unisexslippers.jpg', 'Dao Water Lily Association', '', '', '', '', '', 0),
(524, 'Waterlily Hat', 'Naujan', 'Dao', 'Products', 'Naujan/waterlilyhat.jpg', 'Dao Water Lily Association', '', '', '', '', '', 0),
(525, 'Dilaw Granules', 'Naujan', 'Paitan', 'Products', 'Naujan/dilawgranules.jpg', 'Manggagawang Mangyan Alanagan', '', '', '', '', '', 0),
(526, 'Sambong Granules', 'Naujan', 'Paitan', 'Products', 'Naujan/sambonggranules.jpg', 'Manggagawang Mangyan Alanagan', '', '', '', '', '', 0),
(527, 'Banana Chips', 'Naujan', 'Santiago', 'Products', 'Naujan/bananachips.jpg', 'Tlon Motoderazo Primary Multipurose Cooperative', '', '', '', '', '', 0),
(528, 'Achara Pickled Coconut Gel', 'Naujan', 'Mahabang Parang', 'Products', 'Naujan/acharapickledcoconutgel.jpg', 'Mahabang Parang Agrarian Reform Beneficiaries Association', '', '', '', '', '', 0),
(529, 'Nata De Coco', 'Naujan', 'Mahabang Parang', 'Products', 'Naujan/natadecoco.jpg', 'Mahabang Parang Agrarian Reform Beneficiaries Association', '', '', '', '', '', 0),
(530, 'Polvoron', 'Naujan', 'Santiago', 'Products', 'Naujan/polvoron.jpg', 'Fritzie\'s Pastillas & Polvoron', '', '', '', '', '', 0),
(531, 'Banana Chips', 'Pinamalayan', 'Guinhawa', 'Products', 'Pinamalayan/bananachips.jpg', 'Bahaghari Global INC.', '', '', '', '', '', 0),
(532, 'Taro Chips', 'Pinamalayan', 'Guinhawa', 'Products', 'Pinamalayan/tarochips.jpg', 'Bahaghari Global INC.', '', '', '', '', '', 0),
(533, 'Slippers & Sandals', 'Pinamalayan', 'Marfrancisco', 'Products', 'Pinamalayan/slipperandsandals.jpg', 'Bahag Footware', '', '', '', '', '', 0),
(534, 'Candy', 'Pinamalayan', 'Marfrancisco', 'Products', 'Pinamalayan/candy.jpg', 'Milky\'s Goodswill', '', '', '', '', '', 0),
(535, 'Banana Chips', 'Pinamalayan', 'Paraiso', 'Products', 'Pinamalayan/bananachips.jpg', 'Remerco Agri-Industrila Company INC.', '', '', '', '', '', 0),
(536, 'Banana Strings', 'Pinamalayan', 'Paraiso', 'Products', 'Pinamalayan/bananastrings.jpg', 'Remerco Agri-Industrila Company INC.', '', '', '', '', '', 0),
(537, 'Cassava Cake', 'Pinamalayan', 'Sta. Rita', 'Products', 'Pinamalayan/cassavacake.jpg', 'Krizshem\'s ', '', '', '', '', '', 0),
(538, 'Pichi-Pichi', 'Pinamalayan', 'Sta. Rita', 'Products', 'Pinamalayan/pichipichi.jpg', 'Krizshem\'s ', '', '', '', '', '', 0),
(539, 'Calamansi Concentrate', 'Pola', 'Matulatula', 'Products', 'Pola/calamansiconcetnrate.jpg', 'Matulatula Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(540, 'Calamansi Pure Extract', 'Pola', 'Matulatula', 'Products', 'Pola/calamansipureextract.jpg', 'Matulatula Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(541, 'Calamansi Ready to Drink', 'Pola', 'Matulatula', 'Products', 'Pola/calamansireadytodrink.jpg', 'Matulatula Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(542, 'Dalandan Concentrate', 'Pola', 'Matulatula', 'Products', 'Pola/dalandanconcentrate.jpg', 'Matulatula Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(543, 'Dalandan Ready to Drink', 'Pola', 'Matulatula', 'Products', 'Pola/dalandanreadytodrink.jpg', 'Matulatula Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(544, 'Instant Salabat', 'Pola', 'Calima', 'Products', 'Pola/instantsalabat.jpg', 'Calima Socio-Economic  Multi-Purpose Cooperative', '', '', '', '', '', 0),
(545, 'Virgin Coconut Oil', 'Pola', 'Calima', 'Products', 'Pola/virgincoconutoil.jpg', 'Calima Socio-Economic  Multi-Purpose Cooperative', '', '', '', '', '', 0),
(546, 'Beer or Glass Holder', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/beerorglassholder.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(547, 'Earring', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/earring.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(548, 'Fruit Tray', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/fruittray.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(549, 'Fruit Tray w/ Handle', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/fruittraywithhandle.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(550, 'Key Chain', 'Bulalacao', 'Dulangan', 'Products', 'Bulalacao/keychain.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(551, 'Necklace', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/necklace.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(552, 'Plaka or Hot Pad', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/plakaorhotpad.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(553, 'Pot Basket', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/potbasket.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(554, 'Service Tray', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/servicetray.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(555, 'Tabuyo', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/tabuyo.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(556, 'Takba or Coaster Set', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/takbaorcoasterset.jpg', 'Cnellej Souvenir Shop', '', '', '', '', '', 0),
(557, 'Eyam\'s Banana Chips', 'Puerto Galera', 'Balatero', 'Products', 'Puerto Galera/eyamsbananachips.jpg', 'Paulina Hernandez', '', '', '', '', '', 0),
(558, 'Honey from the Wild', 'Puerto Galera', 'Balatero', 'Products', 'Puerto Galera/honeyfromthewild.jpg', 'Merciditas Magbuhos', '', '', '', '', '', 0),
(559, 'Lis Peanut Butter', 'Puerto Galera', 'Balatero', 'Products', 'Puerto Galera/lispeanutbutter.jpg', 'Buklurang Proyekto para sa Pangkabuhayan ng Balatero', '', '', '', '', '', 0),
(560, 'Powder Salabat', 'Puerto Galera', 'Balatero', 'Products', 'Puerto Galera/powdersalabat.jpg', 'Buklurang Proyekto para sa Pangkabuhayan ng Balatero', '', '', '', '', '', 0),
(561, 'Atsarang Papaya', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/atsarangpapaya.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(562, 'Bagoong Alamang Sweet & Spicy', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/bagongalamangsweet&spicy.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(563, 'Bagoong Alamang Sweet & Spicy', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/bagoongalamngsweet&spicy.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(564, 'Chili Garlic Sauce', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/chiligarlicsauce.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(565, 'Coco Jam', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/cocojam.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(566, 'Dilis Crunchy Sweet & Spicy', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/diliscrunchysweet&Spicy.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(567, 'Guava Jelly', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/guavajelly.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(568, 'Nipasarap(Spiced Nipa Vinegar)', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/nipasarap.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(569, 'Pinakunat(Spiced Nipa Vinegar)', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/pinakurat.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(570, 'Roselle Jam', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/rosellejam.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(571, 'Spiced Vinegar', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/spicedvinegar.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(572, 'Suman Sa Lihiya', 'Puerto Galera', 'Dulangan', 'Products', 'Puerto Galera/sumansalihiya.jpg', 'Samahang Pangkabuhayan ng mga taga-Dulangan', '', '', '', '', '', 0),
(573, 'Bundo Nutri-Strix', 'Roxas', 'Paclasan', 'Products', 'Roxas/bundonutristix.jpg', 'Roxas Market Multi-Purpose Cooperative', '', '', '', '', '', 0),
(574, 'Camote Nutri-Strix', 'Roxas', 'Paclasan', 'Products', 'Roxas/camotenutristix.jpg', 'Roxas Market Multi-Purpose Cooperative', '', '', '', '', '', 0),
(575, 'Canton Noodle w/ Squash', 'Roxas', 'Paclasan', 'Products', 'Roxas/cantonnoodle.jpg', 'Roxas Market Multi-Purpose Cooperative', '', '', '', '', '', 0),
(576, 'Malunggay Noodles', 'Roxas', 'Paclasan', 'Products', 'Roxas/malunggaynoodles.jpg', 'Roxas Market Multi-Purpose Cooperative', '', '', '', '', '', 0),
(577, 'Malunggay Nutri-Strix', 'Roxas', 'Paclasan', 'Products', 'Roxas/malunggaynutristix.jpg', 'Roxas Market Multi-Purpose Cooperative', '', '', '', '', '', 0),
(578, 'Crispy Salmon Skin', 'Roxas', 'Libtong', 'Products', 'Roxas/crispysalmonskin.jpg', 'Big Ron\'s', '', '', '', '', '', 0),
(579, 'Gourmet Tuyo', 'Roxas', 'Libtong', 'Products', 'Roxas/gourmettuyo.jpg', 'Big Ron\'s', '', '', '', '', '', 0),
(580, 'Cacao Tablea', 'Roxas', 'Odiong', 'Products', 'Roxas/cacaotablea.jpg', 'Tablea-De-Pacencia', '', '', '', '', '', 0),
(581, 'Tableya', 'Roxas', 'San Aguilino', 'Products', 'Roxas/tableya.jpg', 'Ludy\'s Cacao', '', '', '', '', '', 0),
(582, 'Banana Chips', 'Roxas', 'San Aguilino', 'Products', 'Roxas/bananachips.jpg', 'Louise Banana Crackers', '', '', '', '', '', 0),
(583, 'Atsarang Papaya', 'Roxas', 'San Aguilino', 'Products', 'Roxas/atsarangpapaya.jpg', 'Mama Lola', '', '', '', '', '', 0),
(584, 'VCO Eucalyptus Massage Oil', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/vco eucalyptus massage oil.jpg', 'Bigaan Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(585, 'VCO Massage Oil', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/vco massage oil.jpg', 'Bigaan Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(586, 'Virgin Coconut Oil', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/virgin coconut oil.jpg', 'Bigaan Agrarian Reform Community Cooperative', '', '', '', '', '', 0),
(587, 'Oyster Mushroom Atsara Style', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/oyster mushroom atsara style.jpg', 'E and B Farm', '', '', '', '', '', 0),
(588, 'Oyster Mushroom Chili Garlic Paste', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/oyster mushroom chili garlic paste.jpg', 'E and B Farm', '', '', '', '', '', 0),
(589, 'Oyster Mushroom Sisig', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/oyster mushroom sisig.jpg', 'E and B Farm', '', '', '', '', '', 0),
(590, 'Oyster Mushroom Sticks 2', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/oyster mushroom sticks 2.jpg', 'E and B Farm', '', '', '', '', '', 0),
(591, 'Oyster Mushroom Sticks', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/oyster mushroom sticks.jpg', 'E and B Farm', '', '', '', '', '', 0),
(592, 'Oyster Mushroom', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/oyster mushroom.jpg', 'E and B Farm', '', '', '', '', '', 0),
(593, 'Spiced  Nipa Vinegar', 'San Teodoro', 'Ilag', 'Products', 'San Teodoro/spiced nipa vinegar.jpg', 'E and B Farm', '', '', '', '', '', 0),
(594, 'Nito Products', 'San Teodoro', 'Calsapa', 'Products', 'San Teodoro/nito products.jpg', 'Sina-E Rumrum Iraya San Teodoro', '', '', '', '', '', 0),
(595, 'Porselas at Kwintas', 'San Teodoro', 'Calsapa', 'Products', 'San Teodoro/porselas at kwintas.jpg', 'Sina-E Rumrum Iraya San Teodoro', '', '', '', '', '', 0),
(596, 'Calaman C', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/calaman-c.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(597, 'Chili Man-C', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/chiliman-c.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(598, 'Ginger Powder', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/gingerpowder.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(599, 'Honey Man-C', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/honeyman-c.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(600, 'Pinakurat(Spiced Nipa Vinegar)', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/pinakurat.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(601, 'Raw Wild Honey', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/rawwildhoney.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(602, 'Turmeric Powder', 'San Teodoro', 'Bigaan', 'Products', 'San Teodoro/turmericpowder.jpg', 'Banana Calamansi Dalandan Coconut - Agricultural Products', '', '', '', '', '', 0),
(603, 'Banana Chips', 'Socorro', 'Catiningan', 'Products', 'Socorro/bananachips.jpg', 'Mikko\'s Banana Chips', '', '', '', '', '', 0),
(604, 'Dried Ayungin', 'Socorro', 'Pasi II', 'Products', 'Socorro/driedayungin.jpg', 'Samahang Maliliit na Mangingisda ng Pasi II', '', '', '', '', '', 0),
(605, 'Dried Biya', 'Socorro', 'Pasi II', 'Products', 'Socorro/driedbiya.jpg', 'Samahang Maliliit na Mangingisda ng Pasi II', '', '', '', '', '', 0),
(606, 'Carbonized Rice Hull', 'Socorro', 'Calubayan', 'Products', 'Socorro/carbonizedricehull.jpg', 'Fruit and Vegetable Growers Association of Calubayan', '', '', '', '', '', 0),
(607, 'Coco Coir Fiber', 'Socorro', 'Calubayan', 'Products', 'Socorro/cococoirfiber.jpg', 'Fruit and Vegetable Growers Association of Calubayan', '', '', '', '', '', 0),
(608, 'Coco Peat', 'Socorro', 'Calubayan', 'Products', 'Socorro/cocopeat.jpg', 'Fruit and Vegetable Growers Association of Calubayan', '', '', '', '', '', 0),
(609, 'Vermi Composed', 'Socorro', 'Calubayan', 'Products', 'Socorro/comvermicomposed.jpg', 'Fruit and Vegetable Growers Association of Calubayan', '', '', '', '', '', 0),
(610, 'Potting Mix', 'Socorro', 'Calubayan', 'Products', 'Socorro/pottingmix.jpg', 'Fruit and Vegetable Growers Association of Calubayan', '', '', '', '', '', 0),
(611, 'Uukan', 'Socorro', 'Catiningan', 'Products', 'Socorro/uukan.jpg', 'Arthur Buela', '', '', '', '', '', 0),
(612, 'Hot Chili Sauce', 'Socorro', 'Malugay', 'Products', 'Socorro/hotchilisauce.jpg', 'Samahang Pangkabuhayan ng Malugay', '', '', '', '', '', 0),
(613, 'Cassava Cake', 'Socorro', 'Zone III', 'Products', 'Socorro/cassavacake.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(614, 'Gourmet Tuyo', 'Socorro', 'Zone III', 'Products', 'Socorro/gourmettuyo.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(615, 'Kamias Candy', 'Socorro', 'Zone III', 'Products', 'Socorro/kamiascandy.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(616, 'Peanut Butter', 'Socorro', 'Zone III', 'Products', 'Socorro/peanutbutter.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(617, 'Polvoron', 'Socorro', 'Zone III', 'Products', 'Socorro/polvoron.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(618, 'Rice Brownies', 'Socorro', 'Zone III', 'Products', 'Socorro/ricebrownies.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(619, 'Ube Halaya', 'Socorro', 'Zone III', 'Products', 'Socorro/ubehalaya.jpg', 'Sally\'s Special Homemade Products', '', '', '', '', '', 0),
(620, 'Honey', 'Victoria', 'Sampaguita', 'Products', 'Victoria/honey.jpg', 'Kasagpi Producers Cooperative', '', '', '', '', '', 0),
(621, 'Instant Salabat', 'Victoria', 'Sampaguita', 'Products', 'Victoria/instantsalabat.jpg', 'Kasagpi Producers Cooperative', '', '', '', '', '', 0),
(622, 'Peanut Butter', 'Victoria', 'Sampaguita', 'Products', 'Victoria/peanutbutter.jpg', 'Kasagpi Producers Cooperative', '', '', '', '', '', 0),
(623, 'Turmeric Powder', 'Victoria', 'Sampaguita', 'Products', 'Victoria/turmericpowder.jpg', 'Kasagpi Producers Cooperative', '', '', '', '', '', 0),
(624, 'Turmeric Powder 2', 'Victoria', 'Sampaguita', 'Products', 'Victoria/turmericpowder2.jpg', 'Kasagpi Producers Cooperative', '', '', '', '', '', 0),
(625, 'Banana Fritos', 'Victoria', 'San Juan', 'Products', 'Victoria/bananafritos.jpg', 'San Juan Rural Improvement Club', '', '', '', '', '', 0),
(626, 'Instant Salabat', 'Victoria', 'San Juan', 'Products', 'Victoria/instantsalabat.jpg', 'San Juan Rural Improvement Club', '', '', '', '', '', 0),
(627, 'Turmeric Tea', 'Victoria', 'San Juan', 'Products', 'Victoria/turmerictea.jpg', 'San Juan Rural Improvement Club', '', '', '', '', '', 0),
(628, 'Calamansi Concentrate', 'Victoria', 'Pakyas', 'Products', 'Victoria/calamansiconcentrate.jpg', 'Pakyas Rural Improvement Club', '', '', '', '', '', 0),
(629, 'Dalandan Concentrate', 'Victoria', 'Pakyas', 'Products', 'Victoria/dalandanconcentrate.jpg', 'Pakyas Rural Improvement Club', '', '', '', '', '', 0),
(630, 'Calamansi Concentrate', 'Victoria', 'Leido', 'Products', 'Victoria/calamansiconcentrate.jpg', 'VCDC Farm', '', '', '', '', '', 0),
(631, 'Gin C', 'Victoria', 'Leido', 'Products', 'Victoria/ginc.jpg', 'VCDC Farm', '', '', '', '', '', 0),
(632, 'Ginger Turmeric Brew', 'Victoria', 'Leido', 'Products', 'Victoria/gingerturmericbrew.jpg', 'VCDC Farm', '', '', '', '', '', 0),
(633, 'Ginger Turmeric Brew', 'Victoria', 'Leido', 'Products', 'Victoria/gingerturmericbrew.jpg', 'VCDC Farm', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `destination_id` text NOT NULL,
  `image` text NOT NULL,
  `uploaded_by` text NOT NULL,
  `status` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_tab`
--

CREATE TABLE `location_tab` (
  `locationLatitude` varchar(50) NOT NULL,
  `locationLongitude` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_tab`
--

INSERT INTO `location_tab` (`locationLatitude`, `locationLongitude`, `ID`) VALUES
('13.388338', '121.162285', 1),
('13.414697', '121.180302', 2);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `destination_id` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `destination_id`, `user_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(12, '6', 41, 'cyril', 5, 'nice place', '2022-12-03 18:25:19'),
(13, '7', 41, 'cyril', 5, 'sda', '2022-12-05 10:20:31'),
(14, '6', 55, 'cyril', 5, 'sad', '2022-12-05 11:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `tag_place`
--

CREATE TABLE `tag_place` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approval` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag_place`
--

INSERT INTO `tag_place` (`id`, `description`, `location_id`, `picture_id`, `user_id`, `approval`, `status`) VALUES
(1, '1', 77, 77, 2, '', 'pending'),
(2, '1', 77, 77, 2, '', 'pending'),
(3, 'tata', 6, 38, 38, '', 'pending'),
(4, 'tata', 6, 38, 38, '', 'pending'),
(5, 'dada', 6, 38, 38, '', 'pending'),
(6, 'dada', 6, 38, 38, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `usertype` text NOT NULL,
  `status` text NOT NULL,
  `token` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `usertype`, `status`, `token`, `created_at`) VALUES
(24, 'asdfghjk', 'deguzmanadrianangel@gmail.com', '$2y$10$y3VOOoZrR0sEo0OSP.CHs.HWtny1.Pj/8sQeJX24HYK275xv.l3x6', 'user', 'inactive', '30jRpgxZTDJNFPA7Las85Yeiqbhywo1dfGQSMOXv9IWHVEnzK6', '2022-05-11 08:49:28'),
(29, 'Rachel Ann Labre', 'labrerachelann@gmail.com', '$2y$10$gVcJg31zqMWPltO9KtyznOGoH4qdMXU2CrHTAFs4/a3dsH8zEVYKG', 'user', 'inactive', 'rHZk3ISVgJNctvup1sGe6QR70bmx8WTw2jAXCiOYf9B5KE4dlL', '2022-05-25 21:27:59'),
(38, 'Rachel Ann Labre', 'rachelannlabre3@gmail.com', '$2y$10$3YYeG6ICrBp7pRGmzdhUz.XeysTP6WoK1CmoYrI4/.pu/4DLo0NWK', 'user', 'inactive', '1RosIJhPcu6XV3CvamSqNMj7ALTgUxkB2z04GFYpWQre98if5l', '2022-09-21 19:21:12'),
(40, 'Rachel Ann Labre', 'labrerachelann9@gmail.com', '$2y$10$vKxB6QlrQfxuRHhDzbwFRumWKBEhKzz84/YLz55ogfY9UdEfFO0wG', 'user', 'inactive', 'fMCQ7zEKkOjWHlR61BnJZG5LdPDxXUau420tF8m9wNrbcgYso3', '2022-10-06 02:17:23'),
(42, 'try', 'wawaysawan@gmail.com', '$2y$10$XFeEE0Mig59jS4vxKYXbkebXxCjoAnaZS/kVtVJm3.6OpjC.UWAym', 'user', 'active', 'mrsVTx9NipbCgvjwt3P1GeKLf2unDFykZWdAIR7EoQh4XY8qc0', '2022-10-19 10:29:48'),
(55, 'trysdad', 'bsit2ep4@gmail.com', '$2y$10$kmWphDROArK7kNsHIaATF.NSj2.yBXyRQcMMCmymztd30aGiowjsG', 'user', 'active', 's5Sk6NBKftFlrgQoLJHiG8YThXVPRCndwI1v2Mmpy7z0bxDjZu', '2022-12-05 03:39:31'),
(56, 'admin', 'jancyrilsanjuan@gmail.com', '$2y$10$jCHM05CtpAg6O5clqFJi5uvv8WDjeWBKsAf8Kltz43u43U7onhsr2', 'admin', 'active', 'joS9U5d3kW7hVTaDlLpReFYJG4Ktn26Mf8ymxcOqvbCQr01sig', '2022-12-11 12:41:04'),
(57, 'cent', 'cent@gmail.com', '$2y$10$PPJtmgTe8HIJWbQI9DwvGu1KEtX.LjFZpzBTeOHkvPcPOADvPuRem', '', 'active', 'NTctiYKkuv2BfrlxU9RE781D4agnH3pGZ05XmLQWheSyJIMjws', '2022-12-11 12:42:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_brands`
--
ALTER TABLE `a_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tag_place`
--
ALTER TABLE `tag_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_brands`
--
ALTER TABLE `a_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tag_place`
--
ALTER TABLE `tag_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
