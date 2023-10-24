-- SQLite

-- UPDATING TABLE

--9 - Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina, 
--onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
UPDATE CUSTOMERS SET EMAIL = "carolina@campuscode.com.br" WHERE EMAIL = "carol@ig.com.br";

--10 - Construa uma query SQL para editar a data de nascimento do cliente 
--com nome Josefa para “1986-06-19”.
UPDATE CUSTOMERS SET BIRTH_DATE = "1986-06-19" WHERE NAME = "Josefa";
SELECT * FROM CUSTOMERS WHERE NAME = "Josefa";

--11 - Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos 
--de “2022” para “2019” da tabela de CARS
UPDATE CARS SET YEAR = "2019" WHERE NAME = "Fiat Cronos";
SELECT * FROM CARS

--12 - Construa uma query SQL para excluir o automóvel com nome 
--Hyundai HB20 1.6 da tabela de CARS
DELETE FROM CARS WHERE NAME = "Hyundai HB20 1.6";

--13- Construa uma query SQL para alterar o nome da coluna “PHONE” da tabela de EMPLOYEES, 
--para “PHONE NUMBER”
ALTER TABLE EMPLOYEES RENAME PHONE TO "PHONE NUMBER";
