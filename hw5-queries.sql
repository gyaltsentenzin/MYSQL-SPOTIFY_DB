DROP TABLE IF EXISTS q1, q2, q3;

SELECT '----------Q1: What were the top 20 streamed songs of January?' AS '';

CREATE TABLE q1 AS
SELECT songId, COUNT(*) AS stream_count 
FROM (SELECT * 
	FROM (SELECT * 
		FROM (SELECT * FROM song_interaction WHERE YEAR(correspondent_date)=2022)
		AS 2023_song_interaction WHERE MONTH(correspondent_date)=1) 
	AS january2023_song_interaction WHERE song_stream_status=1) 
AS january2023_streamed_song GROUP BY songId;
ALTER TABLE q1 ADD PRIMARY KEY (songId);

SELECT * FROM q1 ORDER BY stream_count DESC LIMIT 5; 
-- Even though the query is supposed to generate top 20 songs, we are limiting it to 5 for hw5 instructions


SELECT '----------Q2: How many total streams does “Candle in the Wind” by Elton John have?' AS '';

CREATE TABLE q2 AS
SELECT COUNT(*) AS total_stream_count 
FROM (SELECT A.* 
		FROM (SELECT * FROM song_interaction WHERE song_stream_status=1) A 
	JOIN 
		(SELECT DISTINCT songId FROM 
			(SELECT A.*, B.account_email, B.profile_picture, B.payment_info, B.display_name, B.verified_status, B.company_name 
			FROM (SELECT A.*, B.song_title, B.duration_of_time, B.date_type, B.correspondent_date, B.genre_type 
				FROM artist_association A 
				JOIN 
				(SELECT * FROM song WHERE song_title='Candle in the Wind') B 
				ON (A.songId=B.songId)) A 
			JOIN 
				(SELECT A.*, B.verified_status, B.company_name 
				FROM (SELECT * FROM account WHERE display_name='Elton John') A 
				JOIN 
				(SELECT * FROM artist WHERE verified_status=1) B 
				ON (A.accountId=B.artist_accountId)) B 
			ON (A.artist_accountId=B.accountId)) AS candleInTheWind_by_eltonJohn_with_artist_assoc_info) B 
	ON (A.songId=B.songId)) AS eltonJohn_candleInTheWind_streamed_song_interaction;
ALTER TABLE q2 ADD PRIMARY KEY (total_stream_count);

SELECT * FROM q2;



SELECT '----------Q3: How much ad revenue has the podcast The Daily from The New York Times earned?' AS '';

CREATE TABLE q3 AS
SELECT SUM(episode_adRevenue) AS total_ad_revenue 
	FROM (SELECT A.*, B.podcastId AS b_podcastId, B.podcast_title, B.podcast_description, B.genre_type, B.b_podcastHost_accountId, B.podcastHost_accountId, B.account_email, B.profile_picture, B.payment_info, B.display_name, B.company_name, B.company_hq_address, B.company_phone_number 
		FROM podcastEpisode_ad A 
	JOIN 
		(SELECT A.*, B.podcastHost_accountId AS b_podcastHost_accountId, B.account_email, B.profile_picture, B.payment_info, B.display_name, B.company_name, B.company_hq_address, B.company_phone_number 
		FROM (SELECT * FROM podcast WHERE podcast_title='The Daily') A 
		JOIN 
			(SELECT A.*, B.accountId, B.account_email, B.profile_picture, B.payment_info, B.display_name, B.company_name, B.company_hq_address, B.company_phone_number 
			FROM podcastHost A 
			JOIN 
				(SELECT A.*, B.company_name, B.company_hq_address, B.company_phone_number 
				FROM account A 
				JOIN 
				(SELECT * FROM company WHERE company_name='The New York Times') B 
				ON (A.account_email=B.company_email)) B 
			ON (A.podcastHost_accountId=B.accountId)) B 
		ON (A.podcastHost_accountId=B.podcastHost_accountId)) B 
	ON (A.podcastId=B.podcastId)) AS theDaily_ad_info;
ALTER TABLE q3 ADD PRIMARY KEY (total_ad_revenue);

SELECT * FROM q3;