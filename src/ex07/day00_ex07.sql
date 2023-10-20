SELECT p.id,
       p.name,
       (SELECT
           CASE
                WHEN p.age BETWEEN 10
                            AND 20 THEN '#interval 1'
                WHEN p.age BETWEEN 21
                            AND 23 THEN  '#interval 2'
                ELSE '#interval 3'
           END) interval_info
FROM person p
ORDER BY interval_info;