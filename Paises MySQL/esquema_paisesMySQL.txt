USE world;

/*consulta1*/
SELECT country.name, countrylanguage.language, countrylanguage.percentage
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE countrylanguage.language = 'Slovene'
ORDER BY countrylanguage.percentage DESC;

/*consulta2*/
SELECT country.name, COUNT(city.name) AS total_cities
FROM country
JOIN city ON country.code = city.countrycode
GROUP BY country.name
ORDER BY total_cities DESC;

/*consulta3*/
SELECT name, population
FROM city
WHERE countrycode = 'MEX' AND population > 500000
ORDER BY population DESC;

/*consulta4*/
SELECT country.name, countrylanguage.language, countrylanguage.percentage
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE countrylanguage.percentage > 89
ORDER BY countrylanguage.percentage DESC;

/*consulta5*/
SELECT name, population, surfaceArea
FROM country
WHERE population > 100000 AND surfaceArea < 501;

/*consulta6*/
SELECT name, capital, lifeExpectancy
FROM country
WHERE governmentForm = 'Constitutional Monarchy' AND capital > 200 AND lifeExpectancy > 75;

/*consulta7*/
SELECT country.name, city.name , district, country.population
FROM country
JOIN city ON country.code = city.countrycode
WHERE district = 'Buenos Aires' AND country.population > 500000 AND country.name = 'Argentina';

/*consulta8*/
SELECT region, COUNT(name) AS num_countries
FROM country
GROUP BY region
ORDER BY num_countries DESC;






