--creating relation with schema 
bonus = LOAD 'hdfs://localhost:9000/Pig_Data/employee_bonus.txt' USING PigStorage(',') as ( id:int, bonus:float );
--describing relation
describe bonus;
--selecting the columns 
foreach_bonus = FOREACH bonus GENERATE $0..$1;
--limiting output to 10 records only
top_bonus = LIMIT foreach_bonus 10;
--displaying 10 records
dump top_bonus;
