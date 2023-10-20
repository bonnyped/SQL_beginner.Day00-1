SELECT
        (SELECT p.name
        FROM person p
        WHERE po.person_id = p.id) AS NAME
FROM person_order po
WHERE po.order_date = '2022-01-07'
    AND (po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18);