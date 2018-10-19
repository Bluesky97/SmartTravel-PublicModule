--INFT 3970 - FYP Project
--Start Date : 10th May 2018
--Submission Date : 1st August 2018
--Names     :Andrian Alexander Putra(c3271469)
--          :Zhang Chuhan(c3270145)
--          :Thet Paing Htun(c3271285)
--          :Hay Marn Oo(c3271471)

--CREATE DATABASE  SmartTravelDB

use SmartTravelDB

create table Customer
(
custEmail		varchar(30) not null constraint pk_Customer Primary Key,
name			varchar(30) not null,
personalID		varchar(10) not null,
dateOfBirth		date		not null,
gender			varchar(10) not null,
address			varchar(50) not null,
postalCode		varchar(10)	not null,
phoneNumber		int			not null,
password		varchar(30) not null,
nationality		varchar(20) not null,
accStatus		varchar(20) not null,
);

--insert statement for Customer
insert into Customer values ('choosakura18@gmail.com', 'Test Account', 'S1234567P', '10-11-97', 'Male', '10 River Valley Road', '228429', 87878858, '123456', 'Singaporean', 'Confirmed');
insert into Customer values ('andrian97@windowslive.com', 'Andrian', 'G1234567P', '26-Nov-97', 'Male', '2 River Valley Close', '238428', 83852235, '123456', 'Indonesian', 'Confirmed');
insert into Customer values ('thetpainghtun1995@gmail.com', 'Thet', 'G1234568P', '10-Jul-95', 'Male', '2 Jurong East Road', '123456', 88885555, '123456', 'Burmese', 'Confirmed');
insert into Customer values ('zhangchuhan522@yahoo.com', 'Chuhan', 'G1234558L', '05-Jun-97', 'Female', '15 Paya Lebar Road', '123455', 878788543, '123456', 'Chinese', 'Confirmed');
insert into Customer values ('haymarnoo1@gmail.com', 'Marn', 'G3214558M', '12-Dec-95', 'Female', '15 Toa Payoh Road', '123455', 88571254, '123456', 'Burmese', 'Confirmed');

create table Attraction
(
attractionID	int identity(1,1) not null constraint pk_Attraction primary key,
orgEmail		varchar(50),
name			varchar(100),
regID			varchar(30),
address			varchar(500),
postalCode		varchar(50),
city			varchar(100),
country			varchar(50),
password		varchar(30),
contactNo		varchar(70),
description		varchar(1000),
starRating		int,
openingHours	varchar(50),
photo			varchar(60),
verification	bit
);

--insert statement for Attraction
--Singapore
insert into Attraction values ('uss@gmail.com', 'Universal Studio Singapore', 'A001', '8 Sentosa Gateway, Sentosa Island', '098269', 'Singapore', 'Singapore', '1111', '+65 6577 6000', 'Universal Studios Singapore is a theme park located within Resorts World Sentosa on Sentosa Island, Singapore. It features 24 rides, shows and attractions in seven themed zones.', 5, '10AM-6PM', 'usssg.jpg', 1);
insert into Attraction values ('gbty@gmail.com', 'Gardens by the Bay', 'A002', '18 Marina Gardens Drive', '018953', 'Singapore', 'Singapore', '2222', '+65 6420 6848', 'A national garden and premier horticultural attraction for local and international visitors, Gardens by the Bay is a showpiece of horticulture and garden artistry that presents the plant kingdom in a whole new way, entertaining while educating visitors with plants seldom seen in this part of the world, ranging from species in cool, temperate climates to tropical forests and habitats.', 4, '9AM-9PM', 'Singapore-Gardens-By-The-Bay-evening.jpg', 1);
insert into Attraction values ('sgzoo@gmail.com', 'Singapore Zoo', 'A004', '80 Mandai Lake Road', '729826', 'Singapore', 'Singapore', '4444', '+65 6269 3411', 'For over 40 years, visitors of Singapore Zoo have immersed themselves in one the most beautiful settings in the world, where animals roam freely in open and natural habitats. Covering 26 hectares, the park is home to over 2,800 animals representing over 300 species.', 4, '8:30AM-6PM', 'maxresdefault.jpg', 1);
insert into Attraction values ('ngs@gmail.com', 'National Gallery Singapore', 'A008', '1 St Andrew Rd', '178957', 'Singapore', 'Singapore', '8888', '+65 6271 7000', 'Museum of Singapore & Southeast Asian arts housed in a restored municipal building dating to 1929.', 4, '10AM-7PM', 'NGS.jpg', 1);
insert into Attraction values ('sbg@gmail.com', 'Singapore Botanic Gardens', 'A009', '1 Cluny Road', '259569', 'Singapore', 'Singapore', '9999', '+65 6471 7138', '183-acre botanical gardens with sculptures, a swan lake & significant collection of tropical trees.', 4, '5AM-12PM', 'botanic.jpg', 1);
insert into Attraction values ('iosh@gmail.com', 'Ion Orchard Shopping Mall', 'A018', '2 Orchard Turn', '238801', 'Singapore', 'Singapore', '9090', 'not applicable', 'Modern, multi-level mall featuring designer clothing & accessory stores, along with dining options.', 4, '10AM-10PM', 'ionorchard.jpg', 1);
insert into Attraction values ('ionsky@gmail.com', 'ION SKY', 'A019', '2 Orchard Turn', '238801', 'Singapore', 'Singapore', 'oror', '+65 6238 8228', 'Modern indoor observation deck on the 56th floor with high-tech telescopes & dramatic city views.', 4, '2PM-8:30PM', 'ionsky.jpg', 1);
insert into Attraction values ('advcwp@gmail.com', 'Adventure Cove Waterpark', 'A020', '8 Sentosa Gateway, Sentosa Island', '098269', 'Singapore', 'Singapore', 'acac', '+65 6577 8888', 'Aquatic amusement park with an aquarium, waterslides, a wave pool, tubing, snorkeling & more.', 4, '10AM-6PM', 'adventurecove.jpg', 1);
insert into Attraction values ('sgflyer@gmail.com', 'Singapore Flyer', 'A021', '30 Raffles Avenue', '039803', 'Singapore', 'Singapore', 'sgflyer', '+65 6333 3311', 'Huge observation wheel opened in 2008 for views of the city plus high tea & butler-serviced flights.', 4, '8:30AM-10:30PM', 'singapore-flyer3.jpg', 1);
insert into Attraction values ('merlionpark@gmail.com', 'Merlion Park', 'A022', '1 Fullerton Rd', '049213', 'Singapore', 'Singapore', 'merlion', '+65 6736 6622', 'Merlion Park is a Singapore landmark and major tourist attraction, located at One Fullerton, Singapore, near the Central Business District (CBD).', 4, '24Hours', 'merlion.jpg', 1);
--Kuala Lumpur
insert into Attraction values ('sasbmy@gmail.com', 'Sultan Abdul Samad Building', 'A010', 'Jalan Raja, Kuala Lumpur City Centre', '50050', 'Kuala Lumpur', 'Malaysia', '1010', '+60 1-300-88-5050', 'Grand 1800s government building featuring copper domes & a large clocktower with a 1-ton bell.', 4, '24 Hours', 'sultan.jpg', 1);
insert into Attraction values ('aqklcc@gmail.com', 'Aquaria KLCC', 'A011', 'Kuala Lumpur Convention Centre Complex, Kuala Lumpur City Centre', '50088', 'Kuala Lumpur', 'Malaysia', '2020', '+603 2333 1888', 'Expansive aquarium offering 5,000 exhibits, a clear tunnel, feeding shows & shark cage dives.', 4, '10AM-8PM', 'aquariaklcc.jpg', 1);
insert into Attraction values ('centralmkt@gmail.com', 'Central Market', 'A012', 'Lot 3.04-3.06, Central Market Annexe, Jalan Hang Kasturi', '50050', 'Kuala Lumpur', 'Malaysia', '3030', '+603 2031 0399', 'Cultural heritage site with restored art deco facade offering shopping, eateries & an outdoor stage.', 4, '10AM-9:30PM', 'centralMarket.jpg', 1);
insert into Attraction values ('btcvs@gmail.com', 'Batu Caves', 'A013', 'Gombak,  Batu Caves', '68100', 'Selangor', 'Malaysia', '4040', '+60 1-300-88-5050', 'Batu Caves is a an iconic and popular tourist attraction in Selangor. Site of a Hindu temple and shrine, Batu Caves attracts thousands of worshippers and tourists, especially during the annual Hindu festival, Thaipusam.', 4, '10AM-8PM', 'batucave.jpg', 1);
insert into Attraction values ('pttklcc@gmail.com', 'Petronas Twin Towers', 'A003', 'Kuala Lumpur City Centre, Federal Territory of Kuala Lumpur', '50088', 'Kuala Lumpur', 'Malaysia', '3333', '+603 2331 8080', 'Soaring to a height of 451.9 metres, the 88-storey twin structure is Kuala Lumpur crown jewel. Majestic by day and dazzling at night, the PETRONAS Twin Towers is inspired by Tun Mahathir Mohamad vision for Malaysia to be a global player. Together with master architect Cesar Pelli, the international icon powerfully captures the nation ambitions and aspirations.', 5, '9AM-9PM', 'klcc_002.jpg', 1);
insert into Attraction values ('kllmy@gmail.com', 'Kuala Lumpur Tower', 'A023', '2, Jalan Puncak, Wilayah Persekutuan', '50250 ', 'Kuala Lumpur', 'Malaysia', 'kltower', '+603 2020 5444', 'One of the world tallest, this landmark tower offers scenic city views & a revolving restaurant.', 5, '9AM-10PM', 'kltower.jpg', 1);
insert into Attraction values ('slmy@gmail.com', 'Sunway Lagoon', 'A024', '3, Jalan PJS 11/11, Bandar Sunway, Selangor Darul Ehsan', '47500', 'Kuala Lumpur', 'Malaysia', 'sunway', '+603 5639 0000', 'Sprawling amusement park with a water zone, rides, a zoo & outdoor activities, plus dining & events.', 4, '10AM-6PM', 'sunway.jpg', 1);
insert into Attraction values ('suriaklcc@gmail.com', 'Suria KLCC', 'A025', '241, Kuala Lumpur City Centre, Wilayah Persekutuan', '50088', 'Kuala Lumpur', 'Malaysia', 'suria', '+603 2382 2828', 'Opened in 1998, this retail mall on 6 floors houses shops & services, plus eateries & a prayer room.', 4, '10AM-10PM', 'suriaklcc.jpg', 1);
insert into Attraction values ('nmmmy@gmail.com', 'National Mosque of Malaysia', 'A026', 'Jalan Perdana, Tasik Perdana, Wilayah Persekutuan', '50480', 'Kuala Lumpur', 'Malaysia', 'national', '+603 2693 7905', 'Hosting up to 15,000 worshippers, Malaysia national mosque has gardens, a library & a prayer hall.', 4, '10AM-5PM', 'nationalmosquekl.jpg', 1);
insert into Attraction values ('klbpmy@gmail.com', 'Kuala Lumpur Bird Park', 'A027', '920, Jalan Cenderawasih, Perdana Botanical Gardens, Federal Territory of Kuala Lumpur', '50480', 'Kuala Lumpur', 'Malaysia', 'klbirdpark', '+603 2272 1010', 'Thousands of colorful birds in free-roaming areas, walk-through aviaries & traditional enclosures.', 4, '9AM-6PM', 'kl_birdpark.jpg', 1);
--Jakarta
insert into Attraction values ('nmidn@gmail.com', 'National Monument', 'A005', 'Gambir, Central Jakarta City', 'not applicable', 'Jakarta', 'Indonesia', '5555', '+62 21 3822255', 'Well-known obelisk built to commemorate Indonesian independence from the Netherlands.', 5, '7AM-12AM', 'national-monument-indonesia-01.jpg', 1);
insert into Attraction values ('smarttravelorganization@gmail.com', 'Ancol Dreamland', 'A014', 'Jl. Lodan Timur No.7 Jakarta Utara DKI', '14430', 'Jakarta', 'Indonesia', '123456', '+62 21 29222222', 'Family beachfront resort offering a theme park, water-based rides, multiple hotels & a golf course.', 4, '9AM-8PM', 'ancol.jpg', 1);
insert into Attraction values ('imjidn@gmail.com', 'Istiqlal Mosque, Jakarta', 'A015', 'Jl. Taman Wijaya Kusuma, Central Jakarta', '10710', 'Jakarta', 'Indonesia', '6060', '+62 21 3811708', 'This mosque features a contemporary design & is the largest in Southeast Asia.', 4, '9AM-5PM', 'istiqlal.jpg', 1);
insert into Attraction values ('nmoidn@gmail.com', 'National Museum of Indonesia', 'A016', 'Jl. Medan Merdeka Barat No.12, Kota Jakarta Pusat, Daerah Khusus Ibukota', '10110', 'Jakarta', 'Indonesia', '7070', '+62 21 3868172', 'Museum containing historical & archaeological exhibits, from ceramics to statues & coins.', 4, '8AM-4PM', 'nationalmuseumindo.jpg', 1);
insert into Attraction values ('tmiiidn@gmail.com', 'Taman Mini Indonesia Indah', 'A017', 'Jl. Cipayung Raya, East Jakarta', '13840', 'Jakarta', 'Indonesia', '8080', '+62 21 8401687', 'Also known as Beautiful Indonesia Miniature Park and is a synopsis of Indonesian culture, with virtually all aspects of daily life in Indonesia provinces encapsulated in separate pavilions with the collections of rumah adat as the example of Indonesian vernacular architecture, clothing, dances and traditions are all depicted impeccably.', 4, '7AM-10PM', 'tamanmini.jpg', 1);
insert into Attraction values ('jhmidn@gmail.com', 'Jakarta History Museum', 'A028', 'Jalan Taman Fatahillah No.1, Kota Tua, Pinangsia, Tamansari, Kota Jakarta Barat, Daerah Khusus Ibukota', '11110', 'Jakarta', 'Indonesia', 'jakartahistory', '+62 21 6929101', 'Set in an 18th-century building, this museum houses an assortment of exhibits on Jakarta history.', 4, '8AM-5PM', 'jakartahistory.jpg', 1);
insert into Attraction values ('twalidn@gmail.com', 'Taman Wisata Alam Mangrove, Angke Kapuk', 'A029', 'Jalan Garden House RT.8/RW.1 Kamal Muara Penjaringan, RT.8/RW.1, Kamal Muara, Penjaringan, Daerah Khusus Ibukota', '14470', 'Jakarta', 'Indonesia', 'mangrove', '+62 21 29033066', 'This wildlife sanctuary features numerous mangrove trees, as well as monkeys & a variety of birds.', 4, '7AM-6PM', 'mangrove.jpg', 1);
insert into Attraction values ('swidn@gmail.com', 'Sea World Indonesia', 'A030', 'Jalan Lodan Timur No.7, RW.10, Kota Tua, Ancol, Pademangan, Kota Jkt Utara, Daerah Khusus Ibukota', '14430', 'Jakarta', 'Indonesia', 'seaworld', '+62 21 29222222', 'Sizable, contemporary aquarium with sharks, various feeding shows, a touch tank & concessions.', 4, '9AM-6PM', 'seaworld.jpg', 1);
insert into Attraction values ('awaidn@gmail.com', 'Atlantis Water Adventure', 'A031', 'Taman Impian Jaya, Jalan Lodan Timur No.7, Kota Tua, Ancol, Pademangan, Kota Jkt Utara, Daerah Khusus Ibukota', '14430', 'Jakarta', 'Indonesia', 'atlantis', '+62 21 29222222', 'Sizable waterpark with lots of greenery & attractions such as a wave pool & floating playground.', 4, '8AM-6PM', 'atlantis.jpg', 1);
insert into Attraction values ('slpidn@gmail.com', 'Situ Lembang Park', 'A032', 'Jl. Lembang Terusan D-59, Kec. Menteng, RT.6/RW.5, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota', '12910', 'Jakarta', 'Indonesia', 'situ', '+62 21 3144969', 'This quaint green space around a fishing pond has shade trees, paved paths & kids play equipment.', 4, '9AM-7PM', 'taman-situ-lembang.jpg', 1);
--Beijing
insert into Attraction values ('gwccn@gmail.com', 'Great Wall of China', 'A006', 'Huairou', 'not applicable', 'Beijing', 'China', '6666', 'not applicable', 'Ancient world wonder that winds for more than 5,500 miles across China, with towers & walkways.', 5, '7:30AM-5:30PM', 'dreamstime_m_21049254.jpg', 1);
insert into Attraction values ('fccn@gmail.com', 'Forbidden City', 'A033', '4 Jingshan Front St, Dongcheng Qu', '100006', 'Beijing', 'China', 'forbidden', '+86 10 8500 7421', 'Massive palace complex & museum featuring tours, art exhibits & restaurants.', 4, '8:30AM-5PM', 'forbidden.jpg', 1);
insert into Attraction values ('spcn@gmail.com', 'Summer Palace', 'A034', '19 Xinjiangongmen Rd, Haidian Qu', '100000', 'Beijing', 'China', 'summer', '+86 10 6288 1144', 'Lakefront palace renowned for its ornate temples & artworks plus its lavishly landscaped grounds.', 5, '8:30AM-5:30PM', 'SummerPalace_Beijing_11.jpg', 1);
insert into Attraction values ('thcn@gmail.com', 'Temple of Heaven', 'A035', '1 Tiantan E Rd, Dongcheng Qu', 'not applicable', 'Beijing', 'China', 'heaven', '+86 10 6702 8866', 'Renowned temple complex from 1420 featuring distinctive circular buildings set in a popular park.', 5, '8AM-5PM', 'heaventemple.jpg', 1);
insert into Attraction values ('bdycn@gmail.com', 'Badaling', 'A036', 'Yanqing', 'not applicable', 'Beijing', 'China', 'badaling', '+86 10 6912 1226', 'Part of the Great Wall of China built during the Ming Dynasty & rising on a mountain to 3,282 feet.', 5, '7:30AM–6PM', 'Badaling great wall.jpg', 1);
insert into Attraction values ('bhpkcn@gmail.com', 'Beihai Park', 'A037', '1 Wenjin St, Xicheng Qu', '100034', 'Beijing', 'China', 'beihai', '+86 10 6403 3225', 'First opened to the public in 1925, this 69-hectare former imperial park features a massive lake.', 5, '6:30AM–9PM', 'beihai.jpg', 1);
insert into Attraction values ('jpcn@gmail.com', 'Juyong Pass', 'A038', 'Changping', 'not applicable', 'Beijing', 'China', 'juyong', '+86 10 6977 1665', 'Juyong Pass is a mountain pass located in the Changping District of Beijing Municipality, over 50 kilometers from central Beijing. The Great Wall of China.', 4, '6AM–5PM', 'juyongpass.jpg', 1);
insert into Attraction values ('bnscn@gmail.com', 'Beijing National Stadium', 'A039', '1 National Stadium S Rd, Chaoyang Qu', '100101', 'Beijing', 'China', 'birdnest', '+86 10 8437 3008', 'Iconic stadium known as the Bird Nest built for the Olympics & now hosting concerts & sports.', 4, '8AM–8PM', 'birdnest.jpg', 1);
insert into Attraction values ('bnaccn@gmail.com', 'Beijing National Aquatics Center', 'A040', '11 Tianchen E Rd, Chaoyang Qu', 'not applicable', 'Beijing', 'China', 'aquatics', '+86 10 8437 0112', 'Contemporary cube-shaped building built for the Olympics, offering swimming pools & a water park.', 4, '8AM–10PM', 'Aquatics.jpg', 1);
insert into Attraction values ('shichahai@gmail.com', 'Shichahai', 'A041', 'Xicheng', 'not applicable', 'Beijing', 'China', 'shichahai', '+86 10 6618 5806', 'Shichahai is a historic scenic area consisting of three lakes in the north of central Beijing. They are located to the north-west of the Forbidden City and north of the Beihai Lake.', 5, '9AM–9PM', 'shichahai.jpg', 1);
--Yangon
insert into Attraction values ('spmyr@gmail.com', 'Shwedagon Pagoda', 'A007', 'Bahan Township', 'not applicable', 'Yangon', 'Myanmar', '7777', '+95 1 375 767', 'Historic 99-m. Buddhist temple plated in gold, offering tours, a visitor center & an exhibit.', 5, '4AM-10PM', 'shwedagon-pagoda.jpg', 1);
insert into Attraction values ('klmyr@gmail.com', 'Kandawgyi Lake', 'A042', 'Natmauk Road and Kandawgyi Kanpat Road', 'not applicable', 'Yangon', 'Myanmar', 'kandawgyi', '+95 1 295 744', '150-acre colonial-era reservoir with a park, paths for exercise & views of the Shwedagon Pagoda.', 5, '4AM-10PM', 'kandawgyi.jpg', 1);
insert into Attraction values ('bmmyr@gmail.com', 'Bogyoke Market', 'A043', 'No(66,67,68,69,78,79), East D, Bogyoke AungSan Market, Pabedan Township', '11141', 'Yangon', 'Myanmar', 'bogyoke', '+95 1 295 266', 'Known for its colonial architecture and inner cobblestone streets, the market is a major tourist destination, dominated by antique, Burmese handicraft and jewellery shops, art galleries, and clothing stores. Bogyoke Market is a popular black market location to exchange currency. The market also has a number of stores for local shoppers, selling medicine, foodstuffs, garments and foreign goods.', 4, '10:30AM-5PM', 'bogyokemarket.jpg', 1);
insert into Attraction values ('ychmyr@gmail.com', 'Yangon City Hall', 'A044', 'Maha Bandula Road', 'not applicable', 'Yangon', 'Myanmar', 'cityhall', '+95 1 543 217', 'Yangon City Hall is the city hall of Yangon, the largest city of Burma, and the seat of the city administrative body, Yangon City Development Committee.', 4, '10AM-4PM', 'ygncityhall.jpg', 1);
insert into Attraction values ('mhpmyr@gmail.com', 'Maha Bandula Park', 'A045', 'Maha Bandula Park Street', 'not applicable', 'Yangon', 'Myanmar', 'bandula', '+95 1 543 222', 'Busy, grass-filled city park with an obelisk monument, fountains & adjacent food vendors.', 4, '5AM-6PM', 'bandulapark.jpg', 1);
insert into Attraction values ('gasmmyr@gmail.com', 'General Aung San Museum', 'A046', '25, Bo Gyoke Museum Ln', 'not applicable', 'Yangon', 'Myanmar', 'aungsan', '+95 1 345 651', 'Final residence of the founder of modern Myanmar, with exhibits on his life & personal possessions.', 4, '9:30AM-4:30PM', 'BogyokeAungSanMuseum_1.jpg', 1);
insert into Attraction values ('nrvmyr@gmail.com', 'National Races Village', 'A047', 'Shu Khin Thar, Thar Kay Ta Township', 'not applicable', 'Yangon', 'Myanmar', 'village', '+95 1 547 055', 'not applicable', 4, '7AM-5:30PM', 'racevillage.jpg', 1);
insert into Attraction values ('kbtmyr@gmail.com', 'Kyauktawgyi Buddha Temple', 'A048', 'Mindhamma Hill, Mingaladon Township', 'not applicable', 'Yangon', 'Myanmar', 'kyauktawgyi', '+95 1 644 860', 'The temple houses a 25 feet (7.6 m) feet tall Buddha called the Loka Chantha Abhaya Labha Muni which is carved out of a single piece of white marble quarried in Sagyin Hill, Madaya Township, Mandalay Region.', 4, '7AM-5PM', 'kyauktawgyi.jpg', 1);
insert into Attraction values ('spmyr@gmail.com', 'Sule Pagoda', 'A049', 'Junction of Sule Pagoda Road', '11141', 'Yangon', 'Myanmar', 'sulepagoda', '+95 1 371 561', 'The Sule Pagoda is a Burmese stupa located in the heart of downtown Yangon, occupying the centre of the city and an important space in contemporary Burmese politics, ideology and geography.', 4, '7AM-6PM', 'sulepagoda.jpg', 1);
insert into Attraction values ('nmmmyr@gmail.com', 'National Museum of Myanmar', 'A050', '66 Pyay Rd', '11191', 'Yangon', 'Myanmar', 'museum', '+95 1 378 652', 'Modern 5-story museum featuring exhibitions on Burmese history & culture, including folk art.', 4, '9:30AM-4:30PM', 'nationalmuseummyanmar.jpg', 1);

create table Hotel
(
hotelID			int identity(1,1) not null constraint pk_Hotel primary key,
orgEmail		varchar(100),
name			varchar(50),
regID			varchar(50),
address			varchar(500),
postalCode		varchar(50),
city			varchar(100),
country			varchar(50),
password		varchar(30),
contactNo		varchar(70),
description		varchar(1000),
photo			varchar(70),
license			varchar(40),
starRating		int,
verification	bit
);

--insert statement for Hotel
--Singapore
insert into Hotel values ('mandarinorchard@gmail.com', 'Mandarin Orchard', 'H001', '333 Orchard Road', '238867', 'Singapore', 'Singapore', 'hh1', '	+65 6737 2200', 'Grand hotel featuring 3 Asian restaurants, a trendy bar, an outdoor pool & a tennis court.', 'mandarin.jpg', 'SH123', 5, 1);
insert into Hotel values ('mbs@gmail.com', 'Marina Bay Sands', 'H002', '10 Bayfront Avenue', '018956', 'Singapore', 'Singapore', 'hh2', '+65 6688 8888', 'Located along the Marina Bay waterfront, Marina Bay Sands features three cascading hotel towers topped by an extraordinary sky park, floating crystal pavilions, a lotus-inspired Museum, retail stores featuring cutting-edge labels and international luxury brands, trendy Celebrity Chef restaurants, endless entertainment at the theatres, the hottest night clubs and a Las Vegas-style casino.', 'marina-bay-sands_2.jpg', 'SH124', 5, 1);
insert into Hotel values ('cpcasg@gmail.com', 'Crowne Plaza Changi Airport', 'H003', '75 Airport Boulevard', '819664', 'Singapore', 'Singapore', 'hh3', '+65 6823 5388', 'Crowne Plaza Changi Airport offers stylish and convenient accommodation with seamless connectivity to all terminals and Mass Rapid Transit.', 'crowneplaza.jpg', 'SH126', 5, 1);
insert into Hotel values ('hiltonsg@gmail.com', 'Hilton Singapore', 'H008', '581 Orchard Rd', '238883', 'Singapore', 'Singapore', 'hh8', '+65 6737 2233', 'Sophisticated rooms & suites in a refined hotel with fine dining, a hip rooftop bar & a pool.', 'hiltonsg.jpg', 'SH122', 4, 1);
insert into Hotel values ('regentsg@gmail.com', 'Regent Hotel', 'H009', '1 Cuscaden Rd', '249715', 'Singapore', 'Singapore', 'hh9', '+65 6733 8888', 'Polished rooms & suites in a premium hotel with international dining & a bar, plus an outdoor pool.', 'regenthotel.jpg', 'SH177', 5, 1);
insert into Hotel values ('rendezvoussg@gmail.com', 'Rendezvous Hotel Singapore', 'H010', '9 Bras Basah Rd', '189559', 'Singapore', 'Singapore', 'hh10', '+65 6336 0220', 'Stylish hotel offering a chic lounge, fitness facilities & an outdoor pool, plus dining options.', 'rendezvous.jpg', 'SH222', 5, 1);
insert into Hotel values ('carltonsg@gmail.com', 'Carlton Hotel Singapore', 'H011', '76 Bras Basah Rd', '189558', 'Singapore', 'Singapore', 'hh11', '+65 6338 8333', 'Upscale hotel offering sophisticated rooms & suites, plus 3 restaurants, a spa & an outdoor pool.', 'carltonsg.jpg', 'SH888', 5, 1);
insert into Hotel values ('amarasg@gmail.com', 'Amara Singapore', 'H012', '165 Tg Pagar Rd', '088539', 'Singapore', 'Singapore', 'hh12', '+65 6879 2555', 'Refined rooms and amenities in a posh hotel with varied fine dining, a Bali-inspired pool and a spa.', 'amarasg.jpg', 'SH258', 4, 1);
insert into Hotel values ('novotelsg@gmail.com', 'Novotel Singapore Clarke Quay', 'H013', '177A River Valley Rd', '179031', 'Singapore', 'Singapore', 'hh13', '+65 6338 3333', 'Polished rooms & suites in a high-end hotel featuring an outdoor pool, 2 bars & 3 restaurants.', 'novotelcq.jpg', 'SH666', 4, 1);
insert into Hotel values ('holidayinnsg@gmail.com', 'Holiday Inn Singapore Atrium', 'H014', '317 Outram Rd', '169075', 'Singapore', 'Singapore', 'hh14', '+65 6733 0188', 'Informal lodging with 2 restaurants & a bar, plus an outdoor pool, a 24/7 gym & a free area shuttle.', 'holidayinnsg.jpg', 'SH325', 4, 1);
--Kuala Lumpur
insert into Hotel values ('rwgmy@gmail.com', 'Resorts World Genting', 'H004', 'Genting Highlands', '69000', 'Pahang', 'Malaysia', 'hh4', '+60 3-6101 1118', 'Bright, fresh, and exciting, Resort Hotel offers a wide array of amenities and facilities for business and leisure alike. Set amidst the cool comfort of a majestic forest landscape, Resort Hotel caters to visitors from all walks of life.', '69854924.jpg', 'SH127', 5, 1);
insert into Hotel values ('hiltonmy@gmail.com', 'Hilton Kuala Lumpur', 'H015', '3, Jalan Stesen Sentral, Kuala Lumpur Sentral, Wilayah Persekutuan', '50470', 'Kuala Lumpur', 'Malaysia', 'hh15', '+60 3-2264 2264', 'Sophisticated rooms & suites in a refined hotel with fine dining, a hip rooftop bar & a pool.', 'KUL00016-07.jpg', 'SH369', 5, 1);
insert into Hotel values ('royalechulanmy@gmail.com', 'Royale Chulan Kuala Lumpur', 'H016', '5, Jalan Conlay, Kuala Lumpur Sentral, Wilayah Persekutuan', '50450', 'Kuala Lumpur', 'Malaysia', 'hh16', '+60 3-2688 9688', 'Elegant lodging offering 6 bars & restaurants, plus an outdoor pool, a fitness centre & a plush spa.', 'HI367027363.jpg', 'SH254', 5, 1);
insert into Hotel values ('concordemy@gmail.com', 'Concorde Hotel Kuala Lumpur', 'H017', '2, Jalan Sultan Ismail, Kuala Lumpur Sentral, Wilayah Persekutuan', '50250', 'Kuala Lumpur', 'Malaysia', 'hh17', '+60 3-2144 2200', 'Contemporary rooms & suites in a polished property featuring a pool, 2 bars & 5 restaurants.', 'concorde.jpg', 'SH148', 4, 1);
insert into Hotel values ('aloftmy@gmail.com', 'Aloft Kuala Lumpur Sentral', 'H018', 'N0 5, Jalan Stesen Sentral, Federal Territory of Kuala Lumpur', '50470', 'Kuala Lumpur', 'Malaysia', 'hh18', '+60 3-2723 1000', 'Conveniently located in the new business hub of Kuala Lumpur, Aloft Kuala Lumpur Sentral is home to 482 rooms & suites, multiple meeting rooms, ballrooms, restaurants, happening bars and only steps away from KL Sentral station, the largest transport hub in South East Asia.', 'aloftkl.jpg', 'SH368', 4, 1);
insert into Hotel values ('intercontinentalmy@gmail.com', 'InterContinental Kuala Lumpur', 'H019', '165, Jalan Ampang, Kuala Lumpur, Federal Territory of Kuala Lumpur', '50450', 'Kuala Lumpur', 'Malaysia', 'hh19', '+60 3-2782 6000', 'Refined choice offering traditional rooms & suites, plus a spa, an outdoor pool and multiple bars.', 'intercontinental.jpg', 'SH124', 5, 1);
insert into Hotel values ('hotelcapitolmy@gmail.com', 'Hotel Capitol Kuala Lumpur', 'H020', 'Bukit Bintang Street, Bukit Bintang, Federal Territory of Kuala Lumpur', '55100', 'Kuala Lumpur', 'Malaysia', 'hh20', '+60 3-2143 7000', 'Upscale rooms & suites in a city centre setting with 2 restaurants, a bar & conference facilities.', 'hotelcapitol.jpg', 'SH333', 3, 1);
insert into Hotel values ('dorsettmy@gmail.com', 'Dorsett Kuala Lumpur', 'H021', '172, Jalan Imbi Pudu, Wilayah Persekutuan', '55100', 'Kuala Lumpur', 'Malaysia', 'hh21', '+60 3-2716 1000', 'High-rise, low-key hotel with polished quarters, plus 3 restaurants, an outdoor pool & a gym.', 'dorsettkl.jpg', 'SH444', 4, 1);
insert into Hotel values ('lemeridienmy@gmail.com', 'Le Méridien Kuala Lumpur', 'H022', '2, Jalan Stesen Sentral, Kuala Lumpur Sentral, Wilayah Persekutuan', '50470', 'Kuala Lumpur', 'Malaysia', 'hh22', '+60 3-2263 7888', 'Modern hotel with an Italian restaurant & a steakhouse, plus a spa & an outdoor pool.', 'lemeridien.jpg', 'SH789', 5, 1);
insert into Hotel values ('majesticmy@gmail.com', 'The Majestic Hotel Kuala Lumpur', 'H023', '5, Jalan Sultan Hishamuddin, Tasik Perdana, Wilayah Persekutuan', '50000', 'Kuala Lumpur', 'Malaysia', 'hh23', '+60 3-2785 8000', 'Posh rooms & suites in an upscale hotel offering international dining & a piano bar, plus a spa.', 'hotelmajestic.jpg', 'SH786', 5, 1);
--Jakarta
insert into Hotel values ('kempinskidn@gmail.com', 'Hotel Indonesia Kempinski Jakarta', 'H005', 'Hotel Indonesia Kempinski Jakarta Jl. MH Thamrin No. 1', '10310', 'Jakarta', 'Indonesia', 'hh5', '+62 21 2358 3800', 'Sophisticated rooms in a high-end hotel offering multiple dining options, a rooftop pool & a spa.', 'HI360763148.jpg', 'SH128', 5, 1);
insert into Hotel values ('fairmonthoteljkt@gmail.com', 'Fairmont Jakarta', 'H024', 'Gelora Bung Karno, Jl. Asia Afrika No.8', '10270', 'Jakarta', 'Indonesia', '123456', '+62 21 29703333', 'Refined rooms, some with skyline views, in a posh property offering 9 restaurants, 3 bars & a spa.', 'fairmont.jpg', 'SH114', 5, 1);
insert into Hotel values ('aryadutaidn@gmail.com', 'Aryaduta Jakarta', 'H025', 'Jl. Prajurit KKO Usman dan Harun No.44-48, RT.7/RW.1, Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota', '10110', 'Jakarta', 'Indonesia', 'hh25', '+62 21 23521234', 'Premium venue offering elegant rooms & suites, plus 4 restaurants, a bar & an outdoor pool.', '412060_84_z.jpg', 'SH458', 5, 1);
insert into Hotel values ('grandkemandidn@gmail.com', 'Grandkemang Jakarta', 'H026', 'Jl. Kemang Raya, RT.14/RW.1, Bangka, Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota', '12730', 'Jakarta', 'Indonesia', 'hh26', '+62 21 7194121', 'Refined option featuring upmarket rooms & dining, plus a pool with a bar & a business center.', 'grandkemang.jpg', 'SH457', 4, 1);
insert into Hotel values ('alilaidn@gmail.com', 'Alila Jakarta', 'H027', 'Jl. Pecenongan No.Kav.7-17, RT.2/RW.3, Kb. Klp., Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota', '10120', 'Jakarta', 'Indonesia', 'hh27', '+62 21 2316008', 'Hip hotel with stylish minimalist design offering free breakfast, 2 restaurants & a rooftop pool.', 'alilajakarta.jpg', 'SH568', 4, 1);
insert into Hotel values ('saripacificidn@gmail.com', 'Sari Pacific Jakarta', 'H028', 'Jl. M.H. Thamrin No.6, RT.2/RW.1, Kb. Sirih, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota', '10340', 'Jakarta', 'Indonesia', 'hh28', '+62 21 29932888', 'Trendy hotel featuring 2 restaurants & a spa, plus a fitness center & an outdoor pool.', '14392_100_z.jpg', 'SH325', 5, 1);
insert into Hotel values ('mercureidn@gmail.com', 'Mercure Jakarta Kota', 'H029', 'Jalan Hayam Wuruk No.123, RT.4/RW.6, Mangga Besar, Tamansari, RT.4/RW.6, Mangga Besar, Tamansari, Kota Jakarta Barat, Daerah Khusus Ibukota', '11160', 'Jakarta', 'Indonesia', 'hh29', '+62 21 6248680', 'Modern rooms in a bright hotel with 2 restaurants, a bar & an outdoor pool, plus a spa.', 'mercurejk.jpg', 'SH555', 4, 1);
insert into Hotel values ('sparksmy@gmail.com', 'Sparks Jakarta', 'H030', 'Jl. Mangga Besar No.42, RT.2/RW.2, Kota Tua, Taman Sari, Tamansari, Kota Jakarta Barat, Daerah Khusus Ibukota', '11150', 'Jakarta', 'Indonesia', 'hh30', '+62 21 6252534', 'Modern rooms in a colorful mid-rise building, plus an outdoor pool & a happening neon-lit bar.', 'sparkshotel.jpg', 'SH999', 3, 1);
insert into Hotel values ('granmeliaidn@gmail.com', 'Gran Meliá Jakarta', 'H031', 'Jl. H. R. Rasuna Said No.Kav X-0, RT.5/RW.4, Kuningan Tim., Setia Budi, Kota Jakarta Selatan, Daerah Khusus Ibukota', '12920', 'Jakarta', 'Indonesia', 'hh31', '+62 21 5268080', 'Contemporary property with free Wi-Fi, 3 restaurants & a spa, plus a pool & meeting space.', 'granmelia.jpg', 'SH1010', 5, 1);
insert into Hotel values ('ascottidn@gmail.com', 'Ascott Jakarta', 'H032', 'Jl. Kebon Kacang Raya No.2, Kb. Melati, Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota', '10230', 'Jakarta', 'Indonesia', 'hh32', '+62 21 3916868', 'Stylish apartments with kitchens in a posh hotel offering a restaurant, a gym & an outdoor pool.', 'ascottjk.jpg', 'SH5050', 5, 1);
--Beijing
insert into Hotel values ('nwbhcn@gmail.com', 'New World Beijing Hotel', 'H006', 'No. 8 Qinian Street, Chongwenmen, Dongcheng District', '100062', 'Beijing', 'China', 'hh6', '+86 10 5960 8888', 'Stylish modern hotel with upscale restaurants & a rooftop bar, plus an indoor pool & a day spa.', 'newworldbeijing.jpg', 'SH150', 5, 1);
insert into Hotel values ('nuohbcn@gmail.com', 'NUO Hotel Beijing', 'H033', 'No. 2, No. 2, Jiangtai Road, Chaoyang Distric', '100016', 'Beijing', 'China', 'hh33', '+86 10 5926 8888', 'Posh lodging with modern rooms & 4 polished restaurants, plus 2 chic bars, an indoor pool & a spa.', 'nuohotel.jpg', 'SH115', 5, 1);
insert into Hotel values ('fairmontbhcn@gmail.com', 'Fairmont Beijing Hotel', 'H034', '8 Yong An Dong Li Jian Guo Men Wai Avenue, Chaoyang District', '100022', 'Beijing', 'China', 'hh34', '+86 10 8511 7777', 'Sophisticated hotel featuring city-view rooms & suites, plus 2 restaurants, a spa & an indoor pool.', 'fairmontbj.jpg', 'SH117', 5, 1);
insert into Hotel values ('primehotelcn@gmail.com', 'Prime Hotel Beijing', 'H035', '2 Wangfujing St, WangFuJing, Dongcheng Qu, Beijing Shi', '100006', 'Beijing', 'China', 'hh35', '+86 10 5816 9999', 'High-end hotel featuring indoor & outdoor pools, a spa, 3 restaurants & a karaoke room.', 'primebeijing.jpg', 'SH114', 5, 1);
insert into Hotel values ('kerryhotelcn@gmail.com', 'Kerry Hotel Beijing', 'H036', '1 Guanghua Rd, GuoMao, Chaoyang Qu, Beijing Shi', '100020', 'Beijing', 'China', 'hh36', '+86 10 6561 8833', 'Upscale rooms & suites in a high-end hotel with an indoor pool, plus multiple bars & restaurants.', 'HBKC_mainBG1.jpg', 'SH112', 5, 1);
insert into Hotel values ('waldorfastoriacn@gmail.com', 'Waldorf Astoria Beijing', 'H037', '5-15 Jinyu Hutong, DongDan, Dongcheng Qu, Beijing Shi', '100006', 'Beijing', 'China', 'hh37', '+86 10 8520 8989', 'Chic quarters & posh dining choices in a hotel with a pool, a spa & a Ming Dynasty-inspired patio.', 'astoria.jpg', 'SH113', 5, 1);
insert into Hotel values ('peninsulabeijingcn@gmail.com', 'The Peninsula Beijing', 'H038', '8 Jinyu Hutong, DongDan, Dongcheng Qu, Beijing Shi', '100006', 'Beijing', 'China', 'hh38', '+86 10 8516 2888', 'Modern accommodation in the Wangfujing district, with free Wi-Fi, plus 2 restaurants, a pool & spa.', 'peninsulabeijing.jpg', 'SH165', 5, 1);
insert into Hotel values ('ritanhotelcn@gmail.com', 'Ritan Hotel', 'H039', '1 Ritan Rd, Chaoyang Qu, Beijing Shi', '100020', 'Beijing', 'China', 'hh39', '+86 10 8563 5588', 'Upscale hotel offering refined rooms, some with balconies, plus an indoor pool & 3 restaurants.', 'ritanhotel.jpg', 'SH164', 5, 1);
insert into Hotel values ('rosewoodbeijingcn@gmail.com', 'Rosewood Beijing', 'H040', 'Beijing-Guangzhou Center, Hujialou, Chaoyang District', '100020', 'Beijing', 'China', 'hh40', '+86 10 6597 8888', 'Sophisticated quarters in a ritzy hotel with an indoor pool & a luxe spa, plus upscale restaurants.', 'rosewood.jpg', 'SH156', 5, 1);
insert into Hotel values ('novotelxinqiaocn@gmail.com', 'Novotel Beijing Xin Qiao', 'H041', '1 Chongwenmen W St, Dongcheng Qu, Beijing Shi', '100005', 'Beijing', 'China', 'hh41', '+86 10 6513 3366', 'Modern quarters in a relaxed hotel with 4 restaurants & a coffee shop, plus a bar & a tennis court.', 'Novotel_Beijing.jpg', 'SH159', 4, 1);
--Yangon
insert into Hotel values ('meliamyr@gmail.com', 'Meliá Yangon', 'H007', '192, Kaba Aye Pagoda Road, Bahan Township', '07008', 'Yangon', 'Myanmar', 'hh7', '+95 1 934 5000', 'Chic rooms & suites in an upscale hotel offering 3 restaurants, a spa & an outdoor pool with a bar.', 'melia.jpg', 'SH330', 5, 1);
insert into Hotel values ('hotelygnmyr@gmail.com', 'Hotel Yangon', 'H042', 'No. 91/93, Corner of Pyay Road & Kabaraye Pagoda Road, 8th Mile Junction, Mayangone Township', 'not applicable', 'Yangon', 'Myanmar', 'hh42', '+95 1 667 708', 'Understated quarters in a laid-back hotel offering restaurants, a spa & a gym, plus free breakfast.', 'hotelyangon.jpg', 'SH518', 3, 1);
insert into Hotel values ('novotelygnmaxmyr@gmail.com', 'Novotel Yangon Max', 'H043', '459 Pyay Road Kamayut Tsp', 'not applicable', 'Yangon', 'Myanmar', 'hh43', '+95 1 230 5858', 'Sophisticated lodging offering 3 restaurants, 4 bars & an outdoor pool, plus massages.', 'novotelygnmax.jpg', 'SH159', 5, 1);
insert into Hotel values ('lotteygnmyr@gmail.com', 'Lotte Hotel Yangon', 'H044', 'No. 82, Sin Phyu Shin Avenue Pyay Road, 6½ Mile, Ward 11', 'not applicable', 'Yangon', 'Myanmar', 'hh44', '+95 1 935 1000', 'Refined hotel featuring indoor & outdoor pools, plus dining, a cocktail lounge & lake views.', 'lottehotel.jpg', 'SH160', 5, 1);
insert into Hotel values ('parkroyalygnmyr@gmail.com', 'PARKROYAL Yangon', 'H045', '33 Alan Pya Phaya Road, Dagon Township', '11191', 'Yangon', 'Myanmar', 'hh45', '+95 1 250 388', 'Swanky hotel offering posh rooms & suites, plus a hip restaurant, an outdoor pool, a gym & a spa.', 'parkroyal.jpg', 'SH161', 4, 1);
insert into Hotel values ('sedonaygnmyr@gmail.com', 'Sedona Hotel Yangon', 'H046', 'No. 1 Kaba Aye Pagoda Road, Yankin Township', 'not applicable', 'Yangon', 'Myanmar', 'hh46', '+95 1 860 5377', 'Upscale property featuring polished rooms & suites, plus lake views, a pool & multiple restaurants.', 'sedonaygn.jpg', 'SH167', 5, 1);
insert into Hotel values ('citystarmyr@gmail.com', 'City Star Hotel', 'H047', 'No. 169/171, Maha Bandoola Garden Street, Kyauktada Tsp', 'not applicable', 'Yangon', 'Myanmar', 'hh47', '+95 1 370 919', 'Subdued quarters in a casual hotel with 24-hour room service, a restaurant & a bar, plus free Wi-Fi.', 'citystarygn.jpg', 'SH133', 3, 1);
insert into Hotel values ('westernchinatownmyr@gmail.com', 'Best Western Chinatown Hotel', 'H048', '127/137, Anawrahta Road, Corner of Lanmadaw Street and, Anawrahta Road, Downtown Area, Latha Township', '11131', 'Yangon', 'Myanmar', 'hh48', '+95 1 251 080', 'Modern hotel offering warm, elegant rooms, some with pagoda views, plus a free breakfast buffet.', 'bestwesternygn.jpg', 'SH134', 4, 1);
insert into Hotel values ('panoramaygnmyr@gmail.com', 'Panorama Hotel Yangon', 'H049', 'No.294-300, Pansodan Street, Kyauktada Township', 'not applicable', 'Yangon', 'Myanmar', 'hh49', '+95 1 253 077', 'Unassuming rooms & suites in a low-key hotel offering a restaurant & a free breakfast buffet.', 'panorama.jpg', 'SH165', 3, 1);
insert into Hotel values ('chatriumygnmyr@gmail.com', 'Chatrium Hotel Royal Lake Yangon', 'H050', '40, Natmauk Road, Tamwe Township', '11211', 'Yangon', 'Myanmar', 'hh50', '+95 1 544 500', 'High-end hotel featuring multiple bars & restaurants, plus an outdoor pool & a spa.', 'chatriumhotel.jpg', 'SH866', 4, 1);

create table Restaurant
(
RestaurantID	int identity(1,1) not null constraint pk_Restaurant primary key,
orgEmail		varchar(100),
name			varchar(100),
regID			varchar(30),
address			varchar(500),
postalCode		varchar(50),
city			varchar(30),
country			varchar(50),
password		varchar(30),
contactNo		varchar(50),
description		varchar(1000),
license			varchar(60),
starRating		int,
photo			varchar(70),
openingHours	varchar(50),
verification	bit
);

--insert statement for Restaurant
--Singapore
insert into Restaurant values ('tunglok@gmail.com', 'Tunglok Signatures', 'R001', '1 Tanglin Rd, #02-18 , Orchard Parade Hotel', '247905', 'Singapore', 'Singapore', '123456', '+65 6834 0660', 'TungLok Group is Singapore’s leading restaurant chain offering a distinct and multi-sensory dining experience at more than 30 restaurants in SINGAPORE, BEIJING, SHANGHAI, WUHAN, TOKYO, JAKARTA, MEDAN and VIETNAM.', 'RR001', 5, 'tunglok.jpg', '10AM-10PM', 1);
insert into Restaurant values ('timhowan@gmail.com', 'Tim Ho Wan', 'R002', '68 Orchard Rd, 01-29A/52, Plaza Singapura', '238839', 'Singapore', 'Singapore', '123456', '+65 6251 2000', 'Tim Ho Wan is a Chinese dimsum restaurant chain that originated in Hong Kong. It now has 45 locations around Hong Kong, China, Taiwan, Singapore, the Philippines, Australia, Vietnam, Malaysia, Thailand and the United States.', 'RR156', 5, 'timhowan.jpg', '9AM-10PM', 1);
insert into Restaurant values ('astonssg@gmail.com', 'Astons Steak & Salad', 'R003', '6 Raffles Boulevard #03-145/146 Marina Square', '039594', 'Singapore', 'Singapore', '123456', '+65 6336 0311', 'The Astons brand has established itself as a household name synonymous with quality and affordability. With the introduction of Astons Steak & Salad, customers can now enjoy over 60 selection of All-You-Can-Eat salads on the bar including home-made soup, fresh greens on-the-go and desserts.', 'RR457', 4, 'astons_bg-09.jpg', '10AM-10PM', 1);
insert into Restaurant values ('zamzamsg@gmail.com', 'Singapore Zam Zam', 'R008', '697-699 North Bridge Road', '198675', 'Singapore', 'Singapore', '123456', '+65 6298 6320', 'Established in 1908, Singapore Zam Zam is one of the most popular Indian-Muslim restaurant in Singapore.', 'RR111', 4, 'zamzam.jpg', '7AM-11PM', 1);
insert into Restaurant values ('delhisg@gmail.com', 'Delhi Restaurant', 'R009', '64 Race Course Rd', '218569', 'Singapore', 'Singapore', '123456', '+65 6296 4585', 'Founded in 1988 by a husband & wife team, Delhi Restaurant has won many awards and commendation from various magazines and organizations.', 'RR222', 3, 'delhi-restaurant-64-race.jpg', '11:30AM-11PM', 1);
insert into Restaurant values ('waterfallsg@gmail.com', 'The Waterfall', 'R010', '22 Orange Grove Road, Level One, Garden Wing', '258350', 'Singapore', 'Singapore', '123456', '+65 6213 4138', 'Diners can choose from an extensive collection of wines to embark on a tasting journey spanning all of Italy.', 'RR333', 4, 'waterfallsg.jpg', '12PM-10:30PM', 1);
insert into Restaurant values ('sophosg@gmail.com', 'SO PHO', 'R011', '238 Thomson Road, #02-43/45', '307683', 'Singapore', 'Singapore', '123456', '+65 6258 4220', 'Experience authentic and traditional Vietnamese food in Singapore with fresh, healthy and mouthwatering Vietnamese dishes.', 'RR444', 4, 'sopho.jpg', '11AM-10PM', 1);
insert into Restaurant values ('jumboseafoodsg@gmail.com', 'Jumbo Seafood', 'R012', '20 Upper Circular Road, #B1-48, The Riverwalk', '058416', 'Singapore', 'Singapore', '123456', '+65 6534 3435', 'JUMBO Seafood Gallery is located in the heart of the city. Situated along the Singapore River, we are just minutes away from Clarke Quay MRT station, Boat Quay and Funan Centre. Themed as the “Gallery”, JUMBO Seafood Gallery will also serve as a display of art works. This outlet serves BBQ delicacies such as BBQ King Prawns and Lamb Chop.', 'RR555', 5, 'jumbo.jpg', '12PM-12AM', 1);
insert into Restaurant values ('yakunkayasg@gmail.com', 'Ya Kun Kaya Toast', 'R013', '200 Victoria St, B1-11', '188024', 'Singapore', 'Singapore', '123456', '+65 6238 8904', 'From its humble beginnings as a modest coffee stall in the 1940s, the name of Ya Kun has become synonymous with unparalleled kaya toast and irresistibly fragrant coffee and tea, enjoyed amidst a cosy atmosphere. Today, Ya Kun continues to delight fans and to attract converts.', 'RR666', 5, 'yakunn.jpg', '7:30AM-10PM', 1);
insert into Restaurant values ('summerpavilionsg@gmail.com', 'Summer Pavilion', 'R014', '7 Raffles Ave', '039799', 'Singapore', 'Singapore', '123456', '+65 6434 5286', 'Savor delicious Chinese and Cantonese cuisine at Summer Pavilion, one Michelin-star restaurant at The Ritz-Carlton, Millenia Singapore.', 'RR888', 4, 'summerrrrr.jpg', '11:30AM-10:30PM', 1);
--Kuala Lumpur
insert into Restaurant values ('marblemy@gmail.com', 'Marble 8', 'R004', 'Petronas, Menara 3, Persiaran KLCC, Kuala Lumpur City Centre', '50088', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2386 6030', 'Marble 8 brings new depth and elegance to their premium steakhouse and elegant privé. This has allowed Marble 8 to reimagine the dining and drinking experience in Malaysia – infusing exquisite flavours with authentic creations, accented with luxurious charm.', 'RR229', 4, 'marble8.jpg', '10AM-10PM', 1);
insert into Restaurant values ('dintaifungmy@gmail.com', 'Din Tai Fung Pavilion KL', 'R015', '06, Pavilion, Jalan Bukit Bintang, Bukit Bintang, Wilayah Persekutuan Kuala Lumpur', '55100', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2148 8292', 'Din Tai Fung Dumpling House has branches in Japan, United States, South Korea, Singapore, China, Hong Kong, Indonesia, Malaysia, Australia, and Thailand. While continuing to maintain its high popularity in Taiwan, Din Tai Fung is now giving people throughout the world the opportunity to experience a classic “taste of Taiwan”.', 'RR999', 4, 'dintaifung.jpg', '11AM-10:30PM', 1);
insert into Restaurant values ('pierseafoodmy@gmail.com', 'Pier 12 Seafood Tavern', 'R016', '12, Lorong Raja Chulan, Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', '50200', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2078 5548', 'A new branding by Pampas, Pier 12 Seafood Tavern ventures into the world of seafood. Pier 12 specializes in various types of fish and seafood dishes boasting a combination of Eastern and Western flavors.', 'RR1010', 4, 'DSCF9630-001.jpg', '5PM-2AM', 1);
insert into Restaurant values ('samadalmy@gmail.com', 'Samad Al Iraqi Restaurant', 'R017', 'G-3, Menara Prestige, 1, Jalan Pinang, Wilayah Persekutuan Kuala Lumpur', '50450', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2166 7766', 'PROUD TO SERVE TRADITIONAL ARABIC FOODS', 'RR1011', 5, 'samadal.jpg', '10AM-1AM', 1);
insert into Restaurant values ('jaipurmy@gmail.com', 'Restoran Jaipur Mahal', 'R018', '239, Jalan Sultan Azlan Shah, Sentul, Wilayah Persekutuan Kuala Lumpur', '51200', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-4040 0499', 'The traditional food of South India is mainly rice based. Our cuisines are famous for its wonderful mixing of rice and lentils and we prepare yummy dosas, vadas, idlis and uttapams too.', 'RR1012', 5, 'jaipur.jpg', '11AM-11PM', 1);
insert into Restaurant values ('burgerlabmy@gmail.com', 'myBurgerLab', 'R019', '8, Jalan Awan Hijau, Taman Overseas Union, Wilayah Persekutuan Kuala Lumpur', '58200', 'Kuala Lumpur', 'Malaysia', '123456', '+60 10-369 5275', 'Our charcoal buns are baked from scratch in our own bakery daily. It’s the only way to get that perfect combination of crisp crust and melt-in-your-mouth, fresh-from-the-oven taste. We grind our own beef patties daily and hand-pack them just so they retain their freshness and juiciness.', 'RR1013', 4, 'sdc18679.jpg', '5PM-10:15PM', 1);
insert into Restaurant values ('songketmy@gmail.com', 'Songket Restaurant', 'R020', '29, Jalan Yap Kwan Seng, Kampung Baru, Wilayah Persekutuan Kuala Lumpur', '50450', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2161 3331', 'Savour the taste of Malay cuisine inspired from traditional specialties. Delight in live Malaysian Cultural Dance Performances. Luxuriate in the warm and elegant Setting.', 'RR1014', 4, 'songket-restaurant.jpg', '12PM-11PM', 1);
insert into Restaurant values ('alhalabimy@gmail.com', 'Al Halabi Gourmet Restaurant', 'R021', 'JW Marriott Hotel Lot No. H1, UG Floor, 183, Jalan Bukit Bintang, Wilayah Persekutuan Kuala Lumpur', '55100', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2715 2785', 'Tarbush has opened thus far four branches that are strategically located; Jalan Bukit Bintang, Starhill Gallery, Sunway Pyramid and most recently, Tarbush has set its eyes on Batu Feringghi, Penang, where an oasis of Tarbush’s celebrated dining experience is standing proudly by the waters of the Pearl of the Orient.', 'RR1015', 4, 'al-halabi-restaurant.jpg', '10AM-2AM', 1);
insert into Restaurant values ('steakhousemy@gmail.com', 'The Steakhouse', 'R022', '48, Changkat Bukit Bintang, Bukit Bintang, Wilayah Persekutuan Kuala Lumpur', '50200', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2143 2268', 'The Steakhouse is a 40-seater steak joint along Changkat Bukit Bintang and adjacent to The Whisky Bar. We specialize in the Argentinian-style charcoal-grilled Australian beef.', 'RR1016', 4, '01292_001.jpg', '6PM-12AM', 1);
insert into Restaurant values ('qureshimy@gmail.com', 'QURESHI', 'R023', 'Ground Floor, East Wing,, TPC Kuala Lumpur, No 10, Jalan 1/70D Off Jalan Bukit Kiara, Bukit Kiara, Federal Territory of Kuala Lumpur', '60000', 'Kuala Lumpur', 'Malaysia', '123456', '+60 3-2011 1007', 'The Qureshi Restaurant is sure to be the choice of both families and corporates seeking a delicious dining experience along with soothing Indian Music. A unique feature of the restaurant is its live Tandoor/Barbeque area.', 'RR1017', 4, 'Qureshi.jpg', '11:30AM-10:30PM', 1);
--Jakarta
insert into Restaurant values ('harumidn@gmail.com', 'Harum Manis', 'R005', 'Kav. 24, Karet Jl. KH. Mas Mansyur, Pavilion Apartment Retail Arcade', '10220', 'Jakarta', 'Indonesia', '123456', '+62 21 5794 1727', 'Places to eat with decorations made of vintage wood, wifi and live music available.', 'RR888', 4, 'harummanis.jpg', '10AM-10PM', 1);
insert into Restaurant values ('frescojkt123@gmail.com', 'Frescoristo', 'R024', 'Jl. Sultan Iskandar Muda No.8-J, RT.6/RW.2, Kby. Lama Sel., Kby. Lama, Jakarta, Daerah Khusus Ibukota Jakarta', '12240', 'Jakarta', 'Indonesia', '123456', '+62 21 72787228', 'Frescoristo is a family restaurant and cafe where you can get an Italian style pasta with an affordable price.', 'RR1018', 5, 'frescoristo.jpg', '9AM-8PM', 1);
insert into Restaurant values ('seribuidn@gmail.com', 'Seribu Rasa Menteng', 'R025', 'Jl. H. Agus Salim No.128, RT.1/RW.5, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', '10310', 'Jakarta', 'Indonesia', '123456', '+62 21 3928892', 'Inspired by the region’s culinary wealth, Seribu Rasa (One Thousand Flavors) offers delectable local dishes and seafood that embody the richness of Southeast Asian and Indonesian Flavors.', 'RR1019', 4, 'seriburasa.jpg', '11AM-10PM', 1);
insert into Restaurant values ('tandooridn@gmail.com', 'Queens Tandoor', 'R026', 'Plaza Permata Lt. B1, Jalan M.H. Thamrin Kav. 57, RT.09/RW.05, Gondangdia, Menteng, Jakarta Pusat, Daerah Khusus Ibukota Jakarta', '10350', 'Jakarta', 'Indonesia', '123456', '+62 21 3903288', 'With over 28 years of experience in serving, Queens has mastered the Art of Catering and has been the pride of weddings, birthdays, anniversaries and many other functions; creating unique and delightful dish items paired with an excellent and efficient service.', 'RR1020', 4, 'queenstandoor.jpg', '11:30AM-11PM', 1);
insert into Restaurant values ('akirabackidn@gmail.com', 'Akira Back', 'R027', 'MD Place Penthouse Level 12, Jalan Setia Budi Selatan No 7, Setia Budi, RT.5/RW.1, RT.5/RW.1, Setia Budi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '12910', 'Jakarta', 'Indonesia', '123456', '+62 852-8887-7888', 'Authentic Japanese cuisine prepared with a Korean accent, derived from seasonal produce and artisanal sourced ingredients.', 'RR1021', 4, 'akiraback.jpg', '12PM-10:30PM', 1);
insert into Restaurant values ('satekhasidn@gmail.com', 'Sate Khas Senayan', 'R028', 'Jl. Taman Kebon Sirih 1 No.31A, Kebon Sirih, Menteng, RT.1/RW.5, Kb. Sirih, Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', '10250', 'Jakarta', 'Indonesia', '123456', '+62 21 31926238', 'Sate Khas Senayan is a place where restaurant goers can enjoy the comfort of unique, local cuisine in an environment with a welcoming ambience and attentive service.', 'RR1022', 4, 'sate-khas-senayan.jpg', '8AM-10PM', 1);
insert into Restaurant values ('pepperlunchidn@gmail.com', 'Pepper Lunch', 'R029', 'Jl. Letjen S. Parman, RT.12/RW.6, Tj. Duren Sel., Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta', '11470', 'Jakarta', 'Indonesia', '123456', '+62 21 5609928', 'Pepper Lunch promises a dynamic and unique culinary experience for everyone by presenting the novel concept of sizzling Steaks, Pastas, Cheese Curry Rice, and not forgetting our signature Pepper Rice.', 'RR1023', 5, 'pepperlunch.jpg', '10AM-10PM', 1);
insert into Restaurant values ('thehookidn@gmail.com', 'The Hook Restaurant And Cafe', 'R030', 'Jl. Cikatomas II No.35, RT.4/RW.4, Rw. Bar., Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '12180', 'Jakarta', 'Indonesia', '123456', '+62 21 27513528', 'With the finest grouper from Arafura Ocean, The Hook provides one of a kind organic seafood in town. In the hand of an outstanding chef, we served it in delicacy.', 'RR1024', 5, 'thehook.jpg', '10AM-11PM', 1);
insert into Restaurant values ('patioidn@gmail.com', 'Patio Venue & Dining', 'R031', 'Jl. Wijaya 13 No.45, Melawai, Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '12160', 'Jakarta', 'Indonesia', '123456', '+62 21 7241362', 'Located in South Jakarta’s upscale residential district of Kebayoran Baru, Patio Venue & Dining offers an exclusive dining environment for savoring casual Asian and Western dishes– classic flavors exquisitely presented for the most discerning palates.', 'RR1025', 5, 'patio-venue-dining.jpg', '11AM-11PM', 1);
insert into Restaurant values ('fezkinaraidn@gmail.com', 'Fez-Kinara dining & Lounge', 'R032', 'Jl. Kemang Raya No.78B, RT.4/RW.2, Bangka, Mampang Prpt., Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '12730', 'Jakarta', 'Indonesia', '123456', '+62 21 7192677', 'Enjoy a new way of dining with our selective assortment of authentic Indian, Maghreb, Middle East and Gulf regions culinary dishes and entertainment all under one roof.', 'RR1026', 5, 'fez-kinara.jpg', '11AM-3AM', 1);
--Beijing
insert into Restaurant values ('beijingdadongcn@gmail.com', 'Beijing Da Dong', 'R033', '5/F, Jinbaohui Shopping Center, 88 Jinbao Jie Dongcheng District', 'not applicable', 'Beijing', 'China', '123456', '+86 10 8522 1234', 'The 160-page menu is a work of art in itself, with a plethora of duck dishes backed up by vegetable dishes, soups and more.', 'RR123', 4, 'tatong.jpg', '10AM-10PM', 1);
insert into Restaurant values ('chinagrillcn@gmail.com', 'China Grill', 'R034', '2 Jianguomen Outer St, JianWai DaJie, Chaoyang Qu, Beijing Shi', 'not applicable', 'Beijing', 'China', '123456', '+86 10 8567 1838', 'Visitors dine beneath a dramatic Chinese “lantern” at the building’s apex, featuring a soaring glass pyramid ceiling and glass walls, and surrounded by trees and water features.', 'RR123', 5, 'chinagrill.jpg', '10AM-10PM', 1);
insert into Restaurant values ('littleyunnancn@gmail.com', 'Little Yunnan', 'R035', '28 Donghuangchenggen N St, Dongcheng Qu, Beijing Shi', 'not applicable', 'Beijing', 'China', '100007', '+86 10 6401 9498', 'Located in a cozy, well-preserved courtyard near the old imperial wall and the Forbidden City, this restaurant offers Yunnan dishes with a cozy setting, perfect for friendly gatherings or a romantic night out. They also serve great home-brewed rice wine.', 'RR123', 4, 'littleyunnan.jpg', '8AM-10PM', 1);
insert into Restaurant values ('jindingxuancn@gmail.com', 'Jin Ding Xuan', 'R036', 'Address: 15 Tuanjiehu S Rd, TuanJieHu, Chaoyang Qu', '100025', 'Beijing', 'China', '123456', '+86 10 8596 8887', 'The company focuses on the four major cuisines of Sichuan, Shandong, Guangdong and Huai, adhering to and developing the essence of traditional cooking techniques, and is the first to propose the concept of green environmental protection in the catering industry.', 'RR123', 4, 'jindingxuan.jpg', '9AM-10PM', 1);
insert into Restaurant values ('khanbabacn@gmail.com', 'Khan Baba', 'R037', '2nd Floor, Jixin Plaza, Zhanchunyuanxi Road, Wudaokou, Haidian District', 'not applicable', 'Beijing', 'China', '123456', '+86 10 5692 7068', 'Since 2007, Khanbaba is serving freshly cooked and tasty food to all spicy Pakistani food lovers. Khanbaba Beijing Started with idea of having clean and Halal Pakistani food in Beijing quickly became attraction to people from all walks of life for its unique taste and high standards.', 'RR123', 5, 'khanbaba.jpg', '9AM-9PM', 1);
insert into Restaurant values ('leigardencn@gmail.com', 'Lei Garden Restaurant', 'R038', 'C2-C3, Tower C, Central International Trade Center,6 Jian Guo Men Wain Street, Chao Yang District', 'not applicable', 'Beijing', 'China', '123456', '+86 10 8567 0138', 'Lei Garden was established in 1973. It has evolved from a traditional Cantonese-style restaurant to an upmarket, international restaurant chain, offering culinary delights and unique tasting menus developed from different parts of the world.', 'RR123', 5, 'leigarden.jpg', '11:30AM-10:30PM', 1);
insert into Restaurant values ('thehorizoncn@gmail.com', 'The Horizon', 'R039', 'No 1 Guanghua Road', '100020', 'Beijing', 'China', '123456', '+86 10 6561 8833', 'Horizon is a leading purveyor of authentic Cantonese and Beijing specialties.', 'RR123', 4, 'thehorizon.jpg', '11AM-10PM', 1);
insert into Restaurant values ('hengheindiancn@gmail.com', 'Henghe Indian Restaurant', 'R040', 'Haidian Qu, WuDaoKou, Chengfu Rd', '100083', 'Beijing', 'China', '123456', '+86 10 6262 7944', 'Since its entry into Beijing in 2005, the Ganges Restaurant in India has been serving delicious and authentic Indian cuisine.', 'RR123', 4, 'henghe.jpg', '11AM-11PM', 1);
insert into Restaurant values ('cafesambalcn@gmail.com', 'Cafe Sambal', 'R041', '43 Doufuchi Hutong, Dongcheng Qu', '100009', 'Beijing', 'China', '123456', '+86 10 6400 4875', 'Established in 2001. Café Sambal is a well-established and highly popular Malaysian restaurant.', 'RR123', 5, 'cafesambal.jpg', '9AM-9PM', 1);
insert into Restaurant values ('krosnestcn@gmail.com', 'Kros Nest', 'R042', '35 Xiaoyun Rd, SanYuan Qiao, Chaoyang Qu', 'not applicable', 'Beijing', 'China', '100096', '+86 10 8391 3131', 'Zhuang Xiaolong, the founder of Wuchao Pizza (English name: Ulav Kristof Bauer) is a mixed-race Chinese fluent Chinese. The name of Kros Nest is taken from Zhuang Xiaolong English nickname - Kro (Raven), and "Nest" comes from Zhuang Xiaolong hopes that Wuchao will become a "home-like place for friends to gather together to share food."', 'RR123', 5, 'krosnest.jpg', '9AM-11PM', 1);

--Yangon
insert into Restaurant values ('rangoonteahousemyr@gmail.com', 'Rangoon Tea House', 'R043', 'Ground Floor, 77-79 Pansodan Rd (Lower Middle Block)', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 9 979 078681', 'The restaurant serves an all-day menu with a focus on local product, high quality ingredients and regional flavours.', 'RR125', 4, 'ygnteahouse.jpg', '10AM-10PM', 1);
insert into Restaurant values ('ygngreenmyr@gmail.com', 'Yangon Green Gallery', 'R044', 'Mahabandoola No 58, 52 Street Lower Block, Between Mahabandoola And Merchant', '11160', 'Yangon', 'Myanmar', '123456', '+95 9 313 15131', 'Asian, Thai, Vegetarian Friendly', 'RR1027', 4, 'yangongreen.jpg', '12PM-9PM', 1);
insert into Restaurant values ('thepenthousemyr@gmail.com', 'The Penthouse Restaurant-Skybar-Lounge', 'R045', '271, 273 Bagaya Street', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 9 771 239924', 'The Penthouse is the place for your business or casual lunch, for an after work drink, dinner and great parties with its breath taking on the Shwe Dagon Pagona and downtown.', 'RR1028', 5, 'the-penthouse-skybar.jpg', '10AM-10PM', 1);
insert into Restaurant values ('taingyintharmyr@gmail.com', 'Taing Yin Thar Restaurant, Yankin', 'R046', 'No.(2/A),Kanbae Road,(6)Quarter, Township', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 9 787 154799', 'Restaurant offers you a wide variety of dishes that come from various regions of Myanmar, authentically created by our master cooks from natural products of our beautiful land.', 'RR1029', 4, 'taing yin thar.jpg', '10AM-9:30PM', 1);
insert into Restaurant values ('theyangonmyr@gmail.com', 'The Yangon Restaurant', 'R047', 'People Park Compound, Ahlone Road, Near Planetarium Museum, Dagon Township', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 1 370 177', 'We set out to provide a world class dining experience where we serve Modern European Cuisine.', 'RR1030', 5, 'yangonrestaurant.jpg', '12PM-11PM', 1);
insert into Restaurant values ('nourishcafemyr@gmail.com', 'Nourish Cafe Yangon', 'R048', '36B Alan Pya Pagoda Road', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 9 973 802714', 'At Nourish, we strive to use seasonal local produce, organic ingredients and minimal oils or sugar to serve you delicious, healthy food that fuels and energizes without compromising flavor and taste.', 'RR1031', 4, 'nourishcafe.jpg', '10AM-9PM', 1);
insert into Restaurant values ('50streetcafemyr@gmail.com', '50th Street Cafe Restaurant Bar', 'R049', '9-13, 50th Street, Botatung Township', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 1 397 060', 'Bar, European, Pub', 'RR1032', 4, '50streetbar.jpg', '9:30AM-1AM', 1);
insert into Restaurant values ('acaciateamyr@gmail.com', 'Acacia Tea Salon', 'R050', 'Saya San Road, Bahan Township', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 1 554 739', 'We serve tea and food like we would host a long-lost friend. Fascinated by tea rituals, we let you discover the finest tastes from around the world.. and take a breath in our luscious garden....!', 'RR1033', 4, 'acaciatea.jpg', '9AM-8PM', 1);
insert into Restaurant values ('unionbarmyr@gmail.com', 'Union Bar & Grill', 'R051', '42 Strand Rd', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 1 392 263', 'Yangon has a rich and multi cultural history and the menu at Union Bar & Grill is designed to reflect its position as the “Union” of East meets West.', 'RR1034', 4, 'union bar.jpg', '11AM-11PM', 1);
insert into Restaurant values ('thiripyitsayamyr@gmail.com', 'Thiripyitsaya Sky Bistro', 'R052', '#505, 20th Floor Sakura Tower 339 Bogyoke Aung San Rd', 'not applicable', 'Yangon', 'Myanmar', '123456', '+95 1 255 277', 'Enjoy the luxury time at Sky Bistro with tasty food, heart-warming service, and amazing panorama view of Yangon city.', 'RR1035', 4, 'thiripyitsaya.jpg', '9AM-10PM', 1);


create table TicketType
(
ticketID		int not null constraint pk_TicketType Primary Key,
type			varchar(200) not null,
description		varchar(300) not null,
price			decimal(6,2) not null,
attractionID	int,
constraint fk_attraction foreign key (attractionID) references attraction(attractionID)
);

--insert statement for TicketType
--Singapore
insert into TicketType values (001, 'Adult', '1 Day Universal Studios Singapore', 76.00, 1);
insert into TicketType values (002, 'Child', '1 Day Universal Studios Singapore', 56.00, 1);
insert into TicketType values (003, 'Senior Citizen (Senior Citizen rates apply for guests aged 60 and above).', '1 Day Universal Studios Singapore', 38.00, 1);
insert into TicketType values (004, 'Standard', 'Gardens By The Bay Singapore and OCBC Skyway Tickets.', 24.00, 2);
insert into TicketType values (005, 'Adult', 'Tickets Valid for 30 Days', 33.00, 3);
insert into TicketType values (006, 'Child (3 to 12 years old)', 'Tickets Valid for 30 Days', 22.00, 3);
insert into TicketType values (007, 'Senior Citizen (Aged 60 and above)', 'Tickets Valid for 30 Days', 15.00, 3);
insert into TicketType values (008, 'Standard', 'General Admission', 20.00, 4);
insert into TicketType values (009, 'Standard', 'Special Exhibition', 25.00, 4);
insert into TicketType values (010, 'not applicable', 'not applicable', 00.00, 5);
insert into TicketType values (011, 'Adult', 'National Orchid Garden', 5.00, 5);
insert into TicketType values (012, 'not applicable', 'not applicable', 00.00, 6);
insert into TicketType values (013, 'Standard', 'Children 12 years and below must be accompanied by an adult.', 20.00, 7);
insert into TicketType values (014, 'Adult (Age 13-59)', 'One-Day Ticket', 38.00, 8);
insert into TicketType values (015, 'Child (Age 4 – 12)', 'One-Day Ticket', 30.00, 8);
insert into TicketType values (016, 'Senior (Age 60 and above)', 'One-Day Ticket', 30.00, 8);
insert into TicketType values (017, 'Adult', 'not applicable', 33.00, 9);
insert into TicketType values (018, 'Child (3 to 12 years old)', 'not applicable', 21.00, 9);
insert into TicketType values (019, 'Senior (Above 60 years old)', 'not applicable', 24.00, 9);
insert into TicketType values (020, 'not applicable', 'not applicable', 00.00, 10);
--Kuala Lumpur
insert into TicketType values (021, 'not applicable', 'not applicable', 00.00, 11);
insert into TicketType values (022, 'Adult', '1 Day Aquaria KLCC', 22.00, 12);
insert into TicketType values (023, 'Child (3 - 12 years old)', '1 Day Aquaria KLCC', 18.97, 12);
insert into TicketType values (024, 'Senior Citizen (60 years old and above)', '1 Day Aquaria KLCC', 15.59, 12);
insert into TicketType values (025, 'not applicable', 'not applicable', 00.00, 13);
insert into TicketType values (026, 'not applicable', 'not applicable', 00.00, 14);
insert into TicketType values (027, 'Standard', 'PETRONAS Twin Towers Admission + One Way Transfer', 40.00, 15);
insert into TicketType values (028, 'Combo A (International - Adult)', 'Observation Deck + Blue Coral Aquarium Or + Muzium Telekom', 17.44, 16);
insert into TicketType values (029, 'Combo A (MyKad - Adult)', 'Observation Deck + Blue Coral Aquarium Or + Muzium Telekom', 10.40, 16);
insert into TicketType values (030, 'Combo B (International - Adult)', 'Observation Deck + Upside Down House', 18.45, 16);
insert into TicketType values (031, 'Combo B (MyKad - Adult)', 'Observation Deck + Upside Down House', 12.07, 16);
insert into TicketType values (032, 'Combo C (MyKad - Adult)', 'Observation Deck + Mini Zoo', 15.76, 16);
insert into TicketType values (033, 'Combo C (International - Adult)', 'Observation Deck + Mini Zoo', 22.14, 16);
insert into TicketType values (034, 'Combo A (MyKid - Child - 4 to 12 years old)', 'Observation Deck + Blue Coral Aquarium Or + Muzium Telekom', 7.38, 16);
insert into TicketType values (035, 'Combo A (International - Child - 4 to 12 years old)', 'Observation Deck + Blue Coral Aquarium Or + Muzium Telekom', 10.40, 16);
insert into TicketType values (036, 'Combo B (MyKid - Child - 4 to 12 years old)', 'Combo B (MyKid - Child - 4 to 12 years old)', 8.72, 16);
insert into TicketType values (037, 'Combo B (International - Child - 4 to 12 years old)', 'Observation Deck + Upside Down House', 12.07, 16);
insert into TicketType values (038, 'Combo C (MyKid - Child - 4 to 12 years old)', 'Observation Deck + Mini Zoo', 12.74, 16);
insert into TicketType values (039, 'Combo C (International - Child - 4 to 12 years old)', 'Observation Deck + Mini Zoo', 15.76, 16);
insert into TicketType values (040, 'International Traveler Adult (age 13 years old and above)', 'Ticket Inclusive Access to: Nickelodeon Lost Lagoon, Sunway Lagoon Water Park, Sunway Lagoon Wildlife Park, Sunway Lagoon Amusement Park, Sunway Lagoon Extreme Park, Sunway Lagoon Scream Park', 85.42, 17);
insert into TicketType values (041, 'International Traveler Child (age 12 years old and below)', 'Ticket Inclusive Access to: Nickelodeon Lost Lagoon, Sunway Lagoon Water Park, Sunway Lagoon Wildlife Park, Sunway Lagoon Amusement Park, Sunway Lagoon Extreme Park, Sunway Lagoon Scream Park', 71.20, 17);
insert into TicketType values (042, 'International Traveler Senior Citizen (age 60 years old and above)', 'Ticket Inclusive Access to: Nickelodeon Lost Lagoon, Sunway Lagoon Water Park, Sunway Lagoon Wildlife Park, Sunway Lagoon Amusement Park, Sunway Lagoon Extreme Park, Sunway Lagoon Scream Park', 71.20, 17);
insert into TicketType values (043, 'not applicable', 'not applicable', 00.00, 18);
insert into TicketType values (044, 'not applicable', 'not applicable', 00.00, 19);
insert into TicketType values (045, 'Adult', 'not applicable', 21.13, 20);
insert into TicketType values (046, 'Child', 'Child from 3 - 11 years old.', 14.09, 20);
--Jakarta
insert into TicketType values (047, 'not applicable', 'not applicable', 00.00, 21);
insert into TicketType values (048, 'Standard', 'Weekdays', 18.30, 22);
insert into TicketType values (049, 'Standard', 'Weekend', 26.00, 22);
insert into TicketType values (050, 'not applicable', 'not applicable', 00.00, 23);
insert into TicketType values (051, 'Adult', 'Indonesian national', 0.48, 24);
insert into TicketType values (052, 'Child', 'Indonesian national', 0.19, 24);
insert into TicketType values (053, 'Standard', 'Foreigner', 0.96, 24);
insert into TicketType values (054, 'Standard', '1 Day Taman Mini Indonesia Indah', 0.96, 25);
insert into TicketType values (055, 'Adult', 'not applicable', 0.47, 26);
insert into TicketType values (056, 'Student', 'not applicable', 0.28, 26);
insert into TicketType values (057, 'not applicable', 'not applicable', 00.00, 27);
insert into TicketType values (058, 'Standard', 'Weekdays', 8.00, 28);
insert into TicketType values (059, 'Standard', 'Weekend', 9.88, 28);
insert into TicketType values (060, 'Standard', 'Weekdays', 16.47, 29);
insert into TicketType values (061, 'Standard', 'Weekend', 16.47, 29);
insert into TicketType values (062, 'not applicable', 'not applicable', 00.00, 30);
--Beijing
insert into TicketType values (063, 'Mutianyu Great Wall of China Bus Tour', 'Escape the crowds on a full-day bus tour to the Mutianyu section of the Great Wall of China. Get the chance to walk along the wall for panoramic views of the surrounding mountains.', 73.25, 31);
insert into TicketType values (064, 'Jinshanling to Simatai Great Wall Full-Day Hike', 'Hike a steep section of the Great Wall of China at Jinshanling and follow in the footsteps of great generals. Walk through stunning mountains and discover original features, including some of the densely placed towers, en route to Simatai.', 147.52, 31);
insert into TicketType values (065, 'Adult', 'Admission Ticket', 14, 32);
insert into TicketType values (066, 'Adult', 'Admission Ticket', 10, 33);
insert into TicketType values (067, 'Adult', 'Admission Ticket', 9, 34);
insert into TicketType values (068, 'Adult', 'Full-Day', 63, 35);
insert into TicketType values (069, 'not applicable', 'Admission Fee', 2.00, 36);
insert into TicketType values (070, 'Adult', 'Private Tour: Half-Day Tour to Great Wall at Juyongguan', 74.00, 37);
insert into TicketType values (071, 'Adult', 'Private Tour: Great Wall of China at Juyongguan and Ming Tombs from Beijing', 122.00, 37);
insert into TicketType values (072, 'Adult', 'Private Day Tour of Juyongguan Great Wall and Sacred Way from Beijing', 137.00, 37);
insert into TicketType values (073, 'Adult', 'Admission Ticket', 14.29, 38);
insert into TicketType values (074, 'Adult', 'Admission Ticket', 8.00, 39);
insert into TicketType values (075, 'not applicable', 'not applicable', 00.00, 40);
--Yangon
insert into TicketType values (076, 'Tourist', '1 Day Shwedagon Pagoda Myanmar', 8.00, 41);
insert into TicketType values (077, 'Adult', 'Admission Ticket', 0.95, 42);
insert into TicketType values (078, 'not applicable', 'not applicable', 00.00, 43);
insert into TicketType values (079, 'not applicable', 'not applicable', 00.00, 44);
insert into TicketType values (080, 'not applicable', 'not applicable', 00.00, 45);
insert into TicketType values (081, 'Standard', 'Admission Ticket', 4.09, 46);
insert into TicketType values (082, 'Standard', 'Admission Ticket', 4.09, 47);
insert into TicketType values (083, 'Standard', 'Admission Ticket', 6.81, 48);
insert into TicketType values (084, 'Standard', 'Admission Ticket', 2.73, 49);
insert into TicketType values (085, 'Standard', 'Admission Ticket', 4.73, 50);

create table Room
(
roomID				varchar(50) not null constraint pk_Room Primary Key,
roomName			varchar(50) not null,
type				varchar(100) not null,
capacity			int not null,
roomSize			varchar(70) not null,
description			varchar(1000) not null,
remarks				varchar(1000) not null,
services			varchar(1000) not null,
photo				varchar(80) not null,
price				decimal(6,2) not null,
hotelID				int,
constraint fk_hotel foreign key (hotelID) references hotel(hotelID)
);

--insert statement for Room
--Singapore
insert into Room values ('Rm001', '100A', 'Deluxe Room', 2, '28 sqm', 'Themed in subtle hues for an atmosphere of relaxed, modern elegance.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and Toiletry provided', 'deluxeroom.jpg', 253.00, 1);
insert into Room values ('Rm002', '150H', 'Family Room', 4, '70 sqm', 'Each of the seven Family Rooms makes for the ideal accommodation for families and friends wanting to spend quality time together while enjoying Asian hospitality.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and Toiletry provided', 'familyroom.jpg', 717.00, 1);
insert into Room values ('Rm003', '226K', 'Premier Room', 2, '47 sqm', 'Relax in the contemporary comforts of your Premier Room, a bright and airy haven to uplift your body and spirit. Luxuriate in the deep-soaking bathtub, and relax with an array of convenient amenities including movies on demand and 24-hour room service.', 'Breakfast is not included for this room type unless the Bed and Breakfast offer has been selected.', 'Wi-Fi, Cable television, Daily housekeeping and Luxury bathroom amenities', 'mbsroom.jpg', 500.00, 2);
insert into Room values ('Rm004', '456M', 'Deluxe Room', 2, '39 sqm', 'The Deluxe Room welcomes you with modern conveniences and elegant décor.', 'Breakfast is not included for this room type unless the Bed and Breakfast offer has been selected.', 'Wi-Fi, Cable television, Daily housekeeping and Luxury bathroom amenities', 'mbsroom1.jpg', 315.00, 2);
insert into Room values ('Rm005', '88D', 'Premier Room', 2, '36 sqm', 'Relax and enjoy your stay in our cosy 36sqm tropically designed twin club room. Stay connected with free wifi and idd calls to selected overseas destinations. Enjoy access to our club lounge which offers an exclusive breakfast experience and refreshing evening cocktails and canapes.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'crowneplazaroom.jpg', 333.20, 3);
insert into Room values ('Rm006', '332D', 'Suite', 3, '72 sqm', 'Enjoy exclusive club access and exceptional benefits when you select one of our modern and spacious suites, offering everything you need for a productive business stay and ultimate relaxation. A separate lounge includes a large workstation and entertainment space, while the main room features a walk-in wardrobe, personal audio system, coffee machine, two Smart TVs and a luxurious ensuite bathroom.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'crowneplazaroom1.jpg', 800.00, 3);
insert into Room values ('Rm007', '11A', 'KING HILTON DELUXE', 2, '32 sqm', 'Enjoy your stay in this stylish guest room featuring city views, one king bed and convenient amenities. Work away at the desk and browse online with WiFi or unwind with a movie on the LCD TV.', 'Special touches include waffle bathrobes and slippers.', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'hiltonsgroom.jpg', 200.00, 4);
insert into Room values ('Rm008', '12A', 'KING HILTON PREMIUM ROOM', 2, '36 sqm', 'Relax in this refurbished room with modern furnishings, located on Levels 17-19, featuring floor-to-ceiling windows, one king bed and convenient business amenities. Work at the desk with the Herman Miller ergonomic chair and browse online using WiFi.', 'Special touches include waffle bathrobes and slippers.', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'hiltonsgroom1.jpg', 300.00, 4);
insert into Room values ('Rm009', '15B', 'Deluxe Room', 2, '36 sqm', 'Our Deluxe Rooms are warm and inviting havens offering generous space and exceptional comfort. Thoughtful features include a generous work area fitted with high-speed internet access, a well-stocked minibar, flat screen TV and luxurious bath amenities, ensuring a truly relaxing and productive stay for those working or on holiday in the city.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'regentroom1.jpg', 229.00, 5);
insert into Room values ('Rm010', '16B', 'Premier Room', 2, '38 sqm', 'Bathed in natural light through floor-to-ceiling windows, our elegantly appointed Premier Rooms are stylish sanctuaries, furnished for absolute comfort and relaxation. Enjoy a host of thoughtful amenities, from the well-stocked minibar to the plush towels, waffle bathrobes and luxury bath amenities, plus a spacious work area equipped with high-speed WiFi. A number of the Premier Rooms also feature a balcony.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'regentroom2.jpg', 245.00, 5);
insert into Room values ('Rm011', '17C', 'Superior Room', 2, '26 sqm', 'Minimalist chic design', 'Complimentary use of Handy Phone, with mobile Internet access and complimentary calls to 6 destinations', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'rendezvousroom1.jpg', 210.00, 6);
insert into Room values ('Rm012', '18C', 'Executive Suite', 2, '54 sqm', 'Minimalist chic design', 'Separate bedroom and living area and access to Club Rendezvous Lounge with club benefits', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'rendezvousroom2.jpg', 450.00, 6);
insert into Room values ('Rm013', '19D', 'Deluxe Room', 2, '32 sqm', 'Settle into our inviting Deluxe Room where every detail is carefully and tastefully taken care of.', 'From the sleek ergonomic Herman Miller chair to the comfortable posturepedic bed, it is a contemporary space that marries comfort and style.', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'carltonsgroom1.jpg', 250.00, 7);
insert into Room values ('Rm014', '20D', 'CARLTON SUITE', 3, '64 sqm', 'Live in grand style in our most exclusive suite on the top floor, our striking Carlton Suites boast a generous separate living area and an elegant bedroom that is beautifully furnished with the upmost attention to detail. The suite is flanked with an unobstructed panoramic view of the city skyline, offering you a truly singular experience and a refined stay.', 'Exclusive access to the Carlton Club Lounge on level 28', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'carltonsgroom2.jpg', 420.00, 7);
insert into Room values ('Rm015', '21E', 'EXECUTIVE & FAMILY SUITES', 4, '60 sqm', 'Refined and luxurious, our expansive suites at Amara Singapore hotel feature spacious living and sleeping areas that exude elegance.', 'Foreign currency exchange', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'amarasgroom1.jpg', 500.00, 8);
insert into Room values ('Rm016', '22E', 'CLUB ROOM', 3, '32 sqm', 'Our bright and airy Club Rooms at Amara Singapore hotel are elegantly appointed in neutral tones highlighted with plush upholstery, and boast great views of the city.', 'Foreign currency exchange', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'amarasgroom2.jpg', 390.00, 8);
insert into Room values ('Rm017', '23F', 'STANDARD ROOM', 2, '28 sqm', 'With views of the Singapore skyline through double-glazed floor-to-ceiling windows, this 28m2 room features a King bed, complimentary Wi-Fi, a Handy Phone with international calls, a workstation and a flat-screen LCD TV with connectivity panel.', 'Novotel Exclusive Fair Trade Amenities', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'clarkequay1.jpg', 250.00, 9);
insert into Room values ('Rm018', '24F', 'SUPERIOR BAY VIEW ROOM', 3, '32 sqm', 'With views of the Singapore skyline and Marina Bay through double-glazed floor-to-ceiling windows, this 32m2 room features one King bed or two single beds, a sofa corner, complimentary Wi-Fi, a Handy Phone with international calls, a private balcony and a bathroom with a bathtub and shower with separate hand-held and rain showerheads.', 'Novotel Exclusive Fair Trade Amenities', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'clarkequay2.jpg', 345.00, 9);
insert into Room values ('Rm019', '25G', 'Guest Room', 2, '35 sqm', 'Relax in a spacious and modern guest room with complimentary WiFi provided. Enjoy the comfort of plush bedding, choice of soft & firm pillows, flat screen TV, bathtub, and ergonomic desk and work area. Stay up to date with complimentary access to over 5,000 news titles via the PressReader app.', 'Crib Available', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'holidayinnsg1.jpg', 222.00, 10);
insert into Room values ('Rm020', '26G', 'xecutive Suite', 3, '38 sqm', 'Unwind in the spaciousness and exclusivity of our Executive Suites which include separate living and dining areas. Take advantage of the complimentary Internet and exclusive Executive Lounge access which serves daily breakfast, afternoon snacks, happy hour and canapes.', 'Crib Available', 'Wi-Fi, Cable television, Daily housekeeping and Premium bathroom amenities', 'holidayinnsg2.jpg', 323.00, 10);
--Kuala Lumpur
insert into Room values ('Rm021', '123B', 'Grand Premier', 2, '45 sqm', 'Crowned with the trademark Genting logo, Genting Grand is easily the most recognisable hotel at the peak. Enjoy a five-star stay at a resort where elegance and class have stood the test of time, and indulge in the luxury that comes only from staying at the best.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Mini Bar', 'gentinggrand.jpg', 315.00, 11);
insert into Room values ('Rm022', '145B', 'Deluxe King', 2, '32 sqm', 'Bright, fresh, and exciting, Resort Hotel offers a wide array of amenities and facilities for business and leisure alike. Set amidst the cool comfort of a majestic forest landscape, Resort Hotel caters to visitors from all walks of life.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'gentingdeluxe.jpg', 250.99, 11);
insert into Room values ('Rm023', '27H', 'TWIN DELUXE LAKE VIEW', 2, '38 sqm', 'This modern and contemporary guest room boasts impressive lake views from the floor-to-ceiling windows.', 'The Twin Deluxe Lake View room features twin beds, plush pillows and luxury hotel linens with high thread counts for a comfortable, restful night.', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'hiltonkl2.jpg', 144.01, 12);
insert into Room values ('Rm024', '28H', 'KING DELUXE', 2, '38 sqm', 'The King Deluxe room features a king-sized bed, plush pillows and luxury hotel linens with high thread counts for a comfortable, restful night.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'hiltonkl1.jpg', 133.94, 12);
insert into Room values ('Rm025', '29I', 'Superior Room With King Bed', 2, '40 sqm', 'Superior Rooms come with a spacious vanity room.', 'With Buffet Breakfast, plus other inclusions', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'royale1.jpg', 107.42, 13);
insert into Room values ('Rm026', '30I', 'Premier', 2, '42 sqm', 'Premier rooms come with a spacious vanity room with balcony', 'No KLCC Twin Tower view and from 2nd to 5th floor only', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'royale2.jpg', 127.56, 13);
insert into Room values ('Rm027', '31J', 'Deluxe Family Room', 4, '48 sqm', 'Located from 16th to 19th floors of the Tower Wing. Panoramic view of the city.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'concorderoom1.jpg', 146.03, 14);
insert into Room values ('Rm028', '32J', 'Classic Suite', 2, '72 sqm', 'Guests enjoy private check-in, breakfast venue and fitness centre.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'concorderoom2.jpg', 348.36, 14);
insert into Room values ('Rm029', '33K', 'Loft Room (King or Twin)', 2, '33 sqm', 'Ideal for urban travelers, the Loft Rooms at Aloft Kuala Lumpur Sentral are a sassy mix of artsy, comfort and style. Featuring the classic Aloft high ceilings and extra-large windows with comfortable plush beds, the rooms are lightened and energised with a mix of natural lighting and pop art.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'aloftkl1.jpg', 152.15, 15);
insert into Room values ('Rm030', '34K', 'Sweet Suite', 4, '49 sqm', 'The suite features a fully equipped living area below a stylish loft-style bedroom that can sleep three adults.  The bedroom features a luxurious king size platform bed, a day bed,  a small work area and large windows that offer a city view from the higher floors.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'aloftkl2.jpg', 400.36, 15);
insert into Room values ('Rm031', '35L', 'Deluxe Room Twin', 3, '42 sqm', 'Spacious 42sqm room featuring a twin size bed and a large marble bathroom with separate shower and bathtub.', 'Pillow menu available upon request.', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'intercontinental1.jpg', 184.23, 16);
insert into Room values ('Rm032', '36L', 'Club Intercontinental Room Twin', 2, '42 sqm', 'Dedicated club intercontinental 42sqm rooms with twin beds. Located on the higher levels offer guests another level of exclusivity.', 'Butler service upon request.', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'intercontinental2.jpg', 282.92, 17);
insert into Room values ('Rm033', '37M', 'Deluxe Room, City View', 2, '27 sqm', '291-sq-foot (27-sq-meter) room with city views', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'hotelcapitol1.jpg', 165.22, 17);
insert into Room values ('Rm034', '38M', 'Superior Room', 2, '24 sqm', '2 Twin Beds. 258-sq-foot (24-sq-meter) room with city views', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'hotelcapitol2.jpg', 167.44, 17);
insert into Room values ('Rm035', '39N', 'DORSETT SUITES', 2, '45 sqm', 'Dorsett Suites at Dorsett Kuala Lumpur, feature an expansive floor plan, and separate living rooms that are perfect for an intimate business conversation or simply lounging around while relaxing.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'dorsettkl2.jpg', 214.00, 18);
insert into Room values ('Rm036', '40N', 'DORSETT ROOM', 2, '30 sqm', 'The new Dorsett Room offers comfort and contemporary style for frequent travellers. The warm and inviting decor is matched with modern facilities that create a harmonious yet eminently functional flow.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'dorsettkl1.jpg', 110.44, 18);
insert into Room values ('Rm037', '41P', 'Deluxe', 2, '32 sqm', 'A soothing palette of colours enhances each guest room with a sense of space and comfort. Adorning the windows are silk drapes that open up to panoramic views of the city and Perdana Botanical Gardens.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'lemeridien1.jpg', 120.50, 19);
insert into Room values ('Rm038', '42P', 'Suite', 2, '68.5 sqm', 'A soothing palette of colours enhances each guest room with a sense of space and comfort. Adorning the windows are silk drapes that open up to panoramic views of the city and Perdana Botanical Gardens.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'lemeridien2.jpg', 190.50, 19);
insert into Room values ('Rm039', '43Q', 'MAJESTIC SUITE', 2, '100 sqm', 'The two Majestic Suites offer the ultimate in luxurious indulgence, with over 100 square metres of space. A large open plan living area includes plush sofa seating, a separate dining area and a guest powder room.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'majestic1.jpg', 335.36, 20);
insert into Room values ('Rm040', '44Q', 'DELUXE ROOM', 2, '68 sqm', 'With an inspiring view of Kuala Lumpur city skyline, the comfortably elegant Deluxe Rooms are perfect for business or pleasure, complete with luxurious furnishings.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping and bathroom amenities', 'majestic2.jpg', 142.00, 20);
--Jakarta
insert into Room values ('Rm041', '25C', 'Diplomatic Suite', 3, '120 sqm', 'The grand living and dining room, with their understated elegance, are perfect for meetings or private/family gatherings, while a quiet and smart office is also available.', 'not applicable', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'indohotel1.jpg', 699.99, 21);
insert into Room values ('Rm042', '30D', 'Salon Suite', 3, '77 sqm', 'A breathtaking view of Jakarta’s famous Welcome Monument greets you as you step into these suites. At the same time, a separate living room and bedroom will ensure privacy and comfort.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and advanced Japanese bathroom technology.', 'indohotel.jpg', 500.50, 21);
insert into Room values ('Rm043', '45R', 'Fairmont Gold Room', 2, '49 sqm', 'The Fairmont Gold room provides a comfortable 49 square meters of refined ambience, with excellent views of Jakarta City or Senayan Golf Course.', 'City Skyline or Golf Course', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'fairmont1.jpg', 410.42, 22);
insert into Room values ('Rm044', '46R', 'Fairmont Gold Deluxe Room', 2, '65 sqm', 'The Fairmont Gold Deluxe room provides an abundant 65 square meters of refined ambience, with excellent views of Jakarta City or Senayan Golf Course.', 'City Skyline', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'fairmont2.jpg', 425.50, 22);
insert into Room values ('Rm045', '47S', 'SIGNATURE POOL TERRACE CLUB', 3, '40 sqm', 'The beautifully furnished 32 m² and 40 m² room with private terrace and direct access to the swimming pool, features a king bed, bathroom and dedicated work area. Of course you’ll also appreciate the complimentary high-speed WIFI and access to the exclusive Aryaduta Club Lounge for breakfast, afternoon refreshments and evening cocktails.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'aryaduta1.jpg', 415.66, 23);
insert into Room values ('Rm046', '48S', 'JUNIOR SUITE', 3, '52 sqm', 'Take pleasure in the generous space of a 52 m² suite that features a king bed, lounge area, dedicated workspace with complimentary high-speed WIFI, marble bathroom with separate bathtub and walk-in shower. Enjoy a daily platter of fresh fruit and complimentary access to the exclusive Aryaduta Club Lounge for breakfast, afternoon refreshments, and evening cocktails.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'aryaduta2.jpg', 410.50, 23);
insert into Room values ('Rm047', '49T', 'Deluxe room', 2, '22 sqm', 'Our Deluxe rooms featuring a contemporary décor with tastefully selected modern furnishings complemented by Indonesian artwork.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'grandkemang1.jpg', 161.29, 24);
insert into Room values ('Rm048', '50T', 'Executive Suite', 2, '48 sqm', 'Our Executive Suites represent a totally different level of luxury yet in a cozy ambience and with contemporary design features. Each Executive Suite has a separate living room area including a private bar and kitchenette with electric stove and refrigerator.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'aryaduta2.jpg', 198.50, 24);
insert into Room values ('Rm049', '51A', 'Deluxe Room', 2, '30 sqm', 'The soothing simplicity of the decor encourages relaxation and creates a calm haven that is the perfect peaceful antidote to the hustle and bustle of the city.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'alilajakarta1.jpg', 122.25, 25);
insert into Room values ('Rm050', '52A', 'Executive Premier', 2, '30 sqm', 'The revamped 30 sqm Executive Premier Room offers an oasis of quiet and exceptional comfort, enhanced with a rain shower and the added pleasure of a daybed by the window to help you refresh, recharge and relax.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'alilajakarta2.jpg', 255.50, 25);
insert into Room values ('Rm051', '53B', 'Deluxe Room', 2, '30 sqm', 'Offering stylish and sophisticated accommodation in Jakarta, our 30sqm (323sq-ft) Deluxe Rooms feature the choice of a king or twin bed size, a spacious executive work area and picturesque city views.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'sari1.jpg', 125.55, 26);
insert into Room values ('Rm052', '54B', 'Pacific Suite', 3, '90 sqm', 'Occupying a generous 90sqm (968sq-ft), the luxurious Pacific Suites at our hotel near National Monument feature an oversized master bedroom, well-defined areas for living and dining, a fully-equipped kitchenette and access to exclusive Pacific Club privileges.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'sari2.jpg', 265.50, 26);
insert into Room values ('Rm053', '55C', 'Superior 1 Double Bed', 2, '30 sqm', 'Bold design meets convenience in Superior Room with 1 Double comfortable bed.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'mercurejk1.jpg', 120.50, 27);
insert into Room values ('Rm054', '56C', 'Deluxe 1 Double Bed', 2, '30 sqm', 'Experience the Deluxe Room features a Double bed, LED TV, complimentary WiFi access and other amentities.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'mercurejk2.jpg', 122.50, 27);
insert into Room values ('Rm055', '57D', 'Superior Room', 2, '32 sqm', 'Superior Room Only', 'Breakfast not included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'sparkshotel1.jpg', 100.50, 28);
insert into Room values ('Rm056', '58D', 'Deluxe Room', 2, '30 sqm', 'Deluxe Room Only', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'sparkshotel2.jpg', 90.50, 28);
insert into Room values ('Rm057', '59E', 'DELUXE ROOM', 2, '45 sqm', 'With a blend of Indonesian and Western design, this room blends luxury and comfort and sets the tone for luxury accommodation in Indonesia. These rooms have either king or twin beds and are approximately 45 sqm in size.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'granmelia1.jpg', 100.50, 29);
insert into Room values ('Rm058', '60E', 'PREMIUM ROOM', 2, '45 sqm', 'Be the first to try our new fully renovated premium rooms which have been designed to epitomise 21st century luxury accommodation in Indonesia. These 45 sqm king and twin bedded rooms make one feel immediately comfortable in a climate that has a timeless yet slightly contemporary feel.', 'Breakfast included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'granmelia2.jpg', 110.50, 29);
insert into Room values ('Rm059', '61F', 'Deluxe Room', 2, '33 sqm', 'Deluxe Room Only', 'Breakfast not included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'ascottjk1.jpg', 99.50, 30);
insert into Room values ('Rm060', '62F', 'Premium Room', 2, '33 sqm', 'Premium Room Only', 'Breakfast not included', 'Wi-Fi, Cable television, Dining room, Daily housekeeping and bathroom amenities', 'ascottjk2.jpg', 111.50, 30);
--Beijing
insert into Room values ('Rm061', '111A', 'Superior Room', 2, '58 sqm', 'Warm colours and textured fabrics create a sophisticated ambience, Chinese ink-brush artwork adds a stylish touch, and views of Wangfujing connect you to the city.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'beijingroom.jpg', 250.50, 31);
insert into Room values ('Rm062', '112E', 'Deluxe Room', 2, '66 sqm', 'Warm colours and textured fabrics create a sophisticated ambience, Chinese ink-brush artwork adds a stylish touch, and views of Wangfujing connect you to the city.', 'not applicable', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'beijingroom1.jpg', 310.60, 31);
insert into Room values ('Rm063', '113A', 'DELUXE KING', 2, '47 sqm', '1 king bed, inspired by Ming scholar Wen Zhenheng. Accessible rooms available.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'nuohotel1.jpg', 124.50, 32);
insert into Room values ('Rm064', '114B', 'NUO CLUB STUDIO', 2, '60 sqm', '1 king bed room with access to executive lounge and enjoy executive benefits.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'nuohotel2.jpg', 220.50, 32);
insert into Room values ('Rm065', '115C', 'Deluxe Room', 2, '45 sqm', 'One of the finest Beijing hotel rooms, this spacious 45 square metre (485 square foot) room offers a state-of-the-art work area with broadband and wireless high-speed Internet options, multi-line IP phone by CISCO and a 42-inch plasma TV.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'fairmontbj1.jpg', 110.50, 33);
insert into Room values ('Rm066', '116C', 'Fairmont Gold Room', 2, '45 sqm', 'Beijing welcomes you to an exclusive luxury with the 45 square metre (485 square foot) Fairmont Gold Room.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'fairmontbj2.jpg', 230.50, 33);
insert into Room values ('Rm067', '117D', 'Deluxe Room', 2, '42 sqm', 'Double Bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'primebeijing2.jpg', 150.50, 34);
insert into Room values ('Rm068', '118D', 'Superior Room', 2, '35 sqm', 'Single Bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'primebeijing1.jpg', 140.50, 34);
insert into Room values ('Rm069', '119E', 'Kerry Court Grand Deluxe Room', 2, '42 sqm', 'Big bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'kerry1.jpg', 214.50, 35);
insert into Room values ('Rm070', '120E', 'Executive Suite', 3, '60 sqm', 'Big bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'kerry2.jpg', 350.50, 35);
insert into Room values ('Rm071', '121F', 'Deluxe Room', 2, '45 sqm', 'Enjoy a modern luxury experience in this beautifully appointed deluxe room with a plush king-size bed with premium linens. Work in the spacious office area or take a leisurely look at the high-definition TV show.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'waldorf1.jpg', 139.50, 36);
insert into Room values ('Rm072', '122F', 'Deluxe Suite', 4, '70 sqm', 'This deluxe suite features modern, contemporary décor and floor-to-ceiling windows that offer plenty of natural light and welcome you to a luxurious and comfortable experience. The perfect design of the separate living room is the perfect place to enjoy your entertainment.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'waldorf2.jpg', 335.60, 36);
insert into Room values ('Rm073', '123G', 'Duplex suite', 4, '74 sqm', 'The duplex suite occupies two floors and offers a unique experience and luxurious accommodation in Beijing.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'peninsulabeijing1.jpg', 325.14, 37);
insert into Room values ('Rm074', '123G', 'Premium Premier Suite', 4, '102 sqm', 'Enjoy a memorable and memorable experience in the Premier Premier Suite, which is tastefully furnished with a separate dining and work area, all decorated in dark wood and golden tones.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'peninsulabeijing2.jpg', 400.50, 37);
insert into Room values ('Rm075', '124H', 'Deluxe Standard Room', 2, '40 sqm', 'Room size 40 square meters, separate bathroom.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'ritanhotel1.jpg', 145.50, 38);
insert into Room values ('Rm076', '125H', 'Luxury business suite', 2, '80 sqm', '80 m2 with separate bathroom and living room with double breakfast.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'ritanhotel2.jpg', 360.70, 38);
insert into Room values ('Rm077', '126I', 'Deluxe Room', 2, '55 sqm', 'Located on floors 7-23, the luxurious home-style rooms of approximately 45-55 square meters offer panoramic views of the capital.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'rosewood1.jpg', 123.50, 39);
insert into Room values ('Rm078', '127I', 'Zhuoya Deluxe Room', 2, '63 sqm', 'Overlooking the capital, Zhuoya Deluxe Rooms are designed with business travelers in mind.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'rosewood2.jpg', 219.50, 39);
insert into Room values ('Rm079', '128J', 'Superior Room', 2, '50 sqm', 'Superior rooms are equipped with modern decor, bionics and state-of-the-art technology.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'Novotel_Beijing1.jpg', 199.90, 40);
insert into Room values ('Rm080', '129J', 'Standard Room', 2, '49 sqm', 'The standard room is the basic configuration of Novotel.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities and Minibar', 'Novotel_Beijing2.jpg', 170.50, 40);
--Yangon
insert into Room values ('Rm081', '66M', 'Premium Lake View Room', 2, '48 sqm', 'Enjoy the breathtaking beauty of Inya Lake from the Premium Lake View Room with its modern design and state-of-the-art technology.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'meliaroom.jpg', 270.50, 41);
insert into Room values ('Rm082', '77M', 'Junior Suite', 2, '70 sqm', 'Admire the view of Inya Lake from the room and enjoy all the advantages and comfort of the exclusive The Level service, the most exquisite expression of luxury offered by Meliá.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'meliaroom1.jpg', 499.20, 41);
insert into Room values ('Rm083', '88N', 'Deluxe Room', 2, '25 sqm', 'A deluxe twin or king provides panoramic views through large windows, traditional featuring of wooden parquet flooring with bathroom attached and individual controlled air condition.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'hotelyangon1.jpg', 50.10, 42);
insert into Room values ('Rm084', '89N', 'Executive Lounge Deluxe', 2, '25 sqm', 'he Entitlement of Executive Floor Privileges with higher floor to have nature and true scene of Yangon City.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'hotelyangon2.jpg', 100.20, 42);
insert into Room values ('Rm085', '90P', 'Superior Room with Two Single Beds', 2, '32 sqm', 'Enjoy the ergonomically designed rooms with free high speed WIFI, Tea/Coffee machine, LED flat TV, work desk, Safety locker and rain shower', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'novotelygnmax1.jpg', 200.40, 43);
insert into Room values ('Rm086', '91P', 'Luxury Executive King Bed Room', 3, '34 sqm', 'Apart from all standard benefits, This VIP room offers and add on benefit of access to the Premier Lounge including breakfast, evening happy hours, WIFI and boardroom use. The higher floor rooms offer a distinct view of the city.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'novotelygnmax2.jpg', 300.00, 43);
insert into Room values ('Rm087', '92Q', 'Deluxe', 3, '36.6 sqm', 'Our sophisticated and contemporary Deluxe Rooms are located between the 3rd and 10th floors and the best option for a budget trip.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'lottehotel1.jpg', 90.99, 44);
insert into Room values ('Rm088', '93Q', 'Premier Lake', 3, '36.6 sqm', 'Premier Lake Rooms are located between the 3rd and 10th floors and offer a beautiful view of Inya lake, one of the most scenic vistas in all of Yangon.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'lottehotel2.jpg', 120.20, 44);
insert into Room values ('Rm089', '94R', 'Deluxe Room', 2, '30 sqm', 'Complete with large bay windows offering pool and city views, our Deluxe Room provides a comfortable, light-filled setting for your rest and rejuvenation. If you’re stopping over for business, a spacious executive area and ergonomic work chair are available for added comfort.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'parkroyal1.jpg', 135.00, 45);
insert into Room values ('Rm090', '95R', 'Premier Room', 2, '30 sqm', 'Offering splendid pool and city views, our Premier Room features the comfort of plush furnishing and the convenience of great amenities. And if you’re here for business, make the most of a spacious work desk with an ergonomic work chair.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'parkroyal2.jpg', 155.00, 45);
insert into Room values ('Rm091', '96S', 'Deluxe Room', 2, '42 sqm', 'Views of Inya Lake, pool or city - spacious bathroom with bathtub shower.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'sedonaygn1.jpg', 105.00, 46);
insert into Room values ('Rm092', '97S', 'Inya Wing - Premier Deluxe', 2, '33 sqm', 'Views of Inya Lake, pool or city. Bathroom with bathtub and shower stall.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'sedonaygn2.jpg', 131.00, 46);
insert into Room values ('Rm093', '98T', 'DElUXE SUITE', 2, '40 sqm', 'Our City Star room has a sized bed with a Presidential Serta Perfect Sleeper matress. Enjoy your reading chair, beautiful décor such as a custom upholstered headboard and amenities.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'citystarygn1.jpg', 98.20, 47);
insert into Room values ('Rm094', '99T', 'FAMILY SUITE', 4, '50 sqm', 'Larger than our Superior-class rooms, the King Deluxe or Double Deluxe rooms offer you the choice of one king bed or two double beds. Enjoy your reading chair, beautiful décor such as a custom upholstered headboard, amenities such as crisp 300-thread-count Egyptian cotton sheets, a spacious desk, and a 42” flat-panel HDTV.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'citystarygn2.jpg', 144.10, 47);
insert into Room values ('Rm095', '1A', 'Executive Room', 2, '32 sqm', 'Our Executive rooms comfortable spaces accentuated by large window with amazing Shwedagon Pagoda view.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'bestwesternygn1.jpg', 102.00, 48);
insert into Room values ('Rm096', '1B', 'Junior Suite', 2, '35 sqm', 'Junior Suite are the rooms with Shwedagon Pagoda through by window,  which room includes working space & relaxing area. The room for guests who come for business or special occasion purposes.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'bestwesternygn2.jpg', 159.90, 48);
insert into Room values ('Rm097', '2C', 'Superior Room', 2, '28 sqm', 'Double or twin bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'panorama1.jpg', 80.00, 49);
insert into Room values ('Rm098', '2D', 'Suite Room', 2, '40 sqm', 'Double or twin bed', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'panorama2.jpg', 99.00, 49);
insert into Room values ('Rm099', '3E', 'Deluxe Room City View', 2, '40 sqm', 'With 40 sqm of space to call your own, our Deluxe Rooms provide a place of respite and rejuvenation. Choose either a king-sized or twin comfort calling bed and bask in the contemporary warmth with a private balcony offering spectacular city views.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'chatriumhotel1.jpg', 129.20, 50);
insert into Room values ('Rm0100', '3F', 'Luxury Suite', 2, '85 sqm', 'Private balconies provide stunning views of Kandawgyi Lake and the hotel’s surrounding natural beauty, whilst truly spacious living and dining areas offer ample space for entertaining or relaxing.', 'Breakfast included', 'Wi-Fi, Cable television, Daily housekeeping, bathroom amenities, Minibar and Personalized wake-up call', 'chatriumhotel2.jpg', 179.20, 50);

create table MenuItem
(
menuItemID			varchar(50) not null constraint pk_MenuItem Primary Key,
name				varchar(1000) not null,
description			varchar(1000) not null,
price				decimal(6,2) not null,
photo				varchar(50) not null,
RestaurantID		int,
constraint fk_restaurant foreign key (RestaurantID) references restaurant(RestaurantID)
);

--insert statement for MenuItem
--Singapore
insert into MenuItem values ('A01', 'Rice Vermicelli', 'Braised Rice Vermicelli with Conpoy and Egg White', 15.25, 'menu-03.jpg', 1);
insert into MenuItem values ('A02', 'Baked Fortune Chicken', 'Traditional-style Baked Fortune Chicken', 20.55, 'menu-07.jpg', 1);
insert into MenuItem values ('A03', 'Inaniwa Noodles', 'Braised Inaniwa Noodles with Tiger Prawn in Ginger and Onion Sauce', 30.00, 'menu-08.jpg', 1);
insert into MenuItem values ('A04', 'Double-boiled Sea Whelk Soup', 'Double-boiled Sea Whelk Soup with Organic Chayote and Sakura Chicken', 42.00, 'seawhelk.jpg', 1);
insert into MenuItem values ('A05', 'Steamed Garoupa Fillet', 'Steamed Garoupa Fillet in Chicken Stock and Wine', 32.50, 'menu-12.jpg', 1);
insert into MenuItem values ('B01', 'Jade Wonton Soup Noodle', 'A favorite among the locals, egg noodles, leafy greens and jumbo prawn wontons in soup broth', 12.00, 'jadewonton.jpg', 2);
insert into MenuItem values ('B02', 'Chilli Crab Dumplings', 'A taste of Singapore, fried dumplings filled with chilli crab sauce.', 8.55, 'dumplings.jpg', 2);
insert into MenuItem values ('B03', 'Glutinous Rice with Lotus Leaf', 'Within this lotus leaf lies the rice cooked from the inside. The flavours of braised chicken, mushroom and chestnut seeps evenly throughout the glutinous rice. You will be able to taste the quality you cannot get from anywhere else.', 22.99, 'lotusrice.jpg', 2);
insert into MenuItem values ('B04', 'Trio Steamed Siew Mai', 'Each Siew Mai is different. This dish consist of a Ham Siew Mai, Mushroom Siew Mai and Quail Egg Siew Mai, forming the Siew Mai Trinity.', 15.00, 'Trio-Steamed.jpg', 2);
insert into MenuItem values ('B05', 'Steam Spinach Dumpling with Shrimp', 'A see through clear skin into the greenery inside is something that will catch your attention. A bite into these dumplings will reveal the crunchy prawn fillings and a taste of the healthy greens inside.', 16.55, 'Spinach-Dumpling.jpg', 2);
insert into MenuItem values ('C01', 'Sirloin', 'Legendary Steaks', 29.90, 'Aston-Menu.jpg', 3);
insert into MenuItem values ('C02', 'Black Pepper Chicken', 'Chicken Dinner', 22.90, 'Aston-Menu.jpg', 3);
insert into MenuItem values ('C03', 'Lemon Lime Chicken', 'Chicken Dinner', 22.90, 'Aston-Menu.jpg', 3);
insert into MenuItem values ('C04', 'Grilled Salmon Fillet', 'Entree', 32.90, 'Aston-Menu.jpg', 3);
insert into MenuItem values ('C05', 'Wagyu Beef Burger', 'The Burgers', 13.90, 'Aston-Menu.jpg', 3);
insert into MenuItem values ('D01', 'Chicken Murtabak', 'Available in small, medium and large.', 6.00, 'zamzamchicken.jpg', 4);
insert into MenuItem values ('D02', 'Mutton Murtabak', 'Available in small, medium and large.', 6.00, 'zamzammutton.jpg', 4);
insert into MenuItem values ('D03', 'Mutton and Fish Curry', 'Available in small, medium and large.', 7.00, 'zamzammuttonfish.jpg', 4);
insert into MenuItem values ('D04', 'Mutton Chop', 'Mutton Chop with potato fries and egg.', 8.90, 'zamchop.jpg', 4);
insert into MenuItem values ('D05', 'Mee Goreng', 'Available in Mutton, Beef or Chicken.', 5.00, 'meezam.jpg', 4);
insert into MenuItem values ('E01', 'Veg Hot & Sour Soup', 'Veg Hot & Sour Soup * All prices are subject to 10% service charge and prevailing GST', 5.00, 'vege.jpg', 5);
insert into MenuItem values ('E02', 'Non Veg Hot & Sour Soup', 'Non Veg Hot & Sour Soup * All prices are subject to 10% service charge and prevailing GST', 6.00, 'nonvege.jpg', 5);
insert into MenuItem values ('E03', 'Mushroom Soup', 'Mushroom Soup Mushroom soup with garlic * All prices are subject to 10% service charge and prevailing GST', 5.00, 'vege1.jpg', 5);
insert into MenuItem values ('E04', 'Onion Bhaji', 'Onion Bhaji * All prices are subject to 10% service charge and prevailing GST', 8.00, 'vege3.jpg', 5);
insert into MenuItem values ('E05', 'Vegetable Samosa', 'Vegetable Samosa Triangular pastry stuffed with spicy potato, peas * All prices are subject to 10% service charge and prevailing GST', 5.00, 'vege4.jpg', 5);
insert into MenuItem values ('F01', 'Salmone Cotto A 62 Grandi Con Finocchietto Selvatico', 'Sous vide salmon fillet, wild fennel, asparagus, citrus fruits.', 28.00, 'salmon.jpg', 6);
insert into MenuItem values ('F02', 'Vitello Tonnato', 'Poached, sliced veal and a velvety cream sauce with capers, anchovies and fresh tuna form the base of this popular Italian summer dish. Vitello Tonnato might be the proof that opposites attract.', 28.00, 'vitello.jpg', 6);
insert into MenuItem values ('F03', 'Pizza Genovese', 'Tomato sauce, mozzarella, shrimp, basil pesto.', 30.00, 'pizza.jpg', 6);
insert into MenuItem values ('F04', 'Linguine Allo Scoglio', 'An authentic Southern Italian seafood pasta with prawns, scallops, mussels, clams and cherry tomatoes.', 34.00, 'allo.jpg', 6);
insert into MenuItem values ('F05', 'Profiteroles', 'Lemon cream, warm chocolate fudge, shaved ivory chocolate.', 16.00, 'chocolate.jpg', 6);
insert into MenuItem values ('G01', 'Summer Rolls and Fried Spring Roll', 'Summer Rolls and Fried Spring Roll', 4.20, 'Summer-roll-spring-roll.jpg', 7);
insert into MenuItem values ('G02', 'Vietnamese Pho', 'Sliced Beef, Brisket and Beef Balls Noodle Soup', 10.80, 'pho.jpg', 7);
insert into MenuItem values ('G03', 'Fried Glass Noodles with Sesame Beef', 'Fried Glass Noodles with Sesame Beef', 10.80, 'glassnoodle.jpg', 7);
insert into MenuItem values ('G04', 'Imperial Spring Roll', 'Imperial Spring Roll', 6.20, 'springroll.jpg', 7);
insert into MenuItem values ('G05', 'Mixed Appetizer', 'Prawn Cake, Summer Roll, Fried Spring Roll', 12.50, 'appetizer.jpg', 7);
insert into MenuItem values ('H01', 'JUMBO Award-winning Chilli Crab', 'JUMBO Duo Appetizer', 50.90, 'best-chilli-crab.jpg', 8);
insert into MenuItem values ('H02', 'Live Boston Lobster Stir Fried with Tomato Sauce & Herbs', 'JUMBO Classic Duo Appetizer', 56.90, 'lobster.jpg', 8);
insert into MenuItem values ('H03', 'Slow cooked beef rib in red wine.', 'Chef recommendation slow cooked beef rib in red wine.', 20.00, 'beefrib.jpg', 8);
insert into MenuItem values ('H04', 'King Prawns braised with vermicelli in nonya sauce', 'Chef recommendation King Prawns braised with vermicelli in nonya sauce.', 40.00, 'prawnsauce.jpg', 8);
insert into MenuItem values ('H05', 'Chilled marinated jellyfish with laksa leaves sauce', 'Chef recommendation Chilled marinated jellyfish with laksa leaves sauce.', 14.00, 'jelly.jpg', 8);
insert into MenuItem values ('I01', 'Butter Sugar Toast', 'Comforting and nostalgic, Butter suger toast consists of perfectly crisp toasts slathered with a generous amount of butter and sugar.', 3.00, 'kaya.jpg', 9);
insert into MenuItem values ('I02', 'Cheese Toast with Kaya', 'Crispy on the outside, cheese toast contains a cheesy surprise in the inside and is served with a side of our signature kaya.', 3.50, 'kaya1.jpg', 9);
insert into MenuItem values ('I03', 'Chicken Char Siew Toastwich', 'Deliciously fragrant and sweet, Chicken Char Siew Toastwich makes for a satisfying midday snack when your are craving for something more hearty.', 4.50, 'chickentoast.jpg', 9);
insert into MenuItem values ('I04', 'Coffee Frostyz', 'Your favourite coffee, ice-blended and topped with whipped cream and caramel sauce. A refreshing twist!', 3.99, 'coffee.jpg', 9);
insert into MenuItem values ('I05', 'Green Tea Frostyz', 'A non-caffeine alternative ice-blended with premium green tea powder from Japan, topped with whipped cream & red beans.', 4.99, 'greentea.jpg', 9);
insert into MenuItem values ('J01', 'Sauteed Dong Xing Grouper Fish, Shredded Sweet Peas, Bean Sprouts', 'Available in 100g or 600g.', 16.00, 'dongxing.jpg', 10);
insert into MenuItem values ('J02', 'Marinated Smoked Duck, Chinese Tea Leaves', 'Available in half or whole.', 38.00, 'duck.jpg', 10);
insert into MenuItem values ('J03', 'Poached Lobster Rice', 'Poached Lobster Rice', 20.00, 'lobsterrice.jpg', 10);
insert into MenuItem values ('J04', 'Sliced Chicken Simmered, Chinese Wine, Jelly Fish', 'Sliced Chicken Simmered, Chinese Wine, Jelly Fish', 13.00, 'jellyfish.jpg', 10);
insert into MenuItem values ('J05', 'Chilled Cream Of Sago, Mango, Pomelo', 'Chilled Cream Of Sago, Mango, Pomelo', 12.00, 'mango.jpg', 10);

--Kuala Lumpur
insert into MenuItem values ('K01', 'Steak sandwich', 'With mustard, rucola leaves, parmesan cheese & tomato confit', 18.95, 'steaksandwich.jpg', 11);
insert into MenuItem values ('K02', 'Grilled Black Angus fillet', 'Grilled Black Angus fillet with cannellini beans, spring onion & beef jus', 26.39, 'blackangus.jpg', 11);
insert into MenuItem values ('K03', 'Wagyu Ribeye (Marble score 5 & above)', 'Recommended for 1 person. This cut is very tender and extremely flavoursome.', 97.44, 'wagyuribeye.jpg', 11);
insert into MenuItem values ('K04', 'Prime Rib on the bone', 'Ideal for 2-4 person. This cut is tender, extremely juicy and very flavoursome', 301.13, 'primeribe.jpg', 11);
insert into MenuItem values ('K05', 'Bone marrow', 'Roasted Wagyu bone marrow served with fried porcini mushrooms and truffle espuma', 43.31, 'bonemarrow.jpg', 11);
insert into MenuItem values ('L01', 'Din Tai Fung House Special', 'Seaweed, beansprout and bean curd strips tossed in a spicy and tangy dressing.', 6.00, 'fung.jpg', 12);
insert into MenuItem values ('L02', 'Shaoshing Wine Marinated Chicken', 'Tender chicken steeped in special Chinese rice wine.', 4.50, 'chicken.jpg', 12);
insert into MenuItem values ('L03', 'Crispy Prawn Cake', 'Springy cakes of minced prawn in bean curd wrapper', 3.50, 'prawncake.jpg', 12);
insert into MenuItem values ('L04', 'Spicy Sichuan Chicken', 'Poached chicken with Sichuan chili sauce topped with crushed peanuts.', 5.00, 'chilichicken.jpg', 12);
insert into MenuItem values ('L05', 'Spicy Pickled Cucumber', 'Spicy Pickled Cucumber', 3.30, 'cucumber.jpg', 12);
insert into MenuItem values ('M01', 'PIER 12 Garlic Prawns', 'Sauteed With Garlic | Salt | Lemon Juice | Olive Oil.', 14.00, 'garlicprawn.jpg', 13);
insert into MenuItem values ('M02', 'Smoked Salmon On Potato Pancake ', 'Potato Dill Pancake | Vinaigrette | Capers | Red Onions | Sour Cream.', 16.00, 'potatopancake.jpg', 13);
insert into MenuItem values ('M03', 'Tandoori Flavoured Halibut Fish Fillet', 'Pan Fried | Tandoori Flavoured | Mint Yogurt Cucumber Raita.', 21.00, 'tandoori.jpg', 13);
insert into MenuItem values ('M04', 'Poached Butter Fish Medallions', 'Poached Butter Fish Medallions | Spinach and Mushroom Stuffing | Red Bellpepper Sauce.', 20.00, 'poached.jpg', 13);
insert into MenuItem values ('M05', 'Roasted Rendang Spring Chicken', 'Malaysian Inspired Rendang Roasted Spring Chicken | Roast Vegetables.', 43.31, 'roastedchicken.jpg', 13);
insert into MenuItem values ('N01', 'Maqluba', 'Slices of lamb cooked with Red rice, eggplants, potatoes, tomatoes, served with veg sauce.', 9.00, 'maqluba.jpg', 14);
insert into MenuItem values ('N02', 'Maskouf', 'Fish grilled the Iraqi way.', 10.50, 'maskouf.jpg', 14);
insert into MenuItem values ('N03', 'Stuffed Chicken', 'Chicken marinated with spices, stuffed with rice and minced meat cooked the Iraqi way.', 12.00, 'stuffchicken.jpg', 14);
insert into MenuItem values ('N04', 'Patcha', 'Half a head of lamb with tongue, brain, legs, sausages and Kubba cooked the Iraqi way.', 15.50, 'patcha.jpg', 14);
insert into MenuItem values ('N05', 'Maskouf (fish Grilled 1k) Iraqi trad. Way', 'Maskouf (fish Grilled 1k) Iraqi trad. Way', 12.00, 'grilledfish.jpg', 14);
insert into MenuItem values ('O01', 'Hyderabadi Dum Biriyani (Chicken / Lamb)', 'Hyderabadi Dum Biriyani (Chicken / Lamb)', 11.90, 'brayanichicken.jpg', 15);
insert into MenuItem values ('O02', 'Mutton Rogan Josh', 'MUTTON SPECIAL DELICACY', 10.90, 'Mutton-Rogan-Josh.jpg', 15);
insert into MenuItem values ('O03', 'Paneer Sheek Kebab', 'CURTAIN RAISER & KABAB', 6.90, 'paneerseekh.jpg', 15);
insert into MenuItem values ('O04', 'Chicken Lolly Pop [Wings] (4 Pcs)', 'CURTAIN RAISER & KABAB', 4.50, 'chickenwing.jpg', 15);
insert into MenuItem values ('O05', 'Bread Basket', 'BREAD SPREAD', 6.99, 'breadbasket.jpg', 15);
insert into MenuItem values ('P01', 'Mushroom Fries', 'Portabella Mushrooms Slices bread - crumbed and then deep fried. Juicy, crunchy and literally to die for if you love Mushrooms. Served with our signature Red Sauce.', 12.55, 'mushroom.jpg', 16);
insert into MenuItem values ('P02', 'Jammin with Elvis', '120g Beef patty + Peanut Butter & Jam & Onion Jam = WHOA!', 9.00, 'beefburger.jpg', 16);
insert into MenuItem values ('P03', 'Nasi Lemak Ayam Rendang', 'Grandmama Rendang Sauce combined with Homemade Pickles, topped with Peanut Butter, Sambal, Sunny Side Egg, chopped Ikan Bilis and a Crispy Crunchy Thai style Fried Chicken!', 9.00, 'nasiburger.jpg', 16);
insert into MenuItem values ('P04', 'Chicken & Egg Dilemma', 'Fried Chicken Breast topped with a melted Sharp Cheddar Cheese then slathered on with homemade Eggcellent Salad.', 8.50, 'Dilemma.jpg', 16);
insert into MenuItem values ('P05', 'Shroom Shroom Shroom', 'A whole Fried Portabella, topped with Sharp Cheese Cheese, and Shiitake & Enoki Mushrooms.', 8.00, 'shroom.jpg', 16);
insert into MenuItem values ('Q01', 'Songket Platter', 'A sample platter selection of Songket starters - cucur udang, popiah goreng, kepak ayam, tauhu sumbat', 12.50, 'songketplatter.jpg', 17);
insert into MenuItem values ('Q02', 'Ikan Siakap Masam Manis', 'Sweet and sour deep fried seabass with turmeric and kaffir lime sauce', 15.22, 'ikansweet.jpg', 17);
insert into MenuItem values ('Q03', 'Masak Lemak Udang Nanas', 'Prawn and pineapple chunks cooked in a lightly spiced coconut milk', 6.55, 'prawnmilk.jpg', 17);
insert into MenuItem values ('Q04', 'Rusuk Salai Berkicap', 'Chargrilled marinated short ribs served with pegedil,spicy sweet soy sauce and sambal belacan', 7.88, 'rusuk.jpg', 17);
insert into MenuItem values ('Q05', 'Ayum Panggang Kuah Percik', 'Char-grilled chicken with traditional recipes from the state of Pahang infused with fresh spices served with a rich coconut gravy.', 6.90, 'ayamchicken.jpg', 17);
insert into MenuItem values ('R01', 'Daud Basha', 'Lamb Meat balls cooked with tomato gravy, served with white rice.', 7.80, 'mains_01.jpg', 18);
insert into MenuItem values ('R02', 'Biryani Lamb/Chicken', 'Biryani rice served with succulent lamb chunks or with a half-baked chicken.', 6.60, 'mains_03.jpg', 18);
insert into MenuItem values ('R03', 'Bazilla with Rice', 'Rice cooked with green peas & chicken.', 6.50, 'mains_04.jpg', 18);
insert into MenuItem values ('R04', 'Fried Pomfret', 'Fresh, whole pomfret fried to seal its taste after marinated with special spices.', 10.50, 'seafoods_01.jpg', 18);
insert into MenuItem values ('R05', 'Grilled Prawn', 'Prawns, butterflied then quickly grilled to maintain freshness.', 7.50, 'seafoods_03.jpg', 18);
insert into MenuItem values ('S01', 'Iberico Lamb', 'Selections include the classic Lamb Rack, Ribs, Tournedous, and Loin', 25.00, 'lambb.jpg', 19);
insert into MenuItem values ('S02', 'Grain Fed T-bone', 'Featuring Grain Fed T-bone accompanied with sauteed seasonal vegetables. ', 22.55, 'tbone.jpg', 19);
insert into MenuItem values ('S03', 'Carpetbag Steak', 'Carpetbag Steak and oyster with the award-winning Bruichladdich Black Art 05.1!', 80.72, 'steakkl.jpg', 19);
insert into MenuItem values ('S04', 'Australian Angus Beef - Tenderloin', 'Featuring Black Angus Pure Certified Australian Angus Beef - Tenderloin.', 25.55, 'redbeef.jpg', 19);
insert into MenuItem values ('S05', 'Iberico Lamb', 'Featuring World Healthiest Meat - Iberico Lamb!!', 26.55, 'lambbb.jpg', 19);
insert into MenuItem values ('T01', 'MURGH BOMBAY BOHRI BIRYANI', 'Basmati rice cooked with oriental spices, morsels of chicken & potatoes', 7.50, 'menu-subz-dum-biryani.jpg', 20);
insert into MenuItem values ('T02', 'THANDAI', 'Seasonal refreshing drink of milk, cardamom, almonds & saffron', 2.50, 'thandai.jpg', 20);
insert into MenuItem values ('T03', 'AATISH E ALOO', 'Tandoori potatoes marinated in peshawari spices', 5.60, 'aldoo.jpg', 20);
insert into MenuItem values ('T04', 'TANDOORI ROTI', 'TANDOORI ROTI', 4.50, 'rotiiii.jpg', 20);
insert into MenuItem values ('T05', 'TANDOORI PRAWN SALAD', 'Medley of lettuce, tandoori prawns, naval orange, pepper & cilantro with Cinnamon balsamic dressing.', 9.60, 'prawnsalad.jpg', 20);


--Jakarta
insert into MenuItem values ('U01', 'Sate Daging Sapi Wagyu', 'Wagyu beef skewer char-grilled in traditional fashion assortment of peanut and soy sauce', 24.00, 'satewagyu.jpg', 21);
insert into MenuItem values ('U02', 'Ayam Goreng Selimut Lengkuas', 'House specialty fried chicken with shredded savory galangal topping and fried shallots', 11.05, 'Ayam Goreng.jpg', 21);
insert into MenuItem values ('U03', 'Pisang Bakar Gondo Arum', 'Grilled banana in buttermilk sauce, shredded chedder cheese and Chocolate sauce', 5.28, 'pisangbakar.jpg', 21);
insert into MenuItem values ('U04', 'Kambing Baker Bengawan Solo', 'Authentic marinated and char-grilled Australian lambshank in Central Javanese style, served with crispy sweet potatoes and solo-solo sauce', 22.57, 'solosolo.jpg', 21);
insert into MenuItem values ('U05', 'Udang Bakar Banjarmasin', 'The duo of char-grilled palm tiger prawn from East Kalimantan with homemade special sweet soya sauce', 18.73, 'prawnudang.jpg', 21);
insert into MenuItem values ('V01', 'Chicken Maryland', 'Chicken Maryland with mushroom sauce', 6.00, 'indofood30.jpg', 22);
insert into MenuItem values ('V02', 'Salted Egg Chicken Pasta', 'Salted Egg Chicken Pasta', 12.00, 'indofood31.jpg', 22);
insert into MenuItem values ('V03', 'Butterlemon shrimp pasta', 'Butterlemon shrimp pasta', 12.50, 'indofood32.jpg', 22);
insert into MenuItem values ('V04', 'Pesto with Grilled Chicken pasta', 'Pesto with Grilled Chicken pasta', 13.00, 'indofood33.jpg', 22);
insert into MenuItem values ('V05', 'Aglio olio', 'Aglio olio', 13.00, 'indofood34.jpg', 22);
insert into MenuItem values ('W01', 'BEEF SATAY KOTAGEDE', 'BEEF SATAY KOTAGEDE', 7.60, 'satay.jpg', 23);
insert into MenuItem values ('W02', 'CHICKEN SATAY NUSANTARA', 'CHICKEN SATAY NUSANTARA', 6.60, 'satayy.jpg', 23);
insert into MenuItem values ('W03', 'ORIENTAL SEAFOOD CAKWE', 'ORIENTAL SEAFOOD CAKWE', 8.80, 'seafoodindo.jpg', 23);
insert into MenuItem values ('W04', 'UDANG GULUNG TEMPO DOELOE', 'UDANG GULUNG TEMPO DOELOE', 7.70, 'indofoodball.jpg', 23);
insert into MenuItem values ('W05', 'HOKKIEN SPRING ROLL', 'HOKKIEN SPRING ROLL', 5.50, 'indospringroll.jpg', 23);
insert into MenuItem values ('X01', 'Frankie', 'Indian style wrap stuffed with a filling of your choice together with a tangy taste of chilies and chaat masala.', 7.00, 'indofood6.jpg', 24);
insert into MenuItem values ('X02', 'Baked Sindhi Lolo', 'This baked cake is layered with macaroni and cooked with unique spices of saffron cumin.', 10.00, 'indofood7.jpg', 24);
insert into MenuItem values ('X03', 'Royal Kebab Sampler', 'Queen original and irresistible assortment of tandoori kebabs.', 12.00, 'indofood8.jpg', 24);
insert into MenuItem values ('X04', 'Handi Curry', 'Spiced fragrant homemade curry served in a heavy bottomed earthen pot.', 11.00, 'indofood9.jpg', 24);
insert into MenuItem values ('X05', 'Ayam Boxing', 'Fried crumbed chicken boxing', 9.00, 'indofood10.jpg', 24);
insert into MenuItem values ('Y01', 'Black Onyx Minute Steak', 'Black Onyx Minute Steak', 18.00, 'indofood11.jpg', 25);
insert into MenuItem values ('Y02', 'Bulgogi tacos', 'Bulgogi tacos', 12.00, 'indofood12.jpg', 25);
insert into MenuItem values ('Y03', 'Black Onyx Minute Steak', 'Black Onyx Minute Steak', 18.00, 'indofood13.jpg', 25);
insert into MenuItem values ('Y04', 'Tuna Pizza', 'Tuna Pizza', 11.00, 'indofood14.jpg', 25);
insert into MenuItem values ('Y05', 'Hirame Carpaccio', 'Hirame Carpaccio', 9.99, 'indofood15.jpg', 25);
insert into MenuItem values ('Z01', 'Ayam Goreng Kremes', 'Crispy fried chicken with coconut crunch.', 6.50, 'indofood16.jpg', 26);
insert into MenuItem values ('Z02', 'Soto Betawi', 'Betawi beef curry', 7.50, 'indofood17.jpg', 26);
insert into MenuItem values ('Z03', 'Gurame Bakar Jimbaran', 'Grilled gurame with red curry and belacan chili sauce.', 8.50, 'indofood18.jpg', 26);
insert into MenuItem values ('Z04', 'Nasi Bali', 'Pandan rice with sate lilit, spicy chicken, crispy chicken skin, belacan chili fried egg and accompaniments.', 8.50, 'indofood19.jpg', 26);
insert into MenuItem values ('Z05', 'Wedang Ronde', 'Glutinous rice flour balls in hot ginger broth.', 3.50, 'indofood20.jpg', 26);
insert into MenuItem values ('AA01', 'The GIANT', 'Immense and Succulent! Well-marbled and juicy Ribeye of immense proportions served with exquisite brown sauce to fulfill your primal needs.', 21.90, 'indofood40.jpg', 27);
insert into MenuItem values ('AA02', 'Beef Sukiyaki', 'A Sizzling adaptation of the Japanese Classic, enjoy our exceptional Sukiyaki Sauce draped over Premium Beef.', 15.90, 'indofood41.jpg', 27);
insert into MenuItem values ('AA03', 'Beef Trio Deluxe', 'Diced Cut Steak, Beef Slices and Hamburg', 17.90, 'indofood42.jpg', 27);
insert into MenuItem values ('AA04', 'Beef Aglio Olio', 'The unrivalled union of chuck tender and shortplate beef slices for the ultimate beef aroma and taste.', 12.90, 'indofood43.jpg', 27);
insert into MenuItem values ('AA05', 'Jumbo Beef Pepper Rice', 'The unrivalled union of chuck tender and shortplate beef slices for the ultimate beef aroma and taste. Served sizzling hot on our signature teppan with the trusted combination of Japanese rice, crunchy corn, signature pepper margarine and freshly ground pepper.', 12.90, 'indofood44.jpg', 27);
insert into MenuItem values ('BB01', 'HOT & SOUR FISH SOUP', 'HOT & SOUR FISH SOUP', 7.50, 'indofood35.jpg', 28);
insert into MenuItem values ('BB02', 'HOOK BURGER', 'HOOK BURGER', 13.50, 'indofood36.jpg', 28);
insert into MenuItem values ('BB03', 'HOOK PIZZA', 'HOOK PIZZA', 14.50, 'indofood37.jpg', 28);
insert into MenuItem values ('BB04', 'CHOCOLATE OVERLOAD', 'CHOCOLATE OVERLOAD', 7.00, 'indofood38.jpg', 28);
insert into MenuItem values ('BB05', 'CREAMY BABY POTATOES & MUSHROOM', 'CREAMY BABY POTATOES & MUSHROOM', 8.50, 'indofood39.jpg', 28);
insert into MenuItem values ('CC01', 'Bresaola Salad', 'Air dried raw beef, with cherry tomatoes, Arugula leaves (rocket leaves), Parmesan cheese, balsamic and truffle oil dressing!', 7.90, 'indofood21.jpg', 29);
insert into MenuItem values ('CC02', 'Nasi Goreng Tinta Cumi with Seafood', 'Fried rice is served with cloud sunny side up, crackers, and veges on the side.', 9.90, 'indofood22.jpg', 29);
insert into MenuItem values ('CC03', 'Filleto di Manzo', 'Prime tenderloin cut', 30.00, 'indofood23.jpg', 29);
insert into MenuItem values ('CC04', 'Capelli D Angelo All Aragosta', 'Angel hair pasta lightly cooked and tossed with olive oil, chili flakes, garlic and various seasoning, then topped with Arugula leaves.', 10.00, 'indofood24.jpg', 29);
insert into MenuItem values ('CC05', 'Waffer Cassava', 'Biscuits, chocolate hazelnut, fermented cassava with vanilla ice cream', 5.90, 'indofood25.jpg', 29);
insert into MenuItem values ('DD01', 'Chicken Spring Roll', 'Spice Caravan Chicken Spring Rolls. Deep Fried and Stuffed With Mozzarella Cheese, Spinach and Onions. Served With Dipping Sauce.', 6.00, 'indofood26.jpg', 30);
insert into MenuItem values ('DD02', 'Tuna Spring Roll', 'Spice Caravan Tuna Spring Rolls. Deep Fried and Stuffed With Mozzarella Cheese, Spinach, Onions and Egg. Served With Dipping Sauce.', 7.00, 'indofood26.jpg', 30);
insert into MenuItem values ('DD03', 'Batata Harra', 'A Spicy Potato Based Dish Mix Boiled Then Sauteed With Red Peppers, Coriander, Chili and Garlic In Olive Oil.', 5.50, 'indofood27.jpg', 30);
insert into MenuItem values ('DD04', 'Mandi', 'An Authentic Yemeni Dish, Prepared With Basmati Rice, Traditionally Cooked Slowly Over A Long Period Of Time. Served With A Red Shatta Harra (Hot Chili Sauce) With An Option Of Lamb/ Chicken.', 9.00, 'indofood28.jpg', 30);
insert into MenuItem values ('DD05', 'Spice Caravan Mix Grill', 'Our Combination Of Our Specialty Dishes – Lamb Kofta, Chicken Kofta, Shish Kebab, Shish Tawouk and Lamb Sausage. Served With A Side Of Bread.', 9.50, 'indofood29.jpg', 30);

--Beijing
insert into MenuItem values ('EE01', 'Sweet lotus with sticky rice', 'not applicable', 13.55, 'Da-Dong-lotus-sticky-rice.jpg', 31);
insert into MenuItem values ('EE02', 'Boiled Hainainse chicken', 'not applicable', 15.55, 'Da-Dong-hainainese-chicken.jpg', 31);
insert into MenuItem values ('EE03', 'Duck liver', 'not applicable', 10.99, 'Da-Dong-liver.jpg', 31);
insert into MenuItem values ('EE04', 'Bamboo shoots', 'not applicable', 6.25, 'Da-Dong-bamboo1.jpg', 31);
insert into MenuItem values ('EE05', 'Potato and taro balls', 'not applicable', 10.00, 'Da-Dong-potato.jpg', 31);
insert into MenuItem values ('FF01', 'Australian Beef Carpaccio', 'Parmigiano-Reggiano cheese, arugula', 28.00, 'beefcarpaccio.jpg', 32);
insert into MenuItem values ('FF02', 'China Grill Seafood Bouillabaisse', 'China Grill Seafood Bouillabaisse with garlic crouton and rouille', 19.50, 'seafoodgrill.jpg', 32);
insert into MenuItem values ('FF03', 'Master Chef Jack Aw Yong spicy jumbo crab', 'Master Chef Jack Aw Yong spicy jumbo crab served with fried golden buns.', 50.20, 'jackawyong.jpg', 32);
insert into MenuItem values ('FF04', 'Flambeed dessert extravaganza', 'Flambeed dessert extravaganza', 23.00, 'dessert.jpg', 32);
insert into MenuItem values ('FF05', 'Premium Seafood Platter', 'Whole Boston lobster, brown crab, black tiger prawns, imported oysters, Canadian scallops, black mussels.', 181.70, 'seafoodplatter.jpg', 32);
insert into MenuItem values ('GG01', 'Mala Crawfish', 'Hot and Numbing Mala Crawfish', 25.00, 'crawfish.jpg', 33);
insert into MenuItem values ('GG02', 'Rockstar Crawfish', 'Youmen Fragrant Oil Rockstar Crawfish', 35.00, 'rockstarcrawfish.jpg', 33);
insert into MenuItem values ('GG03', 'Marinated Bamboo Shoots', 'Marinated Bamboo Shoots with Lemon Juice', 11.00, 'bambooshoot.jpg', 33);
insert into MenuItem values ('GG04', 'Mint Leaf Salad', 'Fresh Mint Leaf Salad with Tofu Skins', 9.00, 'mintleaf.jpg', 33);
insert into MenuItem values ('GG05', 'Yunnan-style Fermented Tofu', 'Yunnan-style Fermented Tofu', 11.00, 'fermentedtofu.jpg', 33);
insert into MenuItem values ('HH01', 'Signature shrimp dumpling', 'Signature shrimp dumpling', 6.50, 'shrimpdumpling.jpg', 34);
insert into MenuItem values ('HH02', 'Fresh shrimp steamed rice', 'Fresh shrimp steamed rice', 6.50, 'steamedrice.jpg', 34);
insert into MenuItem values ('HH03', 'Fresh shrimp and wheat', 'Fresh shrimp and wheat', 4.50, 'shrimpfresh.jpg', 34);
insert into MenuItem values ('HH04', 'Fresh leek dumplings', 'Fresh leek dumplings', 5.50, 'leekdumpling.jpg', 34);
insert into MenuItem values ('HH05', 'Egg yolk sandbag', 'Egg yolk sandbag', 5.50, 'eggyolk.jpg', 34);
insert into MenuItem values ('II01', 'Chicken Hara Masala', 'Chicken Hara Masala', 6.00, 'chickenhara.jpg', 35);
insert into MenuItem values ('II02', 'Biryani rice', 'Biryani rice', 6.50, 'riceeee.jpg', 35);
insert into MenuItem values ('II03', 'Beef Skewer', 'Beef Skewer', 7.00, 'skewerr.jpg', 35);
insert into MenuItem values ('II04', 'Lamb Yakhni (Lamb Soup)', 'Lamb Yakhni (Lamb Soup)', 8.00, 'lambsoup.jpg', 35);
insert into MenuItem values ('II05', 'Chicken Corn Soup', 'Chicken Corn Soup', 6.90, 'cornsoup.jpg', 35);
insert into MenuItem values ('JJ01', 'Double Boiled Fish Bone with Dahurian Angelica Root and Szechwan Lovage Rhizone', 'One of Lei Garden’s signature soups boiled from fish bone and a selection of herbal medicines and carries significant health benefits.', 12.00, 'fishbone.jpg', 36);
insert into MenuItem values ('JJ02', 'Preserved Meat Rice cooked in Clay Pot', 'Made to order with homemade preserved meat in a traditional clay pot, and served all-year-round.', 11.00, 'claypot.jpg', 36);
insert into MenuItem values ('JJ03', 'Rice with Deep Fried Rice in Seafood Soup', 'Crispy rice crust served in concentrated lobster bisque, luscious and not greasy.', 9.00, 'friedrice.jpg', 36);
insert into MenuItem values ('JJ04', 'Steamed Various Stuffed Tomato', 'A refreshing vegetarian dish with a touch of zen – made from steaming whole tomato stuffed with assorted fungi.', 8.50, 'tomatooo.jpg', 36);
insert into MenuItem values ('JJ05', 'Barbecued Peking Duck', 'One of Lei’s signature dishes. Whole premium rice-fed duck is roasted to succulent perfection, and the slicing is performed at the dining area for the ultimate in visual and taste enjoyment.', 12.50, 'leiduck.jpg', 36);
insert into MenuItem values ('KK01', 'Homemade brine walnuts', 'Homemade brine walnuts', 10.00, 'brinewalnuts.jpg', 37);
insert into MenuItem values ('KK02', 'Double-boiled fresh abalone soup with ginseng and chicken', 'Double-boiled fresh abalone soup with ginseng and chicken', 30.00, 'ginsengchicken.jpg', 37);
insert into MenuItem values ('KK03', 'Braised chicken with fresh live abalone', 'Braised chicken with fresh live abalone', 30.00, 'liveabalone.jpg', 37);
insert into MenuItem values ('KK04', 'Fried rice with diced duck and goose liver in hot stone', 'Fried rice with diced duck and goose liver in hot stone', 18.00, 'hotstone.jpg', 37);
insert into MenuItem values ('KK05', 'Sweet rice ball soup', 'Sweet rice ball soup', 9.00, 'riceball.jpg', 37);
insert into MenuItem values ('LL01', 'Yogurt fried rice', 'Cooked rice is mixed with yoghurt, cucumber and parsley and is garnished with Tadka (fried mustard seeds and red pepper).', 8.00, 'friedriceyogurt.jpg', 38);
insert into MenuItem values ('LL02', 'Grilled prawns', 'Shelled prawns are seasoned with fennel and baked in Tandoor.', 8.50, 'grilledprawns.jpg', 38);
insert into MenuItem values ('LL03', 'Grilled fish fillet', 'Marinated fish fillets in special sauces and baked in Tandoor.', 6.50, 'grilledfishfillet.jpg', 38);
insert into MenuItem values ('LL04', 'Chickpea mashed potatoes', 'Made from mashed potatoes, fried with Indian spices and fried with chickpea powder.', 5.00, 'mashpotato.jpg', 38);
insert into MenuItem values ('LL05', 'Cashew jelly (Kashnanet Fudge)', 'Known in India as Kaju Katli , it is a luxury dessert that the ancient Indian royal family loves. Made from cashews and sugar, with a cardamom scent, covered with edible silver foil, Kaquekatelli will melt into your mouth.', 4.00, 'cashewjelly.jpg', 38);
insert into MenuItem values ('MM01', 'Oxtail soup', 'Braised oxtail soup, a traditional british malay recipe', 10.50, 'oxtailsoup.jpg', 39);
insert into MenuItem values ('MM02', 'Acar acar', 'Malaysian pickled salad with peanuts and sesame', 7.00, 'acaracar.jpg', 39);
insert into MenuItem values ('MM03', 'Grill salmon', 'Grill salmon topped with yellow sauce', 9.50, 'grillsalmon.jpg', 39);
insert into MenuItem values ('MM04', 'Chili crab', 'Chili crab - house specialty', 15.00, 'chilicrab.jpg', 39);
insert into MenuItem values ('MM05', 'Stir-fried mixed vegetables', 'Stir-fried mixed vegetables', 6.00, 'mixedvege.jpg', 39);
insert into MenuItem values ('NN01', 'Hawaii Hurricane Honolulu Hurricane', 'Pineapple, low-fat Canadian bacon, feel the waves! Other ingredients: chopped onions, red peppers, with mozzarella cheese and a secret pizza sauce.', 15.00, 'hawaiihurricane.jpg', 40);
insert into MenuItem values ('NN02', 'Crazy Chef Salad', 'Wuchao oversized salad, enough for two people to eat, freshly marinated mushrooms, boiled eggs, ham, chicken, Mazu Lila & Cheda cheese, tomato and cucumber slices!', 12.00, 'crazychefsalad.jpg', 40);
insert into MenuItem values ('NN03', 'Spicy French Fries Spicy Chili Salt', 'Spicy French Fries Spicy Chili Salt', 3.50, 'spicyfries.jpg', 40);
insert into MenuItem values ('NN04', 'Garlic Spicy Chicken Wings Garlic Chili', 'Garlic Spicy Chicken Wings Garlic Chili', 8.50, 'garlicwings.jpg', 40);
insert into MenuItem values ('NN05', 'Wuchao Signature Kros Special', 'With the combination of vegetarian and vegetarian, this is the glory of Wuchao! Selected pizza slices, sausages, ham, black olives, green peppers, onions, mushrooms, tomatoes, artichoke cores, etc.', 18.00, 'krospecial.jpg', 40);


--Yangon
insert into MenuItem values ('OO01', 'Prawn Puri', 'Biscuit puri with grilled tiger prawns, homemade spicy mayo, coriander and Marsala salt.', 8.75, 'prawnpuri.jpg', 41);
insert into MenuItem values ('OO02', 'Shwe Taung Kauk Swe', 'Yellow noodles served in a pea broth, coconut milk cream, stripped chicken, crispy noodles and duck egg on the side.', 5.50, 'shwetaung.jpg', 41);
insert into MenuItem values ('OO03', 'Si lone tea', 'Thick milk foam with condensed milk.', 2.60, 'silonetea.jpg', 41);
insert into MenuItem values ('OO04', 'Chicken Tandoori Wrap', 'Wholemeal chapati wrapped around shredded chicken, tomato, cabbage, and red onion', 4.20, 'chickentandoori.jpg', 41);
insert into MenuItem values ('OO05', 'Nan Gyi Thoke', 'Hand-tossed noodle salad. Stripped boiled chicken, chicken liver and giblet homemade chilli oil, Pyinmana pea flour, claypot duck egg, crispy yellow noodles.', 5.60, 'nangyithoke.jpg', 41);
insert into MenuItem values ('PP01', 'Lemongrass soup', 'Lemongrass soup', 5.00, 'lemongrass.jpg', 42);
insert into MenuItem values ('PP02', 'Larb meatballs', 'Larb meatballs', 5.00, 'larbmeatball.jpg', 42);
insert into MenuItem values ('PP03', 'Crispy egg with curry sauce', 'Crispy egg with curry sauce', 4.50, 'crispyegg.jpg', 42);
insert into MenuItem values ('PP04', 'Chicken Curry', 'Chicken Curry', 5.00, 'chickencurry.jpg', 42);
insert into MenuItem values ('PP05', 'Crispy eggs salad', 'Crispy eggs salad', 4.00, 'eggsalad.jpg', 42);
insert into MenuItem values ('QQ01', 'Strozzapreti Bolognese', 'An Italian meat-based sauce (ragù) served with pasta', 12.00, 'bolognese.jpg', 43);
insert into MenuItem values ('QQ02', 'Homemade Spinach & Ricotta Tortellini', 'Homemade Spinach & Ricotta Tortellini', 12.00, 'ricotta.jpg', 43);
insert into MenuItem values ('QQ03', 'Grilled beef Tenderloin', 'Grilled beef Tenderloin', 16.00, 'beeftenderloin.jpg', 43);
insert into MenuItem values ('QQ04', 'Cucumber & Feta Salad', 'Cucumber & Feta Salad', 12.00, 'cucumbersalad.jpg', 43);
insert into MenuItem values ('QQ05', 'Deep fried Calamari', 'Deep fried Calamari', 9.50, 'friedcalamari.jpg', 43);
insert into MenuItem values ('RR01', 'Fresh water prawn curry', 'Fresh water prawn curry', 5.00, 'M-007-Prawn.jpg', 44);
insert into MenuItem values ('RR02', 'Braised Hilsa fish', 'Braised Hilsa fish until the bones melt.A specialty commonly served n ceremonies.', 6.50, 'M-018-59-Braised.jpg', 44);
insert into MenuItem values ('RR03', 'Deep fried dry red anchovy salad.', 'Deep fried dry red anchovy salad.', 3.00, 'SD-008-140Red-Anchovy.jpg', 44);
insert into MenuItem values ('RR04', 'Black bean sauce Salad.', 'Black bean sauce Salad.', 3.00, 'SD-013-19-Black.jpg', 44);
insert into MenuItem values ('RR05', 'Myanmar Traditional Tea Leaf Salad', 'Myanmar Traditional Tea Leaf Salad served with accompaniment.', 5.00, 'D-004-31-Tea-Leaf.jpg', 44);
insert into MenuItem values ('SS01', 'Pickled Beetroot', 'Pickled Beetroot', 6.00, 'beetroot.jpg', 45);
insert into MenuItem values ('SS02', 'WAGYU BEEF CARPACCIO', 'Pickled Mushroom, Baby Cress, Miso And Soy Dressing', 18.00, 'wagyubeef.jpg', 45);
insert into MenuItem values ('SS03', 'Sweet', 'Macha Panna Cotta With Strawberry And Red Bean, Scone With Chantilly Cream And Home Made Strawberry Jam, Chocolate Brownie, Mini Cupcake, Egg Custard Tart', 16.00, 'hi-tea-07-2017.jpg', 45);
insert into MenuItem values ('SS04', 'CEVICHE OF YELLOW TAIL KINGFISH', 'Jelapeno And Yuzu Granita', 9.00, 'yellowkingfish.jpg', 45);
insert into MenuItem values ('SS05', 'MILLE FEUILLE OF SMOKE EEL AND FOIE GRAS', 'Almond Crunch', 10.50, 'smokeeel.jpg', 45);
insert into MenuItem values ('TT01', 'Sausage and Apple Wrap', 'Italian herb “sausage” with apple sauce, peppery rocket, sliced tomatoes, lettuce Dijon mustard, toasted sunflower, pumpkin and flax seeds in tortilla wrap', 6.00, 'applewrap.jpg', 46);
insert into MenuItem values ('TT02', 'Mediterranean Garbanzo Bowl', 'Spanish chickpea, caramelized onion and raisin stew served with couscous, tomato, black olives, capers, roasted carrots, beets, rocket and harissa dressing.', 9.50, 'garbanzo.jpg', 46);
insert into MenuItem values ('TT03', 'The Naked Burger Salad Bowl', 'Our signature bean patty in a bed of crunchie veggies, leafy greens, grilled corn, sandwich pickles, BBQ relish, lemon mayo.', 9.00, 'nakedburger.jpg', 46);
insert into MenuItem values ('TT04', 'Middle Eastern Mezze', 'Falafel, classic hummus, eggplant babaganoush, beetroot muhummara served with tabbouleh, soft pita, tahini dressing.', 10.00, 'middleeast.jpg', 46);
insert into MenuItem values ('TT05', 'Nourish Quinoa Salad', 'Quinoa, mung bean and lentil mix, roasted pumpkin, beetroot, grilled corn, tomato, carrot, red cabbage, rocket and leafy greens, topped with nuts, seeds, raisins, crunchy fuji apple', 9.00, 'quinoasalad.jpg', 46);
insert into MenuItem values ('UU01', 'Avocado Toast', 'GRILLED BREAD, POACHED EGG, SALSA ROJA, FETA, SOFT HERBS', 8.00, '50th_street_6.jpg', 47);
insert into MenuItem values ('UU02', 'Full Breakfast', 'TWO EGGS ANY STYLE, BACON, SAUSAGE, HASH BROWNS, BAKED BEANS, GRILLED TOMATO, SAUTÉED MUSHROOMS, TOAST', 14.00, '50th_street_4.jpg', 47);
insert into MenuItem values ('UU03', '50th Street Burger', 'HOUSE-GROUND AUSTRALIAN BRISKET, CHEDDAR CHEESE, LETTUCE, TOMATOES, ONIONS, PICKLES, GARLIC AIOLI, ON HOME-MADE BRIOCHE, SERVED WITH FRIES', 15.00, '50th_street_9.jpg', 47);
insert into MenuItem values ('UU04', 'MARGHERITA PIZZA', 'TOMATO, MOZZARELLA, FRESH BASIL', 9.00, '50th_street_11.jpg', 47);
insert into MenuItem values ('UU05', 'CRISPY CHICKEN WINGS', 'WITH SPICY WING SAUCE', 6.00, '50th_street_7.jpg', 47);
insert into MenuItem values ('VV01', 'King Crab Sandwich', 'King Crab Sandwich', 6.60, 'kingcrab.jpg', 48);
insert into MenuItem values ('VV02', 'Dark Chocolate Passion Cake', 'Dark Chocolate Passion Cake (Slice)', 4.50, 'darkchoco.jpg', 48);
insert into MenuItem values ('VV03', 'Green Tea Croissant', 'Green Tea Croissant', 6.50, 'greenteacroissant.jpg', 48);
insert into MenuItem values ('VV04', 'Charcoal Croissant', 'Charcoal Croissant', 6.50, 'charcoalcroissant.jpg', 48);
insert into MenuItem values ('VV05', 'Strawberry Croissant', 'Strawberry Croissant', 6.50, 'strawberrycroissant.jpg', 48);
insert into MenuItem values ('WW01', 'Tuna Tartare', 'Tuna Tartare', 8.00, 'tunatar.jpg', 49);
insert into MenuItem values ('WW02', 'Chili Miso Salmon', 'Chili Miso Salmon', 10.00, 'smokedsalmon.jpg', 49);
insert into MenuItem values ('WW03', 'Thai Beef Salad', 'Thai Beef Salad', 9.00, 'beefsalad.jpg', 49);
insert into MenuItem values ('WW04', 'Caramel & Banana Tart', 'Caramel & Banana Tart', 6.50, 'bananatart.jpg', 49);
insert into MenuItem values ('WW05', 'Chocolate Orange Fondant', 'Chocolate Orange Fondant', 6.50, 'orangechoco.jpg', 49);
insert into MenuItem values ('XX01', 'Peperoncino', 'Peperoncino', 10.00, 'peperoncino.jpg', 50);
insert into MenuItem values ('XX02', 'Tom Yam Soup', 'Tom Yam Soup', 7.50, 'tomyumsoup.jpg', 50);
insert into MenuItem values ('XX03', 'Thai Spicy Seafood Salad', 'Thai Spicy Seafood Salad', 8.90, 'thaispicy.jpg', 50);
insert into MenuItem values ('XX04', 'Chichen Pesto Pasta', 'Chichen Pesto Pasta', 11.50, 'chickenpesto.jpg', 50);
insert into MenuItem values ('XX05', 'Chicken & Mushroom Carbonara', 'Chicken & Mushroom Carbonara', 11.50, 'carbonara.jpg', 50);



CREATE Table Admin 
(
AdminID			VARCHAR(30) NOT NULL,
Name			VARCHAR(30) NOT NULL,
Password		VARCHAR(30) NOT NULL,
	PRIMARY KEY (AdminID),
);

--insert statement for admin
INSERT INTO Admin VALUES('admin@admin.com','Admin','admin');

CREATE Table DiscountCoupon (
CouponCode			VARCHAR(15) NOT NULL,
Name				VARCHAR(50) NOT NULL,
Description			VARCHAR(100),
Percentage			Decimal(5,2),
Amount				Decimal(12,2),
StartDate			Date NOT NULL,
EndDate				Date NOT NULL,
AdminID				VARCHAR(30) NOT NULL,
	PRIMARY KEY (CouponCode),
	FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)  
	ON UPDATE CASCADE ON DELETE NO ACTION,
);

--Discount Coupons Into Things to Do
INSERT INTO DiscountCoupon VALUES('DC1', 'July Deal', 'Grab a discount when you book anything on July',0.20, NULL, 
'1-Jul-18', '25-Jul-18','admin@admin.com');
INSERT INTO DiscountCoupon VALUES('DC2', 'August Deal', 'Grab a discount when you book anything on August',NULL, 15,
'1-Aug-18', '31-Aug-18','admin@admin.com');
INSERT INTO DiscountCoupon VALUES('DC3', 'September Deal', 'Get a dsicount when you book anything on September',0.1, NULL, 
'1-Sep-18', '30-Sep-18','admin@admin.com');
INSERT INTO DiscountCoupon VALUES('DC4', 'October Deal', 'Get a dsicount when you book anything on October',0.25, NULL, 
'1-Oct-18', '31-Oct-18','admin@admin.com');
INSERT INTO DiscountCoupon VALUES('DC5', 'November Deal', 'Get a dsicount when you book anything on November',0.25, NULL, 
'1-Nov-18', '30-Nov-18','admin@admin.com');

create table Booking 
(
BookingID			VARCHAR(15) NOT NULL,
Date				DATE NOT NULL,
Time				TIME NOT NULL,
NetAmount			Decimal(12,2),
Tax					Decimal(12,2),
BookingCharges		Decimal(12,2) NOT NULL,
TotalAmt			Decimal(12,2) NOT NULL,
DiscountAmt			Decimal(12,2),
AmtPayable			Decimal(12,2) NOT NULL,
CardHolderName		CHAR(25) NOT NULL,
CardType			VARCHAR(10) NOT NULL,
CardNo				BIGINT NOT NULL,
CVV					VARCHAR(5) NOT NULL,
CardExpiryDate		Varchar(30) NOT NULL,
ApprovalCode		VARCHAR(25) NOT NULL,
custEmail			VARCHAR(30) NOT NULL,
CouponCode			VARCHAR(15),
	PRIMARY KEY (BookingID),
	FOREIGN KEY (custEmail)REFERENCES Customer(custEmail)  
	ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (CouponCode)REFERENCES DiscountCoupon(CouponCode)  
	ON UPDATE CASCADE ON DELETE NO ACTION,
);

 CREATE Table ItemBooking 
(
ItemBookingID		VARCHAR(15) NOT NULL,
StartDate			DATE,
EndDate				DATE,
StartTime			VARCHAR(20),
EndTime				VARCHAR(20),
qty					int,
Price				Decimal(12,2),
itemBookingStatus	VARCHAR(15) DEFAULT 'Pending' NOT NULL check(itemBookingStatus in('Pending','Approved', 'Canceled', 'Refunded')),
BookingID			VARCHAR(15),
TicketID			INT,
roomID				varchar(50),
restaurantID		int,
	PRIMARY KEY (ItemBookingID),
	FOREIGN KEY (BookingID)REFERENCES Booking(BookingID)  
	ON UPDATE No ACTION  ON DELETE NO ACTION,
	FOREIGN KEY (TicketID)REFERENCES TicketType(TicketID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (roomID)REFERENCES Room(roomID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (restaurantID)REFERENCES Restaurant(restaurantID)  
	ON UPDATE No ACTION ON DELETE NO ACTION
);

CREATE Table Dividend (
DividendID			VARCHAR(15) NOT NULL,
Date				DATE NOT NULL,
Time				TIME NOT NULL,
PaidAmt				Decimal(12,2) NOT NULL,
Status				VARCHAR(15) NOT NULL check (Status in ('Paid','Pending')),
attractionID		int,
hotelID				int,
ItemBookingID		VARCHAR(15),
	PRIMARY KEY (DividendID),
	FOREIGN KEY (attractionID)REFERENCES Attraction(attractionID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (hotelID)REFERENCES Hotel(hotelID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (ItemBookingID)REFERENCES ItemBooking(ItemBookingID)
	ON UPDATE No ACTION ON DELETE NO ACTION
);

CREATE Table Review (
revID				varchar (15) NOT NULL,
Date				DATE NOT NULL,
Time				TIME NOT NULL,
feedback			varchar (500) NOT NULL,
Ratings				INT CHECK ( Ratings >=0 and Ratings <=5) NOT NULL,
reportStatus		varchar(20) Default 'None' Not Null,
attractionID		int,
hotelID				int,
restaurantID		int,
custEmail			VARCHAR(30) NOT NULL,
	PRIMARY KEY (revID),
	FOREIGN KEY (attractionID)REFERENCES Attraction(attractionID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (hotelID)REFERENCES Hotel(hotelID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (restaurantID)REFERENCES restaurant(restaurantID)  
	ON UPDATE No ACTION ON DELETE NO ACTION,
	FOREIGN KEY (custEmail)REFERENCES Customer(custEmail)
	ON UPDATE No ACTION ON DELETE NO ACTION
);

--insert statement for Review
--Attraction
--National Monument
insert into Review values ('RV1', '28-July-2018', '09:00PM', 'National Monument is a great place to handout with the family and friends.', 4, default, 21, null, null, 'choosakura18@gmail.com');
insert into Review values ('RV2', '2-July-2018', '09:00AM', 'National Monument is a very good place to enjoy jogging or workout.', 4, default, 21, null, null, 'andrian97@windowslive.com');
insert into Review values ('RV3', '28-May-2018', '08:00PM', 'National Monument is very attractive and there are a lot of people and I had fun.', 4, default, 21, null, null, 'thetpainghtun1995@gmail.com');
--Ancol Dreamland
insert into Review values ('RV4', '28-June-2018', '08:00AM', 'Ancol Dreamland is the best place to bring the kids to during the holiday.', 3, default, 22, null, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV5', '1-January-2018', '09:45PM', 'The kids had a very enjoyable time with the famil at the Ancol Dreamland today.', 4, default, 22, null, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV6', '16-February-2018', '07:20AM', 'Nice place to bring the kids.', 4, default, 22, null, null, 'choosakura18@gmail.com');
--Istiqlal Mosque, Jakarta
insert into Review values ('RV7', '7-July-2018', '01:10PM', 'Fast and helpful check-in at the Istiqlal Mosque.', 4, default, 23, null, null, 'andrian97@windowslive.com');
insert into Review values ('RV8', '5-April-2018', '06:00PM', 'The staffs are very helpful at the Istiqlal Mosque.', 4, default, 23, null, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV9', '30-May-2018', '08:05AM', 'The buildings at Istiqlal Mosque offer modern look and the magnificent scale.', 4, default, 23, null, null, 'zhangchuhan522@yahoo.com');
--National Museum of Indonesia
insert into Review values ('RV10', '31-March-2018', '10:00PM', 'Good place to know the history of Indonesia from the ancient time until now. Had tourguides for foreigners too.', 4, default, 24, null, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV11', '19-January-2018', '10:00AM', 'A place must visit if you are in Jakarta.  You will only gain a lot of knowledge from here. Worth to visit.', 4, default, 24, null, null, 'choosakura18@gmail.com');
insert into Review values ('RV12', '3-March-2018', '05:48PM', 'Enjoyed our visit to the National Museum of Indonesia. The size of the museum is good.', 3, default, 24, null, null, 'andrian97@windowslive.com');
--Taman Mini Indonesia Indah
insert into Review values ('RV13', '20-July-2018', '12:00PM', 'There are many shops that sells Batik and a lot of traditional houses too.', 4, default, 25, null, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV14', '20-February-2018', '12:00AM', 'It is a very pretty park. Nice for taking a walk.', 4, default, 25, null, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV15', '1-June-2018', '11:30PM', 'Disneyland version of mini Indonesia that represent every single native living house from 34 Province separated on 5 big islands and thousands of small islands which also has their own culture, ethnic, and even language or dialect.', 4, default, 25, null, null, 'haymarnoo1@gmail.com');
--Jakarta History Museum
insert into Review values ('RV16', '8-March-2018', '11:00PM', 'A nice place to hang out.', 4, default, 26, null, null, 'choosakura18@gmail.com');
insert into Review values ('RV17', '9-July-2018', '11:40PM', 'The museums are all closed. Most rooms of the museums are closed too.', 4, default, 26, null, null, 'andrian97@windowslive.com');
insert into Review values ('RV18', '12-May-2018', '09:50PM', 'It looks modern since it has been renovated. But need to change the looks of the souvenir shops.', 4, default, 26, null, null, 'thetpainghtun1995@gmail.com');
--Taman Wisata Alam Mangrove, Angke Kapuk
insert into Review values ('RV19', '14-January-2018', '09:10AM', 'A peaceful and a place to escape from city.', 5, default, 27, null, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV20', '14-February-2018', '12:30PM', 'Nice place to visit with friends.', 4, default, 27, null, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV21', '21-July-2018', '12:11PM', 'Great place to hike or walk around enjoying the nature and bird watching.', 4, default, 27, null, null, 'choosakura18@gmail.com');
--Sea World Indonesia
insert into Review values ('RV22', '8-January-2018', '04:25PM', 'Good place to bring the kids.', 3, default, 28, null, null, 'andrian97@windowslive.com');
insert into Review values ('RV23', '27-February-2018', '09:00PM', 'Great place for the family to come for the holidays.', 4, default, 28, null, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV24', '19-March-2018', '09:00PM', 'Children will gain lots of knowledges about fish and other animals.', 5, default, 28, null, null, 'zhangchuhan522@yahoo.com');
--Atlantis Water Adventure
insert into Review values ('RV25', '30-April-2018', '09:06PM', 'Great place to hangout with the families.', 4, default, 29, null, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV26', '31-May-2018', '09:00AM', 'Largest waterpark in Jakarta. Great to bring kids.', 4, default, 29, null, null, 'choosakura18@gmail.com');
insert into Review values ('RV27', '14-June-2018', '05:50PM', 'Nice place to bring the children and for them to have fun since there are many water activities.', 4, default, 29, null, null, 'andrian97@windowslive.com');
--Situ Lembang Park
insert into Review values ('RV28', '7-July-2018', '05:10PM', 'Nice place to relax in the middle of the city.', 4, default, 30, null, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV29', '1-January-2018', '09:00AM', 'The park is clean are good for a great walk.', 4, default, 30, null, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV30', '6-February-2018', '07:24PM', 'Well maintained and can fish too!', 3, default, 30, null, null, 'haymarnoo1@gmail.com');

--Hotel
--Hotel Indonesia Kempinski Jakarta
insert into Review values ('RV31', '24-March-2018', '10:55AM', 'Near the city center and a lot of shopping malls are around too.', 4, default, null, 21, null, 'choosakura18@gmail.com');
insert into Review values ('RV32', '25-April-2018', '04:30PM', 'The room is large and has a great room service.', 4, default, null, 21, null, 'andrian97@windowslive.com');
insert into Review values ('RV33', '26-May-2018', '01:50PM', 'The staffs are very friendly.', 4, default, null, 21, null, 'thetpainghtun1995@gmail.com');
--Fairmont Jakarta
insert into Review values ('RV34', '2-June-2018', '02:00PM', 'The facilities there are very well maintained and had a great time at the hotel.', 4, default, null, 22, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV35', '3-July-2018', '02:15PM', 'Great room services and enjoyed my days at the hotel.', 4, default, null, 22, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV36', '4-January-2018', '03:00AM', 'The room that I stayed is big and cozy. Great hotel services too!', 4, default, null, 22, null, 'choosakura18@gmail.com');
--Aryaduta Jakarta
insert into Review values ('RV37', '5-February-2018', '08:55PM', 'Some guests mentioned bathroom cleanliness could be improved.', 3, default, null, 23, null, 'andrian97@windowslive.com');
insert into Review values ('RV38', '6-March-2018', '08:55AM', 'The staffs are helpful and friendly.', 3, default, null, 23, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV39', '7-April-2018', '09:28AM', 'Nice cozy place. Very good ambience. Problem is parking.', 3, default, null, 23, null, 'zhangchuhan522@yahoo.com');
--Grandkemang Jakarta
insert into Review values ('RV40', '8-May-2018', '12:40PM', 'Spacious, clean and quiet room.', 4, default, null, 24, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV41', '9-June-2018', '12:25PM', 'The hotel room was a good size and was easy to access.', 4, default, null, 24, null, 'choosakura18@gmail.com');
insert into Review values ('RV42', '10-July-2018', '03:33PM', 'Really helpful and warm services received by the hotel staffs from check-in to housekeeping to the lounge to check-out', 4, default, null, 24, null, 'andrian97@windowslive.com');
--Alila Jakarta
insert into Review values ('RV43', '11-Jul-2018', '09:47PM', 'Nice hotel to stay in but the bar was expensive.', 3, default, null, 25, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV44', '12-February-2018', '02:20PM', 'Both my family and I enjoyed the stay at the hotel.', 4, default, null, 25, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV45', '13-March-2018', '03:56PM', 'Nice hotel with many seating areas. But the pub is too expensive.', 3, default, null, 25, null, 'haymarnoo1@gmail.com');
--Sari Pacific Jakarta
insert into Review values ('RV46', '14-April-2018', '03:56AM', 'The interior looks old and not modern. Gym and pool are okay but very crowded. But the room is clean and the crew is hospitable.', 4, default, null, 26, null, 'choosakura18@gmail.com');
insert into Review values ('RV47', '15-May-2018', '06:00PM', 'Professional hospitality staffs.', 4, default, null, 26, null, 'andrian97@windowslive.com');
insert into Review values ('RV48', '16-June-2018', '06:44PM', 'What a comfortable hotel!  Nice food,  good conference rooms and wonderful customer care.', 4, default, null, 26, null, 'thetpainghtun1995@gmail.com');
--Mercure Jakarta Kota
insert into Review values ('RV49', '17-July-2018', '07:00PM', 'Need to improve the food and variation of the food everyday.', 4, default, null, 27, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV50', '18-January-2018', '08:00PM', 'Bed was large and comfortable. Not enough variety for breakfast.', 3, default, null, 27, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV51', '19-February-2018', '09:00PM', 'Good service and location.', 3, default, null, 27, null, 'choosakura18@gmail.com');
--Sparks Jakarta
insert into Review values ('RV52', '20-March-2018', '10:00PM', 'The location of the hotel is nice since it is very easy to access to markets.', 4, default, null, 28, null, 'andrian97@windowslive.com');
insert into Review values ('RV53', '21-April-2018', '11:00PM', 'The hotel was located near the main street which was a plus for me. Easy access to everywhere.', 4, default, null, 28, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV54', '22-May-2018', '12:00PM', 'Was good for its value and quality of the room was reasonable.', 4, default, null, 28, null, 'zhangchuhan522@yahoo.com');
--Gran Meliá Jakarta
insert into Review values ('RV55', '23-June-2018', '01:00PM', 'Favourite hotel in Jakarta. The staffs are very helpful. Would recommend to my friends.', 5, default, null, 29, null, 'haymarnoo1@gmail.com');
insert into Review values ('RV56', '24-July-2018', '02:00PM', 'One of the best high end hotel in Jakarta.', 5, default, null, 29, null, 'choosakura18@gmail.com');
insert into Review values ('RV57', '25-January-2018', '03:00PM', 'Lovely room to stay with nice room services.', 5, default, null, 29, null, 'andrian97@windowslive.com');
--Ascott Jakarta
insert into Review values ('RV58', '26-February-2018', '04:40PM', 'Great hotel apartment next to two big malls, Grand Indonesia Mall and Plaza Indonesia Mall.', 5, default, null, 30, null, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV59', '27-March-2018', '05:15AM', 'Friendly staffs and spacious rooms and very clean apartment.', 5, default, null, 30, null, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV60', '28-April-2018', '06:00AM', 'Affordable price and excellent services.', 4, default, null, 30, null, 'haymarnoo1@gmail.com');

--Restaurant
--Harum Manis
insert into Review values ('RV61', '29-May-2018', '07:35AM', 'Spacious place with indonesian food menu.', 4, default, null, null, 21, 'choosakura18@gmail.com');
insert into Review values ('RV62', '30-June-2018', '08:50AM', 'The place is fine. Many parking lots.', 4, default, null, null, 21, 'andrian97@windowslive.com');
insert into Review values ('RV63', '31-July-2018', '09:27AM', 'I went there with some of my friends. Good service and staff are very engaging. Delicious range on the menu.', 4, default, null, null, 21, 'thetpainghtun1995@gmail.com');
--Frescoristo
insert into Review values ('RV64', '1-January-2018', '10:00AM', 'Very affortable price.', 4, default, null, null, 22, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV65', '2-February-2018', '11:58PM', 'On weekdays, its a nice place to hang out, since its pretty quite.', 4, default, null, null, 22, 'haymarnoo1@gmail.com');
insert into Review values ('RV66', '3-March-2018', '12:59PM', 'Cozy place for family or friends gathering, love their food so much.', 5, default, null, null, 22, 'choosakura18@gmail.com');
--Seribu Rasa Menteng
insert into Review values ('RV67', '4-April-2018', '01:50PM', 'Nice place to take your international guests to enjoy traditional food.', 4, default, null, null, 23, 'andrian97@windowslive.com');
insert into Review values ('RV68', '5-May-2018', '02:40AM', 'Exceptional Indonesian food & ambience.', 5, default, null, null, 23, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV69', '6-June-2018', '03:39PM', 'Great service. Multiple glass rooms & segments for quiet dinner. They have the best Indonesian food I’ve ever tried.', 5, default, null, null, 23, 'zhangchuhan522@yahoo.com');
--Queens Tandoor
insert into Review values ('RV70', '7-July-2018', '04:18PM', 'Queens Tandoor is the best Indian restaurant I’ve tried in Jakarta.', 5, default, null, null, 24, 'haymarnoo1@gmail.com');
insert into Review values ('RV71', '8-January-2018', '05:00AM', 'Still the best. Delicious food and friendly staff.', 4, default, null, null, 24, 'choosakura18@gmail.com');
insert into Review values ('RV72', '9-February-2018', '06:52PM', 'This is the best indian place i have ever been to.  Service, food quality, and Price is too great.', 5, default, null, null, 24, 'andrian97@windowslive.com');
--Akira Back
insert into Review values ('RV73', '10-March-2018', '07:00PM', 'One of the best Japanese restaurants i have eaten outside of Japan.', 5, default, null, null, 25, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV74', '11-April-2018', '08:27PM', 'Great fusion. Creative food combination.', 5, default, null, null, 25, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV75', '12-May-2018', '09:36AM', 'I had a great lunch on this place, but the portion is quite small. The food is great.', 4, default, null, null, 25, 'haymarnoo1@gmail.com');
--Sate Khas Senayan
insert into Review values ('RV76', '13-June-2018', '10:25PM', 'The food is tasy and the price is affordable.', 4, default, null, null, 26, 'choosakura18@gmail.com');
insert into Review values ('RV77', '14-July-2018', '11:27AM', 'Tasty foods and great to come with family and friends.', 4, default, null, null, 26, 'andrian97@windowslive.com');
insert into Review values ('RV78', '15-January-2018', '12:22PM', 'Nice decoration and affordable prices.', 4, default, null, null, 26, 'thetpainghtun1995@gmail.com');
--Pepper Lunch
insert into Review values ('RV79', '16-February-2018', '01:00AM', 'The food is tasty but quite expensive.', 4, default, null, null, 27, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV80', '17-March-2018', '02:30PM', 'Great portion and tasty food.', 5, default, null, null, 27, 'haymarnoo1@gmail.com');
insert into Review values ('RV81', '18-April-2018', '03:00PM', 'The place is nice to come with the families or friends.', 5, default, null, null, 27, 'choosakura18@gmail.com');
--The Hook Restaurant And Cafe
insert into Review values ('RV82', '19-May-2018', '04:50PM', 'This is a very recommended place to hang out in group.', 5, default, null, null, 28, 'andrian97@windowslive.com');
insert into Review values ('RV83', '20-June-2018', '05:10PM', 'The staff are so friendly, the dont have specific room for praying. But when I asking for that, they can provide me a decent room for praying, included the mat and the clothes.', 4, default, null, null, 28, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV84', '21-July-2018', '06:50PM', 'Spacey dining room, good menu, good taste, little bit pricy.', 4, default, null, null, 28, 'zhangchuhan522@yahoo.com');
--Patio Venue & Dining
insert into Review values ('RV85', '22-January-2018', '07:14PM', 'I had brunch with my friends and the ambiance and atmosphere here was nice.', 4, default, null, null, 29, 'haymarnoo1@gmail.com');
insert into Review values ('RV86', '23-February-2018', '08:20PM', 'My friends order other items that was actually pretty good from their Asian Food selections.', 5, default, null, null, 29, 'choosakura18@gmail.com');
insert into Review values ('RV87', '24-March-2018', '09:46PM', 'A cozy place to have your dinner and a tasty food too.', 4, default, null, null, 29, 'andrian97@windowslive.com');
--Fez-Kinara dining & Lounge
insert into Review values ('RV88', '25-April-2018', '09:23AM', 'Good ambience, good food. Not really good service.', 3, default, null, null, 30, 'thetpainghtun1995@gmail.com');
insert into Review values ('RV89', '26-May-2018', '10:11PM', 'Nice place for tasting indian cuisine with improved taste.', 4, default, null, null, 30, 'zhangchuhan522@yahoo.com');
insert into Review values ('RV90', '27-Jul-2018', '11:11PM', 'Very much enjoyed the indian food here! Good food is the highlight of the experience, but the decor and atmosphere adds to the overall score. Portions were large and served quite quickly and tasted great.', 4, default, null, null, 30, 'haymarnoo1@gmail.com');