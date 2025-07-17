SELECT * FROM jobs WHERE title LIKE "HR%";

SELECT * FROM jobs WHERE title LIKE "%Software%";

SELECT AVG(min_salary) AS average_min_salary_sales FROM jobs WHERE title LIKE "Sales%";

SELECT * FROM jobs WHERE title LIKE "_u%";

SELECT * FROM employees WHERE first_name LIKE "A%" AND LENGTH(first_name) >= 5;

SELECT * FROM employees WHERE first_name LIKE "E%" AND first_name LIKE "%a";

SELECT * FROM employees	WHERE email != "%gmail.com" ORDER BY first_name ASC;

SELECT * FROM employees WHERE first_name IN ("Adam","Alice","Tom");

SELECT * FROM employees WHERE department_id NOT IN (2,3,5);

SELECT * FROM jobs WHERE min_salary < 3000 OR min_salary > 8000;

SELECT * FROM employees WHERE YEAR(hire_date) IN (2015,2026) AND department_id NOT IN (2,3);

SELECT * FROM employees WHERE YEAR(birth_date) = 1990 ORDER BY birth_date ASC;

SELECT CONCAT(first_name, last_name, ' - ', DATE_FORMAT(birth_date, '%Y-%m-%d')) AS employee FROM employees WHERE job_id = 3;

SELECT employees.first_name, employees.last_name, departments.department_name FROM employees AS employees , departments AS departments WHERE employees.department_id = departments.id;

SELECT
    locations.city,
    departments.department_name
FROM
    locations AS locations
LEFT JOIN
    departments AS departments ON locations.id = departments.location_id
ORDER BY
    locations.city ASC;





