SET hivevar:group=bda_1;

SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM ece_2020_fall_${group}.imdb_title_basics
  WHERE array_contains(genres, 'Comedy')
) titles
JOIN ece_2020_fall_${group}.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
