# sql_week_15_16

QUESTION 1 DATA DIVE:

Dataset picked : Netflix Shows

Interesting thing: My dataset had 8,807 rows (so huge a dataset)
Difficulties: I cant view all the dataset in an instance, I have to scroll down


QUESTION 2 DATA FUN:

Using simple sql queries to find;
a) 2 cool facts hidden in the dataset
  1) Fact 1: Most common production number of movies/series done per year giving the top 5

    sql query

    SELECT release_year, COUNT(*) as count
    FROM netflix_titles
    GROUP BY release_year
    ORDER BY count DESC
    LIMIT 5;

      Result

    release_year	count
	2021	53
	2020	8
	2018	4
	2013	3
	2019	3


  2) Fact 2: Average duration of movies

    sql query

    SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) as avg_duration
    FROM netflix_titles
    WHERE type = 'Movie';

    Result
    
    avg_duration
    100.7273


QUESTION 3: Ask Away (30 pts):
Formulate 2 questions about the data , Write basic SQL queries (WHERE, ORDER BY) to find answers:

  a) Which country had the highest number of productions limiting the count to 5 countries, use the order by desc?

    sql query 

    SELECT country, COUNT(*) as count
    FROM netflix_titles
    GROUP BY country
    ORDER BY count DESC
    LIMIT 5;


     results
    country     count
 	                41
    United States	17
    Japan	13
    India	6
    United Kingdom	5

b) Arrange the the tv shows according to the year of production in descending order (include the title  and rating) limit the result to 10.

    sql query
    
    SELECT title, rating, release_year
    FROM netflix_titles
    WHERE type = 'TV Show' -- AND release_year LIKE '%2021%'
    ORDER BY release_year DESC
    LIMIT 10;


     results
     title     rating   release_year
    Blood & Water	TV-MA	2021
    Ganglands	TV-MA	2021
    Jailbirds New Orleans	TV-MA	2021
    Kota Factory	TV-MA	2021
    Midnight Mass	TV-MA	2021
    The Great British Baking Show	TV-14	2021
    Vendetta: Truth, Lies and The Mafia	TV-MA	2021
    Bangkok Breaking	TV-MA	2021
    Crime Stories: India Detectives	TV-MA	2021
    Dear White People	TV-MA	2021


  From my answers above, I found that in the columns countries, the one with null or no county name displayed had the highest highest number of production at 41, then the US at 17, Japan at 13, India at 6 and UK at 5 . 

  When we limit our search to the latest TV shows produced with reference to the release year, we find that the result shows the latest release year did not move before 2021.
    
