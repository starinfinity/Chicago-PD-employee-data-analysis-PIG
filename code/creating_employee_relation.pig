--creating relation with schema 
grunt> employee = LOAD 'hdfs://localhost:9000/Pig_Data/employee_dataset.txt' USING PigStorage(',') as ( id:int, name:chararray, occupation:chararray, Department_id:int, salary:float );
--describing relation
grunt> describe employee
--selecting the columns 
grunt> foreach_emp = FOREACH employee GENERATE $0..$4;
--limiting output to 10 records only
grunt> top_emp = LIMIT foreach_emp 10;
--displaying 10 records
grunt> dump top_emp;
