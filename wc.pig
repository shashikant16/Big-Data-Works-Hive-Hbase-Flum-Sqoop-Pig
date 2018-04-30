--SET default_parallel 2;

lines = LOAD 'wc' AS (line:chararray);

words = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) as word;
grouped = GROUP words BY word;
wordcount = FOREACH grouped GENERATE group, COUNT(words) ;



dump wordcount ;


--store wordcount into 'wcpigout' ;
