-- SELECT r.user_id, r.rating, b.average_rating
-- FROM ratings r
--     INNER JOIN books b on r.book_id = b.book_id
-- WHERE r.rating < b.average_rating 



-- -- QUESTION 1 
-- SELECT COUNT(r.user_id) AS [High Rating Users]
-- FROM ratings r
-- WHERE r.rating < 
--     (SELECT b.average_rating
--      FROM books b 
--      WHERE r.book_id = b.book_id)

-- -- QUESTION 2
-- SELECT book_id 
-- FROM books
-- WHERE ratings_1 > 1000 
-- UNION 
-- SELECT book_id 
-- FROM books
-- WHERE ratings_5 > 1000 


-- -- QUESTION 3
-- SELECT book_id 
-- FROM books
-- WHERE ratings_1 > 1000 
-- INTERSECT 
-- SELECT book_id 
-- FROM books
-- WHERE ratings_5 > 1000 

-- --QUESTION 4
-- SELECT book_id, language_code
-- FROM books
-- WHERE language_code ='en-US'
-- EXCEPT
-- SELECT book_id, language_code
-- FROM books
-- WHERE language_code ='en-GB'

-- -- QUESTION 5
-- SELECT t.tag_name, t.tag_id
-- FROM tags as t
-- WHERE t.tag_id IN
--     (SELECT bt.tag_id
--     FROM book_tags as bt
--     WHERE bt.count >100000)



-- Select tag_id
-- from book_tags
-- where count > 100000
-- GROUP BY tag_id

-- Select t.tag_id, bt.tag_id
-- from tags as t, book_tags as bt
-- WHERE bt.tag_id = t.tag_id