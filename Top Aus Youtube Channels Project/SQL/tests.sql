/*Data quality tests :
1) Data needs to have 100 rows (row count check)
2) Data needs to have 4 columns (col count check)
3) Data type check
4) No duplicates
*/

use aus_yt_db
--ROW COUNT CHECK (100)
select count(*) as No_Of_Rows from [aus_yt_db].[dbo].[view_aus_youtube100]

--COL COUNT CHECK (4)
select count(*) as No_Of_Cols from INFORMATION_SCHEMA.COLUMNS 
where TABLE_NAME='view_aus_youtube100'

--STRING - CHANNEL_NAME
--INT - FOLLOWERS
--BIGINT - VIEWS
--INT - POTENTIAL_REACH
select COLUMN_NAME,DATA_TYPE from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='view_aus_youtube100'


--Duplicate check
--select count(distinct(CHANNEL_NAME)) from [aus_yt_db].[dbo].[view_aus_youtube100]
select Channel_Name,count(*) as duplicate_count
FROM view_aus_youtube100
group by Channel_Name
having count(*)>1