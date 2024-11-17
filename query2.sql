USE world;
SELECT 
    countrylanguage.Language,
    country.Continent,
    SUM(country.Population * countrylanguage.Percentage / 100) AS resultado
FROM world.country
INNER JOIN 
world.countrylanguage 
ON country.Code = countrylanguage.CountryCode
GROUP BY countrylanguage.Language, country.Continent