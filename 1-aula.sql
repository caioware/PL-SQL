/*
DECLARE
NomeIdentificador [CONSTANT]tipo_de_dado
[NOT NULL][:= | DEFAULT expressão];
*/

SET SERVEROUTPUT ON
DECLARE
    vNumero NUMBER(11,2) := 1200.50

BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);

END;

--  Declarando variáveis tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON
DECLARE
    vCaracterTamFixo        CHAR(2) := 'RS';
    vCaracterTamVariavel    VARCHAR(100) := 'Porto Alegre, RS';
BEGIN
    DBMS_OUTPUT.PUT_LINE('String Caracter Tam Fixo = ' || vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String Caracter Tam Fixo = ' || vCaracterTamFixo);
END;

--  Declarando Variáveis tipo DATE

 DECLARE
    vData1  DATE := '15/12/22'
    vData2  DATE := '15/12/2022'
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1 );
    DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2 );
END;
