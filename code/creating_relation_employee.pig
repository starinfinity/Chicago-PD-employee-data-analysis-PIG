grunt> employee = LOAD 'hdfs://localhost:9000/Pig_Data/employee_dataset.txt' USING PigStorage(',') as ( id:int, name:chararray, occupation:chararray, Department_id:int, salary:float );
grunt> describe employee
