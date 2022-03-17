CREATE TABLE SolarData
(
yearId int not null,
data char(7) not null,
dataInt int not null
)

select * from SolarData


--Insert data
INSERT INTO SolarData 
SELECT 1900 AS 'yearId','0x04bd8' AS 'data',19416 AS 'dataInt' 
UNION ALL SELECT 1901,'0x04ae0',19168
UNION ALL SELECT 1902,'0x0a570',42352 UNION ALL SELECT 1903,'0x054d5',21717
UNION ALL SELECT 1904,'0x0d260',53856 UNION ALL SELECT 1905,'0x0d950',55632
UNION ALL SELECT 1906,'0x16554',91476 UNION ALL SELECT 1907,'0x056a0',22176
UNION ALL SELECT 1908,'0x09ad0',39632 UNION ALL SELECT 1909,'0x055d2',21970
UNION ALL SELECT 1910,'0x04ae0',19168 UNION ALL SELECT 1911,'0x0a5b6',42422
UNION ALL SELECT 1912,'0x0a4d0',42192 UNION ALL SELECT 1913,'0x0d250',53840
UNION ALL SELECT 1914,'0x1d255',119381 UNION ALL SELECT 1915,'0x0b540',46400
UNION ALL SELECT 1916,'0x0d6a0',54944 UNION ALL SELECT 1917,'0x0ada2',44450
UNION ALL SELECT 1918,'0x095b0',38320 UNION ALL SELECT 1919,'0x14977',84343
UNION ALL SELECT 1920,'0x04970',18800 UNION ALL SELECT 1921,'0x0a4b0',42160
UNION ALL SELECT 1922,'0x0b4b5',46261 UNION ALL SELECT 1923,'0x06a50',27216
UNION ALL SELECT 1924,'0x06d40',27968 UNION ALL SELECT 1925,'0x1ab54',109396
UNION ALL SELECT 1926,'0x02b60',11104 UNION ALL SELECT 1927,'0x09570',38256
UNION ALL SELECT 1928,'0x052f2',21234 UNION ALL SELECT 1929,'0x04970',18800
UNION ALL SELECT 1930,'0x06566',25958 UNION ALL SELECT 1931,'0x0d4a0',54432
UNION ALL SELECT 1932,'0x0ea50',59984 UNION ALL SELECT 1933,'0x06e95',28309
UNION ALL SELECT 1934,'0x05ad0',23248 UNION ALL SELECT 1935,'0x02b60',11104
UNION ALL SELECT 1936,'0x186e3',100067 UNION ALL SELECT 1937,'0x092e0',37600
UNION ALL SELECT 1938,'0x1c8d7',116951 UNION ALL SELECT 1939,'0x0c950',51536
UNION ALL SELECT 1940,'0x0d4a0',54432 UNION ALL SELECT 1941,'0x1d8a6',120998
UNION ALL SELECT 1942,'0x0b550',46416 UNION ALL SELECT 1943,'0x056a0',22176
UNION ALL SELECT 1944,'0x1a5b4',107956 UNION ALL SELECT 1945,'0x025d0',9680
UNION ALL SELECT 1946,'0x092d0',37584 UNION ALL SELECT 1947,'0x0d2b2',53938
UNION ALL SELECT 1948,'0x0a950',43344 UNION ALL SELECT 1949,'0x0b557',46423
UNION ALL SELECT 1950,'0x06ca0',27808 UNION ALL SELECT 1951,'0x0b550',46416
UNION ALL SELECT 1952,'0x15355',86869 UNION ALL SELECT 1953,'0x04da0',19872
UNION ALL SELECT 1954,'0x0a5d0',42448 UNION ALL SELECT 1955,'0x14573',83315
UNION ALL SELECT 1956,'0x052d0',21200 UNION ALL SELECT 1957,'0x0a9a8',43432
UNION ALL SELECT 1958,'0x0e950',59728 UNION ALL SELECT 1959,'0x06aa0',27296
UNION ALL SELECT 1960,'0x0aea6',44710 UNION ALL SELECT 1961,'0x0ab50',43856
UNION ALL SELECT 1962,'0x04b60',19296 UNION ALL SELECT 1963,'0x0aae4',43748
UNION ALL SELECT 1964,'0x0a570',42352 UNION ALL SELECT 1965,'0x05260',21088
UNION ALL SELECT 1966,'0x0f263',62051 UNION ALL SELECT 1967,'0x0d950',55632
UNION ALL SELECT 1968,'0x05b57',23383 UNION ALL SELECT 1969,'0x056a0',22176
UNION ALL SELECT 1970,'0x096d0',38608 UNION ALL SELECT 1971,'0x04dd5',19925
UNION ALL SELECT 1972,'0x04ad0',19152 UNION ALL SELECT 1973,'0x0a4d0',42192
UNION ALL SELECT 1974,'0x0d4d4',54484 UNION ALL SELECT 1975,'0x0d250',53840
UNION ALL SELECT 1976,'0x0d558',54616 UNION ALL SELECT 1977,'0x0b540',46400
UNION ALL SELECT 1978,'0x0b5a0',46496 UNION ALL SELECT 1979,'0x195a6',103846
UNION ALL SELECT 1980,'0x095b0',38320 UNION ALL SELECT 1981,'0x049b0',18864
UNION ALL SELECT 1982,'0x0a974',43380 UNION ALL SELECT 1983,'0x0a4b0',42160
UNION ALL SELECT 1984,'0x0b27a',45690 UNION ALL SELECT 1985,'0x06a50',27216
UNION ALL SELECT 1986,'0x06d40',27968 UNION ALL SELECT 1987,'0x0af46',44870
UNION ALL SELECT 1988,'0x0ab60',43872 UNION ALL SELECT 1989,'0x09570',38256
UNION ALL SELECT 1990,'0x04af5',19189 UNION ALL SELECT 1991,'0x04970',18800
UNION ALL SELECT 1992,'0x064b0',25776 UNION ALL SELECT 1993,'0x074a3',29859
UNION ALL SELECT 1994,'0x0ea50',59984 UNION ALL SELECT 1995,'0x06b58',27480
UNION ALL SELECT 1996,'0x055c0',21952 UNION ALL SELECT 1997,'0x0ab60',43872
UNION ALL SELECT 1998,'0x096d5',38613 UNION ALL SELECT 1999,'0x092e0',37600
UNION ALL SELECT 2000,'0x0c960',51552 UNION ALL SELECT 2001,'0x0d954',55636
UNION ALL SELECT 2002,'0x0d4a0',54432 UNION ALL SELECT 2003,'0x0da50',55888
UNION ALL SELECT 2004,'0x07552',30034 UNION ALL SELECT 2005,'0x056a0',22176
UNION ALL SELECT 2006,'0x0abb7',43959 UNION ALL SELECT 2007,'0x025d0',9680
UNION ALL SELECT 2008,'0x092d0',37584 UNION ALL SELECT 2009,'0x0cab5',51893
UNION ALL SELECT 2010,'0x0a950',43344 UNION ALL SELECT 2011,'0x0b4a0',46240
UNION ALL SELECT 2012,'0x0baa4',47780 UNION ALL SELECT 2013,'0x0ad50',44368
UNION ALL SELECT 2014,'0x055d9',21977 UNION ALL SELECT 2015,'0x04ba0',19360
UNION ALL SELECT 2016,'0x0a5b0',42416 UNION ALL SELECT 2017,'0x15176',86390
UNION ALL SELECT 2018,'0x052b0',21168 UNION ALL SELECT 2019,'0x0a930',43312
UNION ALL SELECT 2020,'0x07954',31060 UNION ALL SELECT 2021,'0x06aa0',27296
UNION ALL SELECT 2022,'0x0ad50',44368 UNION ALL SELECT 2023,'0x05b52',23378
UNION ALL SELECT 2024,'0x04b60',19296 UNION ALL SELECT 2025,'0x0a6e6',42726
UNION ALL SELECT 2026,'0x0a4e0',42208 UNION ALL SELECT 2027,'0x0d260',53856
UNION ALL SELECT 2028,'0x0ea65',60005 UNION ALL SELECT 2029,'0x0d530',54576
UNION ALL SELECT 2030,'0x05aa0',23200 UNION ALL SELECT 2031,'0x076a3',30371
UNION ALL SELECT 2032,'0x096d0',38608 UNION ALL SELECT 2033,'0x04bd7',19415
UNION ALL SELECT 2034,'0x04ad0',19152 UNION ALL SELECT 2035,'0x0a4d0',42192
UNION ALL SELECT 2036,'0x1d0b6',118966 UNION ALL SELECT 2037,'0x0d250',53840
UNION ALL SELECT 2038,'0x0d520',54560 UNION ALL SELECT 2039,'0x0dd45',56645
UNION ALL SELECT 2040,'0x0b5a0',46496 UNION ALL SELECT 2041,'0x056d0',22224
UNION ALL SELECT 2042,'0x055b2',21938 UNION ALL SELECT 2043,'0x049b0',18864
UNION ALL SELECT 2044,'0x0a577',42359 UNION ALL SELECT 2045,'0x0a4b0',42160
UNION ALL SELECT 2046,'0x0aa50',43600 UNION ALL SELECT 2047,'0x1b255',111189
UNION ALL SELECT 2048,'0x06d20',27936 UNION ALL SELECT 2049,'0x0ada0',44448



--Call method
select dbo.fn_GetLunar(getdate())  

select dbo.fn_GetLunar('2021-12-31')  
select len(getdate())

sp_helptext fn_GetLunar
