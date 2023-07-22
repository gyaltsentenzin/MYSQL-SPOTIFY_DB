-- Team 10: Tenzin, Vy, Abigail
-- Spotify database


SET default_storage_engine=InnoDB;
SELECT @@default_storage_engine;

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS account, podcastHost, subscriptionPlan, user, artist, company, publisher, recordLabel, advertisement, user_artist_interaction;
DROP TABLE IF EXISTS audioLength, date_relation, genre;
DROP TABLE IF EXISTS podcast, podcastEpisode, podcast_interaction, podcastEpisode_interaction, podcastEpisode_playlistInclusion, podcastEpisode_ad;
DROP TABLE IF EXISTS audiobook, audiobookChapter, audiobook_interaction, audiobookChapter_interaction;
DROP TABLE IF EXISTS playlist, playlist_association;
DROP TABLE IF EXISTS song, artist_association, contributor_association, song_interaction, song_playlistInclusion, song_ad;
DROP TABLE IF EXISTS album, album_interaction, track;
SET foreign_key_checks = 1;

-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE account (
    accountId           INT         PRIMARY KEY,
    account_email       VARCHAR(60) NOT NULL,
    profile_picture     VARCHAR(60),
    payment_info        VARCHAR(20),
    display_name        VARCHAR(30) NOT NULL
);


CREATE TABLE podcastHost (
   podcastHost_accountId    INT    REFERENCES account(accountId),
   PRIMARY KEY (podcastHost_accountId)
);


CREATE TABLE subscriptionPlan (
	plan_name			VARCHAR(10)	PRIMARY KEY,
	premium_status		BOOLEAN,
	plan_price			DECIMAL(4,2)
);


CREATE TABLE user (
  user_accountId		INT			REFERENCES account(accountId),
  plan_name				VARCHAR(20)	REFERENCES subscriptionPlan(plan_name),
  PRIMARY KEY (user_accountId)
);


CREATE TABLE company (
	company_name			VARCHAR(60)	PRIMARY KEY,
	company_hq_address		VARCHAR(60),
	company_phone_number	VARCHAR(11),
	company_email			VARCHAR(60) NOT NULL
);


CREATE TABLE artist (
	artist_accountId	INT			REFERENCES account(accountId),
	verified_status		BOOLEAN,
	company_name		VARCHAR(60)	REFERENCES company(company_name),
	PRIMARY KEY (artist_accountId)
);


CREATE TABLE publisher (
	company_name		VARCHAR(60)	REFERENCES company(company_name),
	PRIMARY KEY (company_name)
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


CREATE TABLE user_artist_interaction (
	user_accountId			INT	NOT NULL	REFERENCES account(accountId),
	artist_accountId		INT	NOT NULL	REFERENCES account(accountId),
	artist_follower_status	BOOLEAN,
	PRIMARY KEY (user_accountId, artist_accountId)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE audioLength (
	duration_of_time	DECIMAL(10,2)	PRIMARY KEY
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


CREATE TABLE playlist (
	playlistId		INT		PRIMARY KEY,
	playlist_name	VARCHAR(30)
);


CREATE TABLE playlist_association (
	user_accountId		INT		REFERENCES user(user_accountId),
	playlistId			INT		REFERENCES playlist(playlistId),
	user_role			VARCHAR(30) NOT NULL,
	PRIMARY KEY (user_accountId, playlistId, user_role)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------


CREATE TABLE podcast (
	podcastId INT PRIMARY KEY,
	podcast_title VARCHAR(60) NOT NULL,
	podcast_description VARCHAR(600),
	podcastHost_accountId INT REFERENCES account(accountId),
	genre_type VARCHAR(30) REFERENCES genre(genre_type)
);


CREATE TABLE podcastEpisode (
	podcastId INT REFERENCES podcast(podcastId),
	episode_title VARCHAR(60) NOT NULL,
	episode_description VARCHAR(600),
	guest_speaker VARCHAR(60),	
	duration_of_time DECIMAL(5,2) REFERENCES audioLength(duration_of_time),
	date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY (podcastId, episode_title)
);


CREATE TABLE podcast_interaction (
	user_accountId			INT			REFERENCES user(user_accountId),
	podcastId				INT			REFERENCES podcast(podcastId),
	podcast_follower_status	BOOLEAN,
	user_podcast_rating		INT,
	podcast_saved_status	BOOLEAN,
	PRIMARY KEY (user_accountId, podcastId)
);


CREATE TABLE podcastEpisode_interaction (
	user_accountId			INT			REFERENCES user(user_accountId),
	podcastId				INT,
	episode_title			VARCHAR(60),
    FOREIGN KEY (podcastId, episode_title) REFERENCES podcastEpisode(podcastId, episode_title),
	episode_stream_status	BOOLEAN,
	episode_download_status	BOOLEAN,
	episode_saved_status	BOOLEAN,
	date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY (user_accountId, podcastId, episode_title)
);


CREATE TABLE podcastEpisode_playlistInclusion (
    podcastId				INT,
	episode_title			VARCHAR(60),
    FOREIGN KEY (podcastId, episode_title) REFERENCES podcastEpisode(podcastId, episode_title),
	playlistId				INT			REFERENCES playlist(playlistId),
	episode_number			INT,
	PRIMARY KEY (podcastId, episode_title, playlistId)
);


CREATE TABLE podcastEpisode_ad (
    podcastId				INT,
	episode_title			VARCHAR(60),
    FOREIGN KEY (podcastId, episode_title) REFERENCES podcastEpisode(podcastId, episode_title),
	advertisementId			INT			REFERENCES advertisement(advertisementId),
	episode_adRevenue		DECIMAL(5,2),
	PRIMARY KEY (podcastId, episode_title, advertisementId)
);


-- ---------- ---------- ---------- ---------- ---------- ---------- ----------

CREATE TABLE song (
	songId INT PRIMARY KEY,
	song_title VARCHAR(60),
	duration_of_time DECIMAL(5,2) REFERENCES audioLength(duration_of_time),
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	genre_type VARCHAR(30) REFERENCES genre(genre_type)
);

CREATE TABLE artist_association (
	artist_role VARCHAR(30),
	artist_accountId INT REFERENCES account(accountId),
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
	user_accountId		INT			 REFERENCES account(accountId),
	songId				INT			 REFERENCES song(songId),
	like_status			BOOLEAN,
	song_download_status	BOOLEAN,
	song_stream_status		BOOLEAN,
	song_interactionRevenue	INT,
	song_saved_status		BOOLEAN,
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY(user_accountId, songId)
);

CREATE TABLE song_playlistInclusion (
	playlistId		  INT			REFERENCES playlist(playlistId),
	songId			  INT			REFERENCES song(songId),
	song_number		  INT,
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY(playlistId,songId)

);

CREATE TABLE song_ad (
	songId 			INT 			REFERENCES song(songId),
	advertisementId INT 			REFERENCES advertisement(advertisementId),
	song_adRevenue  DECIMAL(5,2),
	PRIMARY KEY (songId, advertisementId)
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

CREATE TABLE album_interaction (
	user_accountId INT REFERENCES user(user_accountId),
	albumId INT REFERENCES album(albumId),
	album_saved_status BOOLEAN,
    date_type VARCHAR(30) NOT NULL, 
	correspondent_date DATE NOT NULL,
    FOREIGN KEY (date_type, correspondent_date) REFERENCES date_relation(date_type, correspondent_date),
	PRIMARY KEY (user_accountId, albumId)
);

CREATE TABLE track (
	albumId INT REFERENCES album(albumId),
	songId INT REFERENCES song(songId),
	track_number INT, 
	PRIMARY KEY (albumId, songId)
);

