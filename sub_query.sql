SELECT * FROM employee.employee_table;
select 
	emp_name, 
    emp_age, 
    salary, 
    city,
	(select avg(emp_age) from employee_table e2 where e2.city = e1.city) as avg_city_age,
    (select avg(salary) from employee_table e3 where e3.city = e1.city) as avg_city_salary
from 
	employee_table e1 
where 
	emp_age> 20 and (select avg (salary) from employee_table e3 where e3.city = e1.city) > 50000;