-- Team 10: Tenzin, Vy, Abigail
-- Spotify database


SET default_storage_engine=InnoDB;
SELECT @@default_storage_engine;

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS account, podcastHost, subscriptionPlan, user, artist, company, recordLabel, advertisement;
DROP TABLE IF EXISTS audioLength, date_relation, genre;
DROP TABLE IF EXISTS podcast, podcastEpisode, podcastEpisode_ad;
DROP TABLE IF EXISTS song, artist_association, contributor_association, song_interaction;
DROP TABLE IF EXISTS album, track;
SET foreign_key_checks = 1;

-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE account (
    accountId           INT         PRIMARY KEY,
    account_email       VARCHAR(60) NOT NULL,
    profile_picture     VARCHAR(60),
    payment_info        VARCHAR(20),
    display_name      	VARCHAR(60) NOT NULL
);


CREATE TABLE podcastHost (
   podcastHost_accountId    INT	 REFERENCES account(accountId),
   PRIMARY KEY (podcastHost_accountId)
);


CREATE TABLE subscriptionPlan (
	plan_name			VARCHAR(20)	PRIMARY KEY,
	premium_status		BOOLEAN,
	plan_price			DECIMAL(4,2)
);


CREATE TABLE user (
  user_accountId		INT			REFERENCES account(accountId),
  plan_name				VARCHAR(20)	REFERENCES subscriptionPlan(plan_name),
  PRIMARY KEY (user_accountId)
);


CREATE TABLE company (
	company_name			VARCHAR(100)	PRIMARY KEY,
	company_hq_address		VARCHAR(100),
	company_phone_number	VARCHAR(20),
	company_email			VARCHAR(60) NOT NULL
);


CREATE TABLE artist (
	artist_accountId	INT			REFERENCES account(accountId),
	verified_status		BOOLEAN,
	company_name		VARCHAR(60)	REFERENCES company(company_name),
	PRIMARY KEY (artist_accountId)
);


CREATE TABLE recordLabel (
	company_name		VARCHAR(60)	REFERENCES company(company_name),
	PRIMARY KEY (company_name)
);


CREATE TABLE advertisement (
	advertisementId		INT			PRIMARY KEY,
	ad_type				VARCHAR(30),
	promoted_item		VARCHAR(60),
	company_name		VARCHAR(60)	REFERENCES company(company_name)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE audioLength (
	duration_of_time	TIME	PRIMARY KEY
);


CREATE TABLE date_relation (
	date_type			VARCHAR(30)	NOT NULL,
	correspondent_date	DATE NOT NULL,
	PRIMARY KEY (date_type, correspondent_date)
);


CREATE TABLE genre (
	genre_type			VARCHAR(30)		PRIMARY KEY
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE podcast (
	podcastId INT PRIMARY KEY,
	podcast_title VARCHAR(60) NOT NULL,
	podcast_description VARCHAR(600),
	podcastHost_accountId INT REFERENCES podcastHost(podcastHost_accountId),
	genre_type VARCHAR(30) REFERENCES genre(genre_type)
);


CREATE TABLE podcastEpisode (
	podcastId INT REFERENCES podcast(podcastId),
	episode_title VARCHAR(100) NOT NULL,
	episode_description VARCHAR(600),
	guest_speaker VARCHAR(60),	
	duration_of_time TIME REFERENCES audioLength(duration_of_time),
	date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY (podcastId, episode_title)
);


CREATE TABLE podcastEpisode_ad (
    podcastId				INT,
	episode_title			VARCHAR(100) NOT NULL,
    FOREIGN KEY (podcastId, episode_title) REFERENCES podcastEpisode(podcastId, episode_title),
	advertisementId			INT			REFERENCES advertisement(advertisementId),
	episode_adRevenue		DECIMAL(11,2),
	PRIMARY KEY (podcastId, episode_title, advertisementId)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE song (
	songId INT PRIMARY KEY,
	song_title VARCHAR(100),
	duration_of_time TIME REFERENCES audioLength(duration_of_time),
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
	genre_type VARCHAR(30),
	FOREIGN KEY (genre_type) REFERENCES genre(genre_type),
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date)
);

CREATE TABLE artist_association (
	artist_role VARCHAR(30),
	artist_accountId INT REFERENCES artist(artist_accountId),
	songId INT REFERENCES song(songId),
	PRIMARY KEY(artist_role, artist_accountId,songId)
);

CREATE TABLE contributor_association (
    contributor_employee_id INT NOT NULL,
	contributor_role VARCHAR(30) NOT NULL,
	company_name VARCHAR(60) REFERENCES company(company_name),
	songId INT REFERENCES song(songId),
	PRIMARY KEY	(contributor_employee_id, contributor_role, company_name, songId)			
);


CREATE TABLE song_interaction(
	user_accountId		INT			 REFERENCES user(user_accountId),
	songId				INT			 REFERENCES song(songId),
	song_interaction_time	TIME,
	like_status			BOOLEAN,
	song_download_status	BOOLEAN,
	song_stream_status		BOOLEAN,
	song_interactionRevenue	DECIMAL(12,10),
	song_saved_status		BOOLEAN,
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY(user_accountId, songId, song_interaction_time)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE album (
	albumId INT NOT NULL PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	album_art VARCHAR(60),
	artist_accountId INT REFERENCES artist(artist_accountId),
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date)
);

CREATE TABLE track (
	albumId INT REFERENCES album(albumId),
	songId INT REFERENCES song(songId),
	track_number INT, 
	PRIMARY KEY (albumId, songId)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO audioLength VALUES ('3:32');
-- INSERT INTO audioLength VALUES ('4:42');
-- INSERT INTO audioLength VALUES ('3:50');
-- INSERT INTO audioLength VALUES ('20:00');
-- INSERT INTO audioLength VALUES ('25:00');
-- INSERT INTO audioLength VALUES ('27:32');
-- INSERT INTO audioLength VALUES ('1:40:00');
-- INSERT INTO audioLength VALUES ('2:01:45');
-- INSERT INTO audioLength VALUES ('40:00');
-- INSERT INTO audioLength VALUES ('45:12');
-- INSERT INTO audioLength VALUES ('37:58');
-- INSERT INTO audioLength VALUES ('30:00');
-- INSERT INTO audioLength VALUES ('3:54:12');
-- INSERT INTO audioLength VALUES ('40:32');

-- INSERT INTO date_relation VALUES ('release', '1987-01-07');
-- INSERT INTO date_relation VALUES ('release', '2020-04-02');
-- INSERT INTO date_relation VALUES ('release', '2014-06-14');
-- INSERT INTO date_relation VALUES ('release', '2014-09-15');
-- INSERT INTO date_relation VALUES ('listen', '2022-01-01');
-- INSERT INTO date_relation VALUES ('listen', '2022-01-14');
-- INSERT INTO date_relation VALUES ('listen', '2022-01-30');
-- INSERT INTO date_relation VALUES ('release', '1974-02-22');
-- INSERT INTO date_relation VALUES ('published', '2023-04-17');
-- INSERT INTO date_relation VALUES ('published', '2023-04-15');
-- INSERT INTO date_relation VALUES ('published', '2023-04-13');
-- INSERT INTO date_relation VALUES ('published', '2023-04-12');
-- INSERT INTO date_relation VALUES ('published', '2022-07-04');
-- INSERT INTO date_relation VALUES ('published', '2023-01-31');
-- INSERT INTO date_relation VALUES ('published', '2012-06-18');
-- INSERT INTO date_relation VALUES ('published', '2044-05-23');
-- INSERT INTO date_relation VALUES ('published', '2044-05-24');
-- INSERT INTO date_relation VALUES ('published', '2023-09-04');
-- INSERT INTO date_relation VALUES ('published', '2000-04-08');
-- INSERT INTO date_relation VALUES ('published', '2022-06-20');

-- INSERT INTO genre VALUES ('Pop');
-- INSERT INTO genre VALUES ('Kpop');
-- INSERT INTO genre VALUES ('True crime');
-- INSERT INTO genre VALUES ('Education');
-- INSERT INTO genre VALUES ('Politics');
-- INSERT INTO genre VALUES ('Health');
-- INSERT INTO genre VALUES ('Comedy');
-- INSERT INTO genre VALUES ('Sport');
-- INSERT INTO genre VALUES ('Slice of life');

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO subscriptionPlan VALUES ('Free', false, 0);
-- INSERT INTO subscriptionPlan VALUES ('Individual', true, 9.99);
-- INSERT INTO subscriptionPlan VALUES ('Duo', true, 12.99);
-- INSERT INTO subscriptionPlan VALUES ('Family', true, 15.99);
-- INSERT INTO subscriptionPlan VALUES ('Student', true, 4.99);

-- INSERT INTO company VALUES ('Nike', '1699 St. Seattle, WA 51903', '5238709494', 'nikecontact@nike.com');
-- INSERT INTO company VALUES ('Adidas', '19 St. Bavaria, Germany 13248', '3794200090', 'contact@adidas.com');
-- INSERT INTO company VALUES ('Virgin Music', '58038 Lacey View Jaquelinshire, Mississippi, Great Britain', '9378209302', 'contact@adidas.com');
-- INSERT INTO company VALUES ('Universal Music', '5 St. Los Angeles, CA 13248', '0907992294', 'contact@universalmusic.com');
-- INSERT INTO company VALUES ('Capitol Record', '496 Misty Shores Suite 944 33687 New Kendra, Illinois, United States', '4958220182', 'contact@universalmusic.com');
-- INSERT INTO company VALUES ('The New York Times', '620 8th Ave, New York, NY 10018', '239148102', "contact@nyt.com");

-- INSERT INTO advertisement VALUES (1, "sponsorship", "football shoes", "Nike");
-- INSERT INTO advertisement VALUES (2, "ad", "track suit", "Adidas");
-- INSERT INTO advertisement VALUES (3, "ad", "subscription", 'The New York Times');
-- INSERT INTO advertisement VALUES (4, 'sponsorship', 'footall shoes', 'Adidas');
-- INSERT INTO advertisement VALUES (5, 'ad', 'swimsuits', 'Nike');
-- INSERT INTO advertisement VALUES (6, 'ad', 'football shoes', 'Nike');

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO account VALUES (100, 'tashi@hotmail.com', 'tashi.png', '1098409134', 'Tashi');
-- INSERT INTO account VALUES (101, 'ejohnny@gmail.com', 'johnny.png', NULL, 'Elton John');
-- INSERT INTO account VALUES (102, 'elonmusk@twitter.com', 'elon.png', '14890341', 'Elon Musk');
-- INSERT INTO account VALUES (103, 'timlang@macalester.edu', NULL, '431098401', 'Timothy Lang');
-- INSERT INTO account VALUES (105, 'gyalpo@macalester.edu', 'gyalpo.png', '8408132094', 'Nyima Gyalpo');
-- INSERT INTO account VALUES (106, 'jared@msn.com', NULL, NULL, 'Jared James');
-- INSERT INTO account VALUES (107, 'nytt@msn.com', 'nyt.png', '30491890', 'The New York Times');
-- INSERT INTO account VALUES (110, 'abigail@gmail.com', 'abigail.png', '122239032', 'Abigail');
-- INSERT INTO account VALUES (111, 'vy@gmail.com', 'vy.png', '3222290032', 'Vy');
-- INSERT INTO account VALUES (112, 'tenzin@gmail.com', 'tenzin.png', '122299032', 'Tenzin');

-- INSERT INTO account VALUES (143, "rogan@email.com", "rogan.jpg","10849843928", 'Joe Rogan');
-- INSERT INTO account VALUES (144, "m_p@email.com", "m_p.png", "102940384013", "Michael Hobbes & Peter Shamshiri");
-- INSERT INTO account VALUES (145, "fox@fox.com", "fox.png", "2840324809", "Fox Audio Network");
-- INSERT INTO account VALUES (146, "dearmedia@media.com", "DM.png", "208092384023", "Dear Media");
-- INSERT INTO account VALUES (147, "ps@gmail.com", "P20.png", "99093840", "The Psychology of your 20's");
-- INSERT INTO account VALUES (148, "smedia@gmai.com", "SM.png", "20349190581", "Scicomm Media");
-- INSERT INTO account VALUES (149, "contact@nyt.com", "Nyt.png", "239148102", "The New York Times");
-- INSERT INTO account VALUES (150, "lex@fridman.com", "lex.png", "1948109041", "Lex Fridman");
-- INSERT INTO account VALUES (151, "sony@son.com", "sony.png", "19841092384", "EmRata / Sony Music Entertainment / Somethin' Else");
-- INSERT INTO account VALUES (152, "wave@sport.com", "wave.png", "9324810941", "Wave Sports + Entertainment");
-- INSERT INTO account VALUES (153, "audiochuck@gmail.com", "audiochuck.png", "914091384109", "audiochuck");
-- INSERT INTO account VALUES (154, "YMH@gmail.com", "ymh.png", "1302480193", "YMH Studios");
-- INSERT INTO account VALUES (155, "gimlet@Gimlet.com", "Gimlet.png", "4091384091", "Gimlet");
-- INSERT INTO account VALUES (156, "ballen@ballen.com", 'ballen.png', "1984103341",  "MrBallen");
-- INSERT INTO account VALUES (157, "alex@cooper.com", "Alex.png", "810950095", "Alex Cooper");
-- INSERT INTO account VALUES (158, "theo@von.com", "Theo.png",  "309480941", "Theo Von");
-- INSERT INTO account VALUES (159,  "npr@npr.com", "npr.png", "39184019320", "NPR");
-- INSERT INTO account VALUES (160, "wood@elf.com", "wood.png", "3129840109", "Wood Elf Media");
-- INSERT INTO account VALUES (161, "morbid@wondery.com", "morbid.png", "48931084103", "Morbid Network | Wondery");

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO user VALUES (105, 'Duo');
-- INSERT INTO user VALUES (106, 'Family');
-- INSERT INTO user VALUES (107, 'Individual');
-- INSERT INTO user VALUES (110, 'Free');
-- INSERT INTO user VALUES (111, 'Student');
-- INSERT INTO user VALUES (112, 'Student');

-- INSERT INTO artist VALUES(100, false, 'Universal Music');
-- INSERT INTO artist VALUES(101, true, 'Universal Music');
-- INSERT INTO artist VALUES(102, true, 'Virgin Music');
-- INSERT INTO artist VALUES(103, true, 'Capitol Record');

-- INSERT INTO podcastHost VALUES(143);
-- INSERT INTO podcastHost VALUES(144);
-- INSERT INTO podcastHost VALUES(145);
-- INSERT INTO podcastHost VALUES(146);
-- INSERT INTO podcastHost VALUES(147);
-- INSERT INTO podcastHost VALUES(148);
-- INSERT INTO podcastHost VALUES(149);
-- INSERT INTO podcastHost VALUES(150);
-- INSERT INTO podcastHost VALUES(151);
-- INSERT INTO podcastHost VALUES(152);
-- INSERT INTO podcastHost VALUES(153);
-- INSERT INTO podcastHost VALUES(154);
-- INSERT INTO podcastHost VALUES(155);
-- INSERT INTO podcastHost VALUES(156);
-- INSERT INTO podcastHost VALUES(157);
-- INSERT INTO podcastHost VALUES(158);
-- INSERT INTO podcastHost VALUES(159);
-- INSERT INTO podcastHost VALUES(160);
-- INSERT INTO podcastHost VALUES(161);

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO song VALUES (60, 'Never Gonna Give You Up', '3:32', 'release', '1987-01-07', NULL);
-- INSERT INTO song VALUES (66, 'Bulletproof', '4:42', 'release', '2020-04-02', 'Kpop');
-- INSERT INTO song VALUES (15, 'Candle in the Wind', '3:50', 'release', '1974-02-22', 'Pop');
-- INSERT INTO song VALUES (69, 'Love Song', '3:32', 'release', '2014-06-14', 'Pop');
-- INSERT INTO song VALUES (70, 'Love Song', '3:32', 'release', '2014-09-15', 'Pop');

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO artist_association VALUES ('Singer/Songwriter', 101, 15);
-- INSERT INTO artist_association VALUES ('Sound mixer', 102, 15);
-- INSERT INTO artist_association VALUES ('Lyricist', 100, 60);
-- INSERT INTO artist_association VALUES ('Singer/Songwriter', 100, 15);
-- INSERT INTO artist_association VALUES ('Producer', 102, 66);

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO song_interaction VALUES (112, 60, '16:24', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (112, 60, '5:44', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (111, 60, '8:37', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (111, 60, '11:59', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (110, 60, '00:04', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (110, 60, '8:12', true, true, true, 0.00001, true, 'listen', '2022-01-01');

-- INSERT INTO song_interaction VALUES (110, 66, '9:04', true, true, true, 0.00001, true, 'listen', '2022-01-14');

-- INSERT INTO song_interaction VALUES (112, 69, '10:10', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (110, 69, '11:44', true, false, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (111, 69, '11:44', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (111, 69, '11:47', true, true, false, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (111, 69, '7:56', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (102, 69, '1:12', false, false, true, 0.00001, true, 'listen', '2022-01-01');

-- INSERT INTO song_interaction VALUES (111, 15, '3:34', true, true, true, 0.00001, true, 'listen', '2022-01-01');
-- INSERT INTO song_interaction VALUES (112, 15, '4:23', true, true, true, 0.00001, true, 'listen', '2022-01-30');

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO podcast VALUES (1, "The Joe Rogan Experience", NULL, 143, "Politics");
-- INSERT INTO podcast VALUES (2, "If Books Could Kill", NULL, 144, "Education");
-- INSERT INTO podcast VALUES (3, "What About Holly?", NULL, 145, "Slice of life");
-- INSERT INTO podcast VALUES (4, "Back to the Beach with Kristin and Stephen", NULL, 146, "Slice of life");
-- INSERT INTO podcast VALUES (5, "The Psychology of your 20's", NULL, 147, "Health");
-- INSERT INTO podcast VALUES (6, "Huberman Lab", NULL, 148, "Education");
-- INSERT INTO podcast VALUES (7, "The Daily", NULL, 149, "Education");
-- INSERT INTO podcast VALUES (8, "Lex Fridman Podcast", NULL, 150, "Comedy");
-- INSERT INTO podcast VALUES (9, "High Low with EmRata", NULL, 151, "Slice of life");
-- INSERT INTO podcast VALUES (10, "New Heights with Jason and Travis Kelce", NULL, 152, "Education");
-- INSERT INTO podcast VALUES (11, "Crime Junkie", NULL, 153, "True crime");
-- INSERT INTO podcast VALUES (12, "2 Bears, 1 Cave with Tom Segura & Bert Kreischer", NULL, 154, "Comedy");
-- INSERT INTO podcast VALUES (13, "Case 63", NULL, 155, "True crime");
-- INSERT INTO podcast VALUES (14, "MrBallen Podcast: Strange, Dark & Mysterious Stories", NULL, 156, "True crime");
-- INSERT INTO podcast VALUES (15, "Call Her Daddy", NULL, 157, "Comedy");
-- INSERT INTO podcast VALUES (16, "This Past Weekend", NULL, 158, "Slice of life");
-- INSERT INTO podcast VALUES (17, "Up First", NULL, 159, "Education");
-- INSERT INTO podcast VALUES (18, "Distractible", NULL, 160, "Politics");
-- INSERT INTO podcast VALUES (19, "Morbid", NULL, 161, "True crime");

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO podcastEpisode VALUES (7, 'China and Taiwan: A Torried Backstory', NULL, NULL, '20:00', 'published', '2023-04-17');
-- INSERT INTO podcastEpisode VALUES (7, "Inside Russia's Crackdown on Dissent", NULL, NULL, '25:00', 'published', '2023-04-15');
-- INSERT INTO podcastEpisode VALUES (7, "The Outsourcing of America's Border Problem", NULL, NULL, '27:32', 'published', '2023-04-13');
-- INSERT INTO podcastEpisode VALUES (7, "The Indictment of Donald Trump", NULL, NULL, '27:32', 'published', '2023-04-12');
-- INSERT INTO podcastEpisode VALUES (7, "Gun Control Legislation passed", NULL, NULL, '40:32', 'published', '2022-06-20');

-- INSERT INTO podcastEpisode VALUES (10, "Tallest Building in Manhattan", NULL, NULL, '1:40:00', 'published', '2022-07-04');
-- INSERT INTO podcastEpisode VALUES (10, "Tallest Mountain in Asia", NULL, NULL, '2:01:45', 'published', '2023-01-31');

-- INSERT INTO podcastEpisode VALUES (1, "Life Advice Pt.1", NULL, NULL, '40:00', 'published', '2012-06-18');
-- INSERT INTO podcastEpisode VALUES (1, "Life Advice Pt.2", NULL, NULL, '45:12', 'published', '2044-05-23');
-- INSERT INTO podcastEpisode VALUES (1, "Life Advice Pt.3", NULL, NULL, '37:58', 'published', '2044-05-24');

-- INSERT INTO podcastEpisode VALUES (12, "2 Bears", NULL, NULL, '30:00', 'published', '2023-09-04');
-- INSERT INTO podcastEpisode VALUES (12, "A Cave", NULL, NULL, '30:00', 'published', '2023-09-04');

-- INSERT INTO podcastEpisode VALUES (19, "Reddit 50/50 Challenges", NULL, NULL, '3:54:12', 'published', '2000-04-08');

-- -- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- INSERT INTO podcastEpisode_ad VALUES (7, 'China and Taiwan: A Torried Backstory', 2, 10000);
-- INSERT INTO podcastEpisode_ad VALUES (7, 'China and Taiwan: A Torried Backstory', 5, 200.0);
-- INSERT INTO podcastEpisode_ad VALUES (7, "The Outsourcing of America's Border Problem", 5, 200.0);
-- INSERT INTO podcastEpisode_ad VALUES (7, "The Indictment of Donald Trump", 6, 70.5);
-- INSERT INTO podcastEpisode_ad VALUES (7, "The Indictment of Donald Trump", 1, 10000);

-- INSERT INTO podcastEpisode_ad VALUES (12, "2 Bears", 1, 100);
-- INSERT INTO podcastEpisode_ad VALUES (12, "2 Bears", 5, 0.15);
-- INSERT INTO podcastEpisode_ad VALUES (12, "A Cave", 1, 100);

-- INSERT INTO podcastEpisode_ad VALUES (19, "Reddit 50/50 Challenges", 3, 0.15);
