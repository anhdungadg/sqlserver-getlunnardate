USE myDB
GO


-------------------------------------------------------------------------------
-- Author       DungHA3
-- Created      Mar 2022
-- Purpose      Use for get Lunnar date from Solar(Gregorian) date
--              in project 'Quản lý biên bản đối chiếu công nợ V1.1' (HaiNT85)
-- Copyright © yyyy, The Mysterious Inc, All Rights Reserved
-------------------------------------------------------------------------------
-- Modification History
--
-- 01/01/0000  developer full name  
--      A comprehensive description of the changes. The description may use as 
--      many lines as needed.
-------------------------------------------------------------------------------


ALTER FUNCTION [dbo].[fn_GetLunar] (@solarDay DATETIME)
RETURNS DATETIME
AS
BEGIN

DECLARE @solData int
DECLARE @offset int
DECLARE @iLunar int
DECLARE @i INT
DECLARE @j INT
DECLARE @yDays int
DECLARE @mDays int
DECLARE @mLeap int
DECLARE @mLeapNum int
DECLARE @bLeap smallint
DECLARE @temp int

DECLARE @YEAR INT
DECLARE @MONTH INT
DECLARE @DAY INT

DECLARE @OUTPUTDATE DATETIME



--Ensure that the date passed in is without time
SET @solarDay=cast(@solarDay AS char(20))
SET @offset=CAST(@solarDay-'1900-01-30' AS INT)


--Determine the start of the Lunnar New Year
SET @i=1900
--SET @offset=@solData
WHILE @i<2050 AND @offset>0
BEGIN
SET @yDays=348
SET @mLeapNum=0
SELECT @iLunar=dataInt FROM SolarData WHERE yearId=@i

--Returns the total number of days in the lunar year
SET @j=32768
WHILE @j>8
BEGIN
IF @iLunar & @j >0
SET @yDays=@yDays+1
SET @j=@j/2
END

--Returns which month 1-12 of the lunar calendar year with leap, and returns 0 without leap
SET @mLeap = @iLunar & 15

--Returns the number of days in the leap month of the lunar calendar year and adds it to the total number of days in the year
IF @mLeap > 0
BEGIN
IF @iLunar & 65536 > 0
SET @mLeapNum=30
ELSE
SET @mLeapNum=29

SET @yDays=@yDays+@mLeapNum
END

SET @offset=@offset-@yDays
SET @i=@i+1
END

IF @offset <= 0
BEGIN
SET @offset=@offset+@yDays
SET @i=@i-1
END
--Determine the end of the Chinese New Year
SET @YEAR=@i

--Determine the start of the lunar month
SET @i = 1
SELECT @iLunar=dataInt FROM SolarData WHERE yearId=@YEAR

--Judge that month is Runyue
SET @mLeap = @iLunar & 15
SET @bLeap = 0

WHILE @i < 13 AND @offset > 0
BEGIN
--Judge Runyue
SET @mDays=0
IF (@mLeap > 0 AND @i = (@mLeap+1) AND @bLeap=0)
BEGIN--is Runyue
SET @i=@i-1
SET @bLeap=1
--Returns the number of days in a leap month in the lunar year
IF @iLunar & 65536 > 0
SET @mDays = 30
ELSE
SET @mDays = 29
END
ELSE
--Not Runyue
BEGIN
SET @j=1
SET @temp = 65536
WHILE @j<=@i
BEGIN
SET @temp=@temp/2
SET @j=@j+1
END

IF @iLunar & @temp > 0
SET @mDays = 30
ELSE
SET @mDays = 29
END

--Release the leap month
IF @bLeap=1 AND @i= (@mLeap+1)
SET @bLeap=0

SET @offset=@offset-@mDays
SET @i=@i+1
END

IF @offset <= 0
BEGIN
SET @offset=@offset+@mDays
SET @i=@i-1
END

--Determine the end of the lunar month
SET @MONTH=@i

--Determine the end of the lunar calendar
SET @DAY=@offset

SET @OUTPUTDATE=CAST((CAST(@YEAR AS VARCHAR(4))+'-'+CAST(@MONTH AS VARCHAR(2))+'-'+CAST(@DAY AS VARCHAR(2))) AS DATETIME)
RETURN @OUTPUTDATE
END
GO