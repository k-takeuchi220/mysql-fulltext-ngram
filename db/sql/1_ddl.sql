CREATE DATABASE IF NOT EXISTS speed_test;
use speed_test;

CREATE TABLE IF NOT EXISTS search_box (
    id int unsigned NOT NULL AUTO_INCREMENT,
    search_text TEXT NOT NULL comment '検索文字列',
    PRIMARY KEY (id)
);

ALTER TABLE search_box ADD FULLTEXT (search_text) WITH PARSER ngram;
