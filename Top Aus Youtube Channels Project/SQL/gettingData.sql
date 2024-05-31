--use aus_yt_db


--select * FROM top_100_australian_youtube_channels

--Removing unnecessary columns and renaming Channel_Title to Channel_Name
/*create view view_aus_youtube100 as
	select Channel_Title as Channel_Name,Subscribers,Views,Videos
	from top_100_australian_youtube_channels*/

 
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='view_aus_youtube100'