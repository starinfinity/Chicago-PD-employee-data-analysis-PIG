--grouping employ by department name
groupemploy = GROUP employ BY departments::name;
--selecting and counting department name and employees in department  
emp_count = FOREACH groupemploy GENERATE group, COUNT(employ.departments::name);
--printing ouput
dump emp_count;
