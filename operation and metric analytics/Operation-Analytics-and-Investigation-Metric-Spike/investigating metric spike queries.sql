#1. calc the weekly user engagement
select * from events_table;
select extract(week from occurred_at) as weeks, 
count(distinct user_id) as no_of_users from events_table 
where event_type="engagement"
group by weeks order by weeks;

#2. calc the user growth over time for product
select week_num, year_num,
sum(active_users) over (order by week_num, year_num 
rows between unbounded preceding and current row) as cumulative_sum
from (
select extract(week from activated_at) as week_num,
extract(year from activated_at) as year_num,
count(distinct user_id) as active_users from users_table
where state= "active"
group by year_num, week_num
order by year_num, week_num) as alias;

#3. calc the weekly retention of users-signup cohort
select * from events_table;
select extract(week from occurred_at) as weeks, 
count(distinct user_id) as no_of_users from events_table
where event_type="signup_flow" and event_name="complete_signup" 
group by weeks order by weeks;

#4. calc the weekly user engagement per device
select * from events_table;
select device, extract(week from occurred_at) as weeks, 
count(distinct user_id) as no_of_users from events_table 
where event_type="engagement"
group by device, weeks order by weeks; 

#5. calc the users email engagement metrics
select * from email_events_table;
select count(action) as action_count, action from email_events_table group by action;
select 
(sum(case when 
email_category="email_opened" then 1 else 0 end)/sum(case when email_category="email_sent" then 1 else 0 end))*100 as open_rate,
(sum(case when 
email_category="email_clickthrough" then 1 else 0 end)/sum(case when email_category="email_sent" then 1 else 0 end))*100 as click_rate
from (
	select *, 
	case 
		when action in ("sent_weekly_digest", "sent_reengagement_email") then ("email_sent")
		when action in ("email_open") then ("email_opened")
		when action in ("email_clickthrough") then ("email_clickthrough")
	end as email_category
	from email_events_table) as alias;


