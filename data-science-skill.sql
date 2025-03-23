SELECT candidate_id FROM
(
SELECT distinct candidate_id, count(skill) as count_skill FROM candidates 
WHERE skill IN ('Python', 'Tableau','PostgreSQL') group by candidate_id
) as candidate_qualify
WHERE count_skill = 3;
