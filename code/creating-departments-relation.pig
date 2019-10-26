--creating relation with schema 
departments = LOAD 'hdfs://localhost:9000/Pig_Data/department_dataset.txt' USING PigStorage(';') as ( department_id:int, name:chararray, address:tuple );
--describing relation
describe departments;
--selecting the columns 
foreach_depar = FOREACH departments GENERATE $0..$2;
--limiting output to 10 records only
top_dep = LIMIT foreach_depar 10;
--displaying 10 records
dump top_dep;
