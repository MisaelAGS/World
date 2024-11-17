USE world;
SELECT 
    country.Continent, SUM(country.Population) 
FROM world.country
GROUP BY country.Continent
ORDER BY SUM(country.Population) DESC;