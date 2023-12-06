USE NorthWind
CREATE DATABASE Example6
GO 

SELECT *
FROM Person.Person
WHERE BusinessEntityID BETWEEN 100 AND BusinessEntityID <= 200 

SELECT * 
FROM Person.Person
WHERE BusinessEntityID BETWEEN 100 AND 200 

SELECT * FROM Person.Person 
WHERE BusinessEntityID BETWEEN 10 AND 20 

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (100, 107, 200, 2210)

SELECT * 
FROM Person.Person
WHERE MiddleName IN ('B', 'M', 'T')

SELECT * FROM Person.Person
WHERE LastName LIKE '%e'

SELECT * FROM Person.Person 
WHERE LastName LIKE '[RA]__e'

SELECT * FROM Person.Person
WHERE LastName LIKE '[RA]%e'

SELECT DISTINCT Title FROM Person.Person 

SELECT Count(BusinessEntityID) as TotalID, Title
FROM Person.Person 
GROUP BY Title 
SELECT Title, COUNT(*) [Title Number]
FROM Person.Person
GROUP BY Title

SELECT * FROM Sales.SalesPerson
SELECT * FROM Person.Person 

SELECT * FROM Person.Person 
WHERE BusinessEntityID in (1, 4, 99)

SELECT * FROM Person.Person 
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM Sales.SalesPerson)

SELECT * FROM Person.Person  INNER JOIN Sales.SalesPerson
ON Person.BusinessEntityID = SalesPerson.BusinessEntityID

SELECT * FROM Person.Person LEFT OUTER JOIN Sales.SalesPerson
ON Person.BusinessEntityID = SalesPerson.BusinessEntityID

SELECT * FROM Person.Person RIGHT OUTER JOIN Sales.SalesPerson
ON Person.BusinessEntityID = SalesPerson.BusinessEntityID

SELECT Title, COUNT(*)
FROM Person.Person
GROUP BY Title

SELECT COUNT(BusinessEntityID) AS CountBUS, Title 
FROM Person.Person
WHERE EmailPromotion IN (1,2)
GROUP BY Title
HAVING COUNT(BusinessEntityID)>100

SELECT * FROM Person.Person

SELECT Title, COUNT(*) [Title Number]
FROM Person.Person
WHERE Title LIKE 'Mr%'
GROUP BY Title

SELECT * FROM Person.Person

SELECT Title, COUNT(*) [Title Number]
FROM Person.Person
GROUP BY All Title
HAVING Titel LIKE 'Mr%'


SELECT Title, COUNT(*) [Title Number]
FROM Person.Person
GROUP BY All Title
HAVING Title LIKE 'Mr%' OR COUNT(*)>10


SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
GROUP BY Title WITH CUBE 


SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
GROUP BY Title WITH ROLLUP

SELECT * FROM Person.Contact
ORDER BY FirstName, LastName DESC

SELECT * FROM Person.Person
WHERE BusinessEntityID in(
    SELECT BusinessEntityID
    FROM HumanResources.Employee
)
SELECT * FROM HumanResources.Employee

SELECT * FROM Person.Person P
WHERE EXISTS(
    SELECT BusinessEntityID
    FROM HumanResources.Employee
    WHERE BusinessEntityID=P.BusinessEntityID
)

SELECT BusinessEntityID, FirstName
FROM Person.Person
WHERE BusinessEntityID IN (1,2,3,4,5,6)
UNION 
SELECT BusinessEntityID, FirstName
FROM Person.Person
WHERE BusinessEntityID IN (1,3,5,7) AND FirstName LIKE '%A%'

SELECT ContactID, FirstName 
FROM Person.Contact
WHERE ContactID, FirstName
UNION ALL 
SELECT BusinessEntityID, FirstName
FROM Person.Contact
WHERE BusinessEntityID IN (1,3,5,7) 

SELECT Person.Person.*, E.*
FROM Person.Person P INNER JOIN HumanResources.Employee E ON
    P.ContactID=E.ContactID

SELECT * FROM Person.Person
SELECT * FROM Person.PersonPhone
SELECT Per.BusinessEntityID, Per.FirstName. Phone.PhoneNumber
FROM Person.Person Per 
INNER JOIN Person.PersonPhone Phone ON 
Per.BusinessEntityID = Phone.BusinessEntityID

SELECT Per.BusinessEntityID, Per.FirstName. Phone.PhoneNumber
FROM Person.Person Per 
LEFT OUTER JOIN Person.PersonPhone Phone ON 
Per.BusinessEntityID = Phone.BusinessEntityID

SELECT Per.BusinessEntityID, Per.FirstName. Phone.PhoneNumber
FROM Person.Person Per 
RIGHT OUTER JOIN Person.PersonPhone Phone ON 
Per.BusinessEntityID = Phone.BusinessEntityID

SELECT Person.Contact.*
FROM Person.Contact LEFT OUTER JOIN HumanResources.Employee ON 
Person.Contact.ContactID= HumanResources.Employee.ContactID

SELECT C.*
FROM Person.Contact AS C LEFT OUTER JOIN HumanResources.Employee AS E ON 
C.ContactID = E.ContactID