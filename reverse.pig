register '/home/hduser/pig/contrib/piggybank/java/piggybank.jar';

define reverse org.apache.pig.piggybank.evaluation.string.Reverse();

myline = LOAD 'sample_data/reverse.txt' as (name:chararray);

reversed = FOREACH myline GENERATE reverse(name);

dump reversed ;
