--Selecting columns from departments as five columns  
dept = FOREACH departments GENERATE department_id, name AS dep_name, address#'street' AS street, address#'city' AS city, address#'state' AS state;
--Joining employee and department using department_id as a key
employ_dep = JOIN employee BY department_id, dept BY department_id;
-- limiting output to show 10 records
top_employdep = LIMIT employ_dep 10;
--printing output
dump top_employdep;
