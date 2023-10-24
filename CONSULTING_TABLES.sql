-- SQLite
-- CONSULTING TABLE

--14 - Construa uma consulta capaz de exibir somente o name, 
--lastname e email dos clientes que moram no estado de SP
SELECT NAME, LASTNAME, EMAIL
FROM CUSTOMERS
WHERE STATE = 'SP'

--15 - Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT *
FROM CARS
WHERE STATUS = 'Liberado'

--16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.
SELECT *
FROM CARS
WHERE YEAR = 2016

--17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT * FROM EMPLOYEES
JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID)

--18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram 
--mais ou igual a 2 locações.
SELECT EMPLOYEES.NAME, COUNT(LOCATIONS.EMPLOYEE_ID) FROM LOCATIONS
JOIN EMPLOYEES ON (LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID)
GROUP BY EMPLOYEES.NAME HAVING COUNT(LOCATIONS.EMPLOYEE_ID) >= 2

--19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais 
--ou igual a 2 locações.
SELECT CUSTOMERS.NAME, COUNT(LOCATIONS.CUSTOMER_ID) FROM LOCATIONS
JOIN CUSTOMERS ON (LOCATIONS.CUSTOMER_ID = CUSTOMERS.ID)
GROUP BY CUSTOMERS.NAME HAVING COUNT(LOCATIONS.CUSTOMER_ID) >= 2

--20 - Construa uma consulta capaz de exibir todas as locações realizadas, 
--assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT CUSTOMERS.NAME AS 'Cliente', CARS.NAME AS 'Carro', EMPLOYEES.NAME AS 'Funcionário', LOCATIONS.* FROM LOCATIONS
JOIN CUSTOMERS ON (LOCATIONS.CUSTOMER_ID = CUSTOMERS.ID)
JOIN CARS ON (LOCATIONS.CAR_ID = CARS.ID)
JOIN EMPLOYEES ON (LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID)

--21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(*) FROM LOCATIONS

--22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT MAX(TOTAL) FROM LOCATIONS

--23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas 
--“2022-05-20” a “2022-12-25”
SELECT * FROM LOCATIONS
WHERE START_DATE >= '2022-05-20' AND START_DATE <= '2022-12-25'