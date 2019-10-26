//creating relation with schema 
grunt> departments = LOAD 'hdfs://localhost:9000/Pig_Data/department_dataset.txt' USING PigStorage(';') as ( department_id:int, name:chararray, address:tuple );
//describing relation
grunt> describe departments;
//selecting the columns 
grunt> foreach_depar = FOREACH departments GENERATE $0..$2;
//limiting output to 10 records only
grunt> top_dep = LIMIT foreach_depar 10;
//displaying 10 records
grunt> dump top_dep;
