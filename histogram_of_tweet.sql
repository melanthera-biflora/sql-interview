SELECT count_tweets as tweet_bucket, count (distinct user_id) AS user_num FROM
(
SELECT distinct user_id, count(tweet_id) 
as count_tweets 
from tweets 
where date(tweet_date) >= '01/01/2022' 
and date(tweet_date) <= '12/31/2022' 
group by user_id => temp_table
) as temp_table group by count_tweets
