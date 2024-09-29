create database if not exists operation_analytics;
use operation_analytics;
select * from job_data;

#no. of jobs viewd per hour per day for nov 2020
select ds as date, 
round((count(job_id)/sum(time_spent))*3600) as "jobs viewd per hour per day" from job_data 
WHERE ds BETWEEN "01-11-2020" AND "30-11-2020" group by ds;

#calc 7 day rolling avg throughput(no. of events happening pere sec)
select round((count(event)/sum(time_spent)),2) as weekly_throughput 
from job_data;
#calc daily metric throughput
select ds as date, round((count(event)/sum(time_spent)),2) as daily_metric 
from job_data group by date;

#calc percentage share of each language in 30 days
select language, round(((count(language)/8)*100),2) as share_of_lang 
from job_data group by language;

#duplicate rows count
select actor_id, count(actor_id) as tot_count from job_data
group by actor_id having tot_count>1;





