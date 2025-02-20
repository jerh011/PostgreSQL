CREATE OR REPLACE FUNCTION clinica.loop(Num INT)
RETURNS INT AS $$
DECLARE 
	i int:=0;
	BEGIN 

	FOR i IN 1..Num LOOP 
		RAISE NOTICE '% x 5 = %',i, i*5;
	END LOOP;

end;
$$ LANGUAGE plpgsql;

SELECT clinica.loop(50);

CREATE OR REPLACE FUNCTION clinica.loop2(Num INT)
RETURNS INT AS $$
DECLARE 
	i int:=0;
	BEGIN 

	FOR i IN REVERSE Num..1 LOOP 
		RAISE NOTICE 'CONTADOR %',i*5;
	END LOOP;

end;
$$ LANGUAGE plpgsql;

SELECT clinica.loop2(50);


CREATE OR REPLACE FUNCTION clinica.loopcada2(Num INT)
RETURNS INT AS $$
DECLARE 
	i int:=0;
	BEGIN 

	FOR i IN  0..Num BY 2 LOOP 
		RAISE NOTICE 'CONTADOR %',i;
	END LOOP;

end;
$$ LANGUAGE plpgsql;

SELECT clinica.loopcada2(50);
