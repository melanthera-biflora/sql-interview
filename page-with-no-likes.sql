SELECT pages as page_id FROM
(
SELECT pages.page_id as pages, count(user_id) as user_count
FROM pages
LEFT OUTER JOIN page_likes
ON pages.page_id = page_likes.page_id GROUP BY pages
) as like_count WHERE user_count = 0;
