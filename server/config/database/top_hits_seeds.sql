use stonker;

DROP TABLE IF EXISTS top_hits;

CREATE TABLE top_hits (
symbol varchar(10)
,indicator int
);

INSERT INTO top_hits (symbol,indicator)
values
 ('GME', 10)
,('AMC', 5)
,('GOOG', 1)
,('ALGN', 7)
,('MO', 2)
,('BIIB', 6)
,('CCL', 4)