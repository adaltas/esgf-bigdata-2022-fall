SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM esgf_2022_fall_bda_1.imdb_title_basics
  WHERE NOT array_contains(genres, 'Comedy')
) titles
JOIN esgf_2022_fall_bda_1.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
