
###Query to identify the home and away performance(Home and Away Wins,Home and Away Draws) of top 5 teams against other top teams(Not all teams query will be listed, but it will show the general idea)

###Home Wins

/*SELECT home_team,away_team,season, count(result) AS Home_Wins
FROM `valid-amplifier-343113.STATS.Results`
where home_team='Manchester City' AND /*season='2007-2008' AND result='H' AND (away_team='Chelsea' OR away_team='Liverpool' OR away_team='Arsenal' OR away_team='Manchester United' OR away_team='Tottenham Hotspur')
group by home_team, away_team, season
order by season*/

###Away Wins
/*SELECT home_team,away_team,season, count(result) Away_Wins
FROM `valid-amplifier-343113.STATS.Results`
where Away_team='Manchester City' AND /*season='2007-2008' AND result='A' AND (home_team='Chelsea' OR home_team='Liverpool' OR home_team='Arsenal' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by home_team, away_team,season
order by season*/

###Home Draws
/*SELECT home_team,away_team,season, count(result) AS Home_Draws
FROM `valid-amplifier-343113.STATS.Results`
where home_team='Manchester City' AND /*season='2007-2008' AND result='D' AND (away_team='Chelsea' OR away_team='Liverpool' OR away_team='Arsenal' OR away_team='Manchester United' OR away_team='Tottenham Hotspur')
group by home_team, away_team, season
order by season*/

###Away Draws
/*SELECT home_team,away_team,season, count(result) AS Away_Draws
FROM `valid-amplifier-343113.STATS.Results`
where Away_team='Manchester City' AND /*season='2007-2008' AND result='D' AND (home_team='Chelsea' OR home_team='Liverpool' OR home_team='Arsenal' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season, home_team,away_team
order by season*/


###Query to sum the result column created above to show the amount of times a team won or drew in total (Home and Away) per season

###Away Draws


/*SELECT away_team,season, sum(Away_Draws) AS Total_Away_Draws_per_season
FROM `valid-amplifier-343113.STATS.Arsenal Away Draws` 
WHERE Away_team='Arsenal' AND /*season='2007-2008' AND  (home_team='Manchester City' OR home_team='Liverpool' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season*/


/*SELECT away_team,season, sum(Away_Draws) AS Total_Away_Draws_per_season
FROM `valid-amplifier-343113.STATS.Chelsea Away Draws` 
/*WHERE Away_team=Chelsea' AND /*season='2007-2008' AND  (home_team='Manchester City' OR home_team='Liverpool' OR home_team='Arsenal' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season

SELECT away_team,season, sum(Away_Draws) AS Total_Away_Draws_per_season
FROM `valid-amplifier-343113.STATS.Man City Away Draws` 
WHERE Away_team='Manchester City' AND /*season='2007-2008' AND  (home_team='Arsenal' OR home_team='Liverpool' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season


SELECT away_team,season, sum(Away_Draws) AS Total_Away_Draws_per_season
FROM `valid-amplifier-343113.STATS.Liverpool Away Draws` 
WHERE Away_team='Liverpool' AND /*season='2007-2008' AND*/  /*(home_team='Arsenal' OR home_team='Manchester City' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season*/


###Away Wins


/*SELECT away_team,season,sum(Away_Wins) AS Total_Arsenal_Away_Wins_Per_Season
 FROM `valid-amplifier-343113.STATS.Arsenal Away Wins` 
WHERE away_team='Arsenal' AND  (home_team='Manchester City' OR home_team='Liverpool' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season


SELECT away_team,season,sum(Away_Wins) AS Total_Away_Wins_Per_Season
 FROM `valid-amplifier-343113.STATS.Chelsea Away Wins` 
/*WHERE away_team=Chelsea' AND  (home_team='Manchester City' OR home_team='Liverpool' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season



SELECT away_team,season,sum(Away_Wins) AS Total_Away_Wins_Per_Season
 FROM `valid-amplifier-343113.STATS.Man City Away Wins` 
WHERE away_team='Manchester City' AND  (home_team='Arsenal' OR home_team='Liverpool' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season


SELECT away_team,season,sum(Away_Wins) AS Total_Away_Wins_Per_Season
 FROM `valid-amplifier-343113.STATS.Liverpool Away Wins` 
WHERE away_team='Liverpool' AND  (home_team='Arsenal' OR home_team='Manchester City' OR home_team='Chelsea' OR home_team='Manchester United' OR home_team='Tottenham Hotspur')
group by season,away_team
order by season*/

###Home Draws

/*SELECT home_team,season,sum(home_draws) AS Total_Home_Draws_Per_Season
 FROM `valid-amplifier-343113.STATS.Man U Home Draws` 
/*WHERE home_team='Manchester United' AND  (away_team='Manchester City' OR away_team='Liverpool' OR away_team='Chelsea' OR away_team='Arsenal' OR away_team='Tottenham Hotspur')
group by season,home_team
order by season

SELECT home_team,season,sum(home_draws) AS Total_Home_Draws_Per_Season
 FROM `valid-amplifier-343113.STATS.Man City Home Draws` 
WHERE home_team='Manchester City' AND  (away_team='Manchester United' OR away_team='Liverpool' OR away_team='Chelsea' OR away_team='Arsenal' OR away_team='Tottenham Hotspur')
group by season,home_team
order by season


SELECT home_team,season,sum(home_draws) AS Total_Home_Draws_Per_Season
 FROM `valid-amplifier-343113.STATS.Liverpool Home Draws` 
WHERE home_team='Liverpool' AND  (away_team='Manchester United' OR away_team='Manchester City' OR away_team='Chelsea' OR away_team='Arsenal' OR away_team='Tottenham Hotspur')
group by season,home_team
order by season*/


###Some Teams returned with less than 12 Rows, indicating that the 12 seasons were not accounted for because initial query only showed seasons with 1 or greater numbers. Seasons with zero win or draw(Home or away) were excluded, but all tables will need to have the same number of rows to maintain data quality, so we replace missing rows with ZERO

###Query to update missing rows with zero to maintain data quality.

/*insert into `valid-amplifier-343113.Arsenal_and_Others.CHELSEA AWAY DRAWS`(away_team,season,Total_Away_draws_per_season)
values ('Chelsea','2008-2009',0),('Chelsea','2009-2010',0)

insert into `valid-amplifier-343113.Arsenal_and_Others.CHELSEA AWAY WINS`(away_team,season,Total_Away_Wins_per_season)
values ('Chelsea','2010-2011',0),('Chelsea','2011-2012',0)

###insert into `valid-amplifier-343113.Arsenal_and_Others.CHELSEA HOME DRAWS`(home_team,season,Total_Home_Draws_per_season)
#values ('Chelsea','2009-2010',0),('Chelsea','2010-2011',0),('Chelsea','2013-2014',0),('Chelsea','2016-2017',0)*/


###Query to mutiply each wins by 3(each win in the premier league guarantees 3 points) i.e if a team on the dataset table already has 3 wins in 2006-2007 season, thats 3x3=9 (the team has 9 points in 2006-2007)


 /*UPDATE `valid-amplifier-343113.Arsenal_and_Others.CHELSEA AWAY WINS`
 SET Total_Away_Wins_Per_Season=Total_Away_Wins_Per_Season*3
 WHERE 1=1

 UPDATE `valid-amplifier-343113.Arsenal_and_Others.CHELSEA HOME WINS`
 SET Total_Home_Wins_Per_Season=Total_Home_Wins_Per_Season*3
 WHERE 1=1

----------------------------------------------------------------------
 UPDATE `valid-amplifier-343113.Arsenal_and_Others.MAN CITY AWAY WINS`
 SET Total_Away_Wins_Per_Season=Total_Away_Wins_Per_Season*3
 WHERE 1=1

 UPDATE `valid-amplifier-343113.Arsenal_and_Others.MAN CITY HOME WINS`
 SET Total_Home_Wins_Per_Season=Total_Home_Wins_Per_Season*3
 WHERE 1=1
 ---------------------------------------------------------------------

 UPDATE `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL AWAY WINS`
 SET Total_Away_Wins_Per_Season=Total_Away_Wins_Per_Season*3
 WHERE 1=1

 UPDATE `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL HOME WINS`
 SET Total_Home_Wins_Per_Season=Total_Home_Wins_Per_Season*3
 WHERE 1=1*/




###Query to Join Draw Tables (Home and Away) for each team. Do same for Win Tables.So we can arrive at draw Tables and Win Tables.


/*select *
from `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL AWAY DRAWS 1`
full join `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL HOME DRAWS 1`
using (team,season)
order by season

select *
from `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL AWAY WINS 1`
full join `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL HOME WINS 1`
using (team,season)
order by season*/

###Query to join Draw and Win Tables for each team



/*select *
from `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL WINS`
full join `valid-amplifier-343113.Arsenal_and_Others.LIVERPOOL DRAWS `
using (team,season)
order by season*/

















