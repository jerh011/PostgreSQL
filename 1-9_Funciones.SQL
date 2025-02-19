
Create Function clinica.HolaMundo() Returns Varchar(20) AS $$
declare 
	mensaje VARCHAR(20):='HOLA MUNDO';
BEGIN 
	RETURN mensaje;
END;
	$$ LANGUAGE plpgsql;


SELECT CLINICA.holamundo();
-----------------------------------------------------------------------------------
Create or replace Function clinica.HolaMundo2(mensaje VARCHAR(20)) Returns Varchar(20) AS $$
BEGIN 
	RETURN mensaje;
END;
	$$ LANGUAGE plpgsql;

SELECT CLINICA.holamundo2('HOLA MY LOVE');
--------------------------SUMA----------------------------------------
CREATE OR REPLACE FUNCTION CLINICA.Sumanumeros(Num1 INT, num2 INT)
RETURNS INT AS $$
BEGIN 
	RETURN Num1 + Num2;
END;
$$ LANGUAGE plpgsql;

SELECT CLINICA.Sumanumeros(1, 2);

--------------------------MULTIPLICAR----------------------------------------
CREATE OR REPLACE FUNCTION CLINICA.Multiplicarnumeros(Num1 INT, num2 INT)
RETURNS INT AS $$
BEGIN 
	RETURN Num1 * Num2;
END;
$$ LANGUAGE plpgsql;

SELECT CLINICA.Multiplicarnumeros(2, 2);

---------------------IF/ELSE---------------------------------------------

--------------------------MULTIPLICAR----------------------------------------
CREATE OR REPLACE FUNCTION CLINICA.NumeroMayorMenor(Num1 INT, num2 INT)
RETURNS VARCHAR(30) AS $$
BEGIN 
	IF Num1 > Num2 THEN
		RETURN 'EL NUMERO: '|| Num1 || ' es mayor que '|| Num2;
 	ElSEIF Num1 < Num2  THEN
	 	RETURN 'EL NUMERO: '|| Num2 || ' es mayor que '|| Num1;
	ELSE
	 	RETURN 'EL NUMERO: '|| Num2 || ' es igual que el Numero '|| Num2;
	END IF;
 END;
$$ LANGUAGE plpgsql;

SELECT CLINICA.NumeroMayorMenor(3, 5);
