-- 1. Wyświetl wszystkie adresy email pracowników.

SELECT email FROM employees;

-- 2. Wyświetl numer id, imię oraz nazwisko wszystkich pracowników.

SELECT first_name, last_name, id FROM employees;

-- 3. Wyświetl numer id oraz adres email wszystkich pracowników. Kolumnie id nadaj alias employee_id natomiast kolumnie email nadaj aliasprivate_email.
SELECT id AS employee_id, email AS private_email from employees;

-- 4. Wyświetl imiona pracowników. Imiona nie mogą się powtarzać.
SELECT distinct first_name FROM employees;

-- 5. Pokaż wszystkich pracowników z imieniem Tom

SELECT * from employees where first_name = "Tom";

-- 6. Pokaż ilu jest pracowników z unikatowymi (bez powtórzeń) imionami oraz zmień nazwę kolumny na number_of_employees.

SELECT COUNT(DISTINCT first_name) AS number_of_employees from employees;

-- 7. Pokaż wszystkich pracowników, którzy zostali zatrudnieni od 1 stycznia 2019r.

SELECT * FROM employees WHERE hire_date > "2019-01-01";

-- 8. Pokaż wszystkie stanowiska pracy, gdzie płaca minimalna jest mniejsza niż 5000.
SELECT * FROM jobs WHERE min_salary < 5000;

-- 9. Pokaż wszystkich pracowników z imieniem Adam oraz nazwiskiem Irwin.
SELECT * FROM employees WHERE first_name = "Adam" AND last_name = "Irwin";

-- 10. Pokaż wszystkich pracowników z imieniem Tom lub John.
 SELECT * FROM employees WHERE first_name = "Tom" OR "John";
 
-- 11. Wyświetl wszystkich pracowników, którzy posiadają nazwisko Martinez oraz
--  urodzili się po 1 stycznia 1988.
 
 SELECT * FROM employees WHERE last_name = "Martinez" AND birth_date > "1988-01-01";
 
 -- 12.  Wyświetl wszystkich pracowników, którzy nie pracują w dziale o id 3
 
 SELECT * FROM employees WHERE department_id != "3";
 
 -- 13. Wyświetl wszystkich pracowników, którzy pracują w dziale o numerze id 6
 -- oraz ich stanowisko pracy posiada numer id 2 lub 4 
 
 SELECT * FROM employees WHERE department_id ="6" AND job_id IN ("2" OR "4");
 
-- 14. Wyświetl wszystkich pracowników, którzy pracują w dziale o numerze id 3
-- oraz numer id ich stanowiska pracy jest inny niż 2.
SELECT * FROM employees WHERE department_id = "3" AND job_id != "2";

 -- 15. Wyświetl wszystkie stanowiska pracy posortowane malejąco po płacy
 -- minimalnej.
 SELECT * FROM jobs ORDER BY min_salary DESC;
 
 -- 16. Wyświetl wszystkie stanowiska pracy posortowane malejąco po płacy
 -- minimalnej. Gdy kilka rekordów posiada taką samą płacę minimalną należy
 -- je posortować malejąco po płacy maksymalnej.
 SELECT * FROM jobs ORDER BY min_salary DESC, max_salary DESC;
 
 -- 17. Wyświetl wszystkie stanowiska pracy z płacą minimalną równą 3000
 -- posortowane rosnąco po płacy maksymalnej.
 SELECT * FROM jobs WHERE min_salary = "3000" ORDER BY max_salary ASC;
 
 -- 18. Wyświetl wszystkie lokalizacje, które nie posiadają numeru ulicy.
 SELECT * FROM locations WHERE street_address is NULL;
 
 -- 19. Wyświetl trzech pierwszych pracowników.
 
 SELECT * FROM employees LIMIT 3;
 
 -- 20. Wyświetl pięciu pracowników pomijając pierwszych dziesięciu.
 SELECT * FROM employees LIMIT 10, 5;
 
 -- 21.Wyświetl pięciu ostatnio zatrudnionych pracowników do działu o id 3.
 SELECT * FROM employees WHERE department_id = "3" ORDER BY hire_date DESC;
 
 -- 22.Wyświetl datę urodzenia najstarszego pracownika oraz zmień nazwę
 -- kolumny na oldest_employee.
 
 SELECT MIN(birth_date) AS oldest_employee FROM employees;
 
 -- 23.Wyświetl datę urodzenia najmłodszego pracownika zatrudnionego w dziale o
 -- numerze id 2 oraz zmień nazwę kolumny na youngest_employee_department_2.
 
 SELECT MAX(birth_date) AS youngest_employee_department_2 FROM employees WHERE department_id = "2";

 -- 24. Wyświetl imię  i nazwisko pracownika, który ostatnio dołączył do firmy.
 
 SELECT first_name, last_name FROM employees ORDER BY hire_date DESC
LIMIT 1;
 -- 25.Pokaż ilość pracowników zatrudnionych na stanowisku pracy o numerze id 2
 -- oraz zmień nazwę kolumny na number_of_software_engineers
 SELECT COUNT(job_id = "2") AS number_of_software_engineers FROM employees;