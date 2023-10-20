SELECT
        (SELECT person.name
        FROM person
        WHERE po.person_id = person.id) AS name,
       (SELECT
               CASE
                    WHEN person.name like 'Denis' THEN 'True'
                    ELSE 'False'
               END AS check_name
        FROM person
        WHERE po.person_id = person.id)
FROM person_order AS po
WHERE po.order_date = '2022-01-07'
    AND (po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18);