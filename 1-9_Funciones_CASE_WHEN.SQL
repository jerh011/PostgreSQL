CREATE OR REPLACE FUNCTION CLINICA.MesesAño(NumeroMes INT)
RETURNS VARCHAR(30) AS $$
DECLARE
    mensaje VARCHAR(50) := 'El numero del mes es: ';
BEGIN
    CASE
        WHEN NumeroMes=1 THEN
            RETURN mensaje || 'Enero';
        WHEN NumeroMes=2 THEN
            RETURN mensaje || 'Febrero';
        WHEN NumeroMes=3 THEN
            RETURN mensaje || 'Marzo';
        WHEN NumeroMes=4 THEN
            RETURN mensaje || 'Abril';
        WHEN NumeroMes=5 THEN
            RETURN mensaje || 'Mayo';
        WHEN NumeroMes=6 THEN
            RETURN mensaje || 'Junio';
        WHEN NumeroMes=7 THEN
            RETURN mensaje || 'Julio';
        WHEN NumeroMes=8 THEN
            RETURN mensaje || 'Agosto';
        WHEN NumeroMes=9 THEN
            RETURN mensaje || 'Septiembre';
        WHEN NumeroMes=10 THEN
            RETURN mensaje || 'Octubre';
        WHEN NumeroMes=11 THEN
            RETURN mensaje || 'Noviembre';
        WHEN NumeroMes=12 THEN
            RETURN mensaje || 'Diciembre';
        ELSE 
            RETURN 'El numero no corresponde a un mes válido';
    END CASE;
END;
$$ LANGUAGE plpgsql;



SELECT CLINICA.MesesAño(111);
