--creating relation with schema 
employee = LOAD 'hdfs://localhost:9000/Pig_Data/employee_dataset.txt' USING PigStorage(',') as ( id:int, name:chararray, occupation:chararray, Department_id:int, salary:float );
--describing relation
describe employee
--selecting the columns 
foreach_emp = FOREACH employee GENERATE $0..$4;
--limiting output to 10 records only
top_emp = LIMIT foreach_emp 10;
--displaying 10 records
dump top_emp;
