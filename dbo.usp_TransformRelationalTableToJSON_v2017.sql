
CREATE TABLE TEST_JSON
(
	BusinessEntityID INT,  
	FirstName VARCHAR(1000), 
	LastName VARCHAR(1000),  
	Title VARCHAR(1000),  
	MiddleName VARCHAR(1000)  
)

INSERT INTO TEST_JSON
SELECT 1, 'RODRIGO', 'MONTEIRO', 'BOLÃO', 'DE PAULA'

create table test_json2 
(id int , endereco varchar(1000))

insert into TEST_JSON2 
select 1, 'rua teste'

insert into TEST_JSON2 
select 1, 'rua do trabalho'

SELECT    
       *  
   FROM TEST_JSON USUARIO
   INNER JOIN test_json2 ENDER
	ON USUARIO.BusinessEntityID = ENDER.id
   FOR JSON AUTO  

