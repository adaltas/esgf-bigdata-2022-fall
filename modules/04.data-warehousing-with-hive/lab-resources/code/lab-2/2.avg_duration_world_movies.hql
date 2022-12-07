SELECT avg(runtimeminutes) AS avg_duration
FROM esgf_2022_fall_bda_1.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld( |$)';
