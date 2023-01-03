SET hivevar:group=bda_1;

SELECT avg(runtimeminutes) AS avg_duration
FROM ece_2020_fall_${group}.imdb_title_basics
WHERE originaltitle RLIKE '(^| )[Ww]orld';
