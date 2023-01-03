SET hivevar:group=bda_1;

SELECT count(*) AS nb
FROM ece_2020_fall_${group}.imdb_title_basics
WHERE runtimeminutes > 120;
