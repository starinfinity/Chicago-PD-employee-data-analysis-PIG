--Joining departments and employ_depa by department id as key
depart_emp = JOIN departments BY department_id, employ_depa BY department_id;
--selecting and renaming column name 
avg_bon = FOREACH depart_emp GENERATE departments::department_id AS department_id,employ_depar::bonus AS bonus;
--grouping by department id
groupavg = GROUP avg_bon BY department_id;
--calculating average bonus by department id 
average_bonus = FOREACH groupavg GENERATE group, ROUND( AVG(avg_bon.bonus)) AS average_bonus;
--printing output
dump average_bonus;
