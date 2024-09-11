select *
from game_online;

--understanding what kind of genre people like to play a lot  
select gamegenre,sum(playtimehours) as total_playtime
from game_online
group by gamegenre
order by total_playtime desc 
;

select gender,avg((avgsessionsminnutes*sessionsperweelk)/60) as avg_session_week_hrs 
from game_online
group by gender;

--understanding what kind of age group spend time of gaming
select 
case 
     when age < 25 then 'Young'
     when age between 25 and 40 then 'Middle-aged'
     else 'Senior'
end as age_group,
sum(playtimehours) as total_hrs
from game_online
group by age_group
order by total_hrs desc;


-- our main market is USA and  europe as they tend to spend more time in playing games.
select location,gamegenre,sum(playtimehours) as total_hrs,sum(ingamepurchasee) as total_purchases
from game_online
group  by location,gamegenre
order by total_purchases desc;



-- finding engagement level by location and gender and already estbalished engagement level
SELECT 
    distinct location,
    gender,
    COUNT(CASE WHEN engagementlevell = 'High'  THEN 1 END) AS high_engagement,
    COUNT(CASE WHEN engagementlevell = 'Medium' THEN 1 END) AS medium_engagement,
    COUNT(CASE WHEN engagementlevell = 'Low' THEN 1 END) AS low_engagement
FROM 
    game_online
GROUP BY 
    distinct location, 
    gender;


-- let us create our own standards for high engagement rate and palytime and compare between age brackets 
-- we can analyze the data according to our need.

select
    distinct age_segment,
    playtime_segment,
    avg(case when engagementlevell = 'High' then 1 else 0 end) as high_engagement_rate
from (
    select
        case
                 when age < 25 then 'Young'
                 when age between 25 and 40 then 'Middle-aged'
                 else 'Senior'
        end as  age_segment,
        case
            when playtimehours < 10 then 'Light'
            when playtimehours between 10 and 20 then 'Moderate'
            else 'Heavy'
        end as  playtime_segment,
        engagementLevell
    from
        game_online
) as segmented_data
group by
    distinct age_segment,
    playtime_segment;











