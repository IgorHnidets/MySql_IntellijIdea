use world;

SELECT count_of_cities, county.Name
FROM county INNER JOIN capital ON county.id = capital.country_id;

SELECT county.Name, city.Name FROM county LEFT JOIN city on county.id = city.country_id;

SELECT county.Name, c.Name FROM county RIGHT JOIN city c on county.id = c.country_id;
# WHERE county.id is null;

SELECT county.Name, c.Name FROM county LEFT JOIN city c on county.id = c.country_id
WHERE c.id IS NULL
                           UNION
SELECT county.Name, c.Name FROM county RIGHT JOIN city c on county.id = c.country_id
WHERE county.id is null ;