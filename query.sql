-- World table
SELECT population FROM world
  WHERE name = 'Germany';

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

SELECT name
  FROM world
 WHERE population >= 200000000;

SELECT name, GDP/population 
  FROM world 
 WHERE population >= 200000000;

SELECT name, population/1000000
FROM world
WHERE continent LIKE 'South America';


SELECT name, population
FROM world
WHERE name IN('France', 'Germany', 'Italy');

SELECT name from world 
WHERE name LIKE '%United%';

SELECT name, population, area 
FROM world 
WHERE area > 3000000 OR population > 250000000;

SELECT name, population, area FROM world 
WHERE ((population > 250000000) OR (area > 3000000)) 
       AND NOT ((population > 250000000) AND (area > 3000000))


SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2) 
FROM world 
WHERE continent LIKE 'South America';


SELECT name, ROUND(gdp/population,-3)
  FROM world
  WHERE
  gdp>1000000000000;

SELECT name, capital 
FROM world 
WHERE LENGTH(name) = LENGTH(capital);

SELECT name,capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

SELECT name
   FROM world
WHERE name LIKE'%a%' AND name LIKE'%e%'
AND name LIKE'%i%' AND name LIKE'%o%'
AND name LIKE'%u%' AND name NOT like'% %'


-- select from Nobel database

SELECT yr, subject, winner FROM nobel WHERE yr = 1950
SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature'
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';
SELECT winner FROM nobel WHERE subject = 'PEACE' AND yr >= 2000;
SELECT yr,subject,winner FROM nobel WHERE subject='Literature' AND yr BETWEEN 1980 AND 1989
SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama')
SELECT winner FROM nobel WHERE winner LIKE'John%'

select yr,subject,winner
from nobel
where (subject='Physics' and yr=1980) or (subject='Chemistry' and yr=1984)

select yr,subject,winner
 from nobel
where subject not in('Chemistry', 'Medicine') and yr=1980

select yr,subject,winner
from nobel
where (subject='Medicine' and yr < 1910)
or (subject='Literature' and yr >= 2004)

select * from nobel where winner='PETER GRÜNBERG'

select * from nobel where winner like'EUGENE O''NEILL'

select winner,yr,subject
from nobel
where winner like'Sir%' order by yr desc, winner
