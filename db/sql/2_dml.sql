use speed_test;

LOAD DATA LOCAL infile 'docker-entrypoint-initdb.d/iamacat.csv' INTO TABLE search_box fields terminated BY ',' optionally enclosed BY '"'
(@1)
SET
    search_text = @1;
