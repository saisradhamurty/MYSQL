select round(sum(n)/count(distinct player_id),2) as 'fraction' from(
select player_id,datediff(event_date,min(event_date) over(partition by player_id))=1
as n from activity) as p