select *, case when (home_team_goal > away_team_goal and home_avg_rating > away_avg_rating) or (home_team_goal < away_team_goal and home_avg_rating < away_avg_rating) or (home_team_goal = away_team_goal and home_avg_rating = away_avg_rating) then 'match'
else 'error'
end as check_result
from (with home_df as (select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_1, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_1 = pa.player_api_id and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_2, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_2 = pa.player_api_id and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_3, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_3 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_4, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_4 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_5, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_5 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_6, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_6 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_7, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_7 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_8, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_8 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_9, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_9 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_10, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_10 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "home" as place, m.home_team_api_id, m.home_team_goal, m.home_player_11, pa.overall_rating
from "Match" m join Player_Attributes pa on m.home_player_11 = pa.player_api_id  and m.date = pa.date)
select hd."date", hd.match_api_id, hd.place, hd.home_team_api_id, hd.home_team_goal, avg(hd.overall_rating) as home_avg_rating
from home_df hd
group by hd."date", hd.place, hd.home_team_api_id, hd.home_team_goal) join (with away_df as (select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_1, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_1 = pa.player_api_id and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_2, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_2 = pa.player_api_id and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_3, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_3 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_4, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_4 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_5, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_5 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_6, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_6 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_7, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_7 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_8, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_8 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_9, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_9 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_10, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_10 = pa.player_api_id  and m.date = pa.date
union
select m.date, m.match_api_id, "away" as place, m.away_team_api_id, m.away_team_goal, m.away_player_11, pa.overall_rating
from "Match" m join Player_Attributes pa on m.away_player_11 = pa.player_api_id  and m.date = pa.date)
select ad."date", ad.match_api_id, ad.place, ad.away_team_api_id, ad.away_team_goal, avg(ad.overall_rating) as away_avg_rating
from away_df ad
group by ad."date", ad.place, ad.away_team_api_id, ad.away_team_goal) using ("date", match_api_id)