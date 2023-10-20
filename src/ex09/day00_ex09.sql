SELECT
        (SELECT p.name
        FROM person p
        WHERE pv.person_id = p.id) AS person_name,
        (SELECT zz.name
        FROM pizzeria zz
        WHERE pv.pizzeria_id = zz.id) AS pizzeria_name
FROM (SELECT *
      FROM person_visits
      WHERE visit_date BETWEEN '2022-01-07'
                            AND '2022-01-09') AS pv
ORDER BY person_name, pizzeria_name DESC;
