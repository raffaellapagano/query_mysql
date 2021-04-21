-- EXERCICI 1

SELECT count(flightID) FROM flights;

-- EXERCICI 2

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides 
FROM flights group by Origin;

-- EXERCICI 3

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM flights group by colMonth, colYear, Origin 
order by Origin, colYear, prom_arribades desc;

-- EXERCICI 4
SELECT usairports.City, flights.colYear, flights.colMonth, AVG(ArrDelay) AS prom_arribades 
FROM flights INNER JOIN usairports ON flights.Origin = usairports.IATA 
group by colMonth, colYear, City order by City, colYear, prom_arribades desc;

-- EXERCICI 5

SELECT UniqueCarrier, colYear, colMonth, 
count(Cancelled) AS total_cancelled FROM flights 
WHERE Cancelled = 1 group by UniqueCarrier, colMonth, colYear
order by total_cancelled DESC, UniqueCarrier ASC;

-- EXERCICI 6

SELECT TailNum, SUM(Distance) AS totalDistance FROM flights 
group by TailNum order by totalDistance desc limit 10;

-- EXERCICI 7

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM flights GROUP BY UniqueCarrier HAVING avgDelay > 10.000
ORDER BY avgDelay DESC;



