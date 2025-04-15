#OTHER PROPOSED PARAMETERS FOR SUCCESS IN THE PREMEIR LEAGUE

#DISCIPLINE

/*select team, total_yel_card, total_red_card, season
from `valid-amplifier-343113.STATS.EPL`
group by team,season, total_yel_card, total_red_card
order by season, total_red_car*/


#GOAL DIFFERENCE

/*select team, season, goals, goals_conceded,goals-goals_conceded as Goal_Diffrence
from `valid-amplifier-343113.STATS.EPL`
group by team,season, goals, goals_conceded
order by season, Goal_diffrence desc*/

#TOTAL SCORING ATTEMPT

/*select team, season, total_scoring_att As total_scoring_attempt
from `valid-amplifier-343113.STATS.EPL`
group by team,season, total_scoring_att
order by season, total_scoring_attempt desc*/


#SHOOTING PERCENTAGE

/*select team, season, ontarget_scoring_att, goals, avg(goals/ontarget_scoring_att) as shooting_percentage
from `valid-amplifier-343113.STATS.EPL`
group by team,season, ontarget_scoring_att,goals
order by season, shooting_percentage desc*/



#CLEAN SHEET

/*select team, season, clean_sheet
from `valid-amplifier-343113.STATS.EPL`
group by team,season, clean_sheet
order by season, clean_sheet desc*/



#TOTAL NUMBER OF PASSES

/*select team, season,total_pass
from `valid-amplifier-343113.STATS.EPL`
group by team,season, total_pass 
order by season, total_pass desc*/


#NUMBER OF PENALTY CONCEDED

/*select team, season, penalty_conceded
from `valid-amplifier-343113.STATS.EPL`
group by team,season, penalty_conceded
order by season, penalty_conceded*/




