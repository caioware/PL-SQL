/*

Tipos de Dado N PL/SQL - Datatypes

°   Um tipo de dado escaalr armazena um único
    valor e não possui componentes inteiros
°   tipos de dados escalares podem ser
    classificados em quatro categorias:
    númerico, caractere, data e booleano
°   Tipos de dados caractere e numérico
    Possuem subtipos

Tipo NUMBER

°   O tipo "NUMBER" suporta números
°   São definidos especificando NUMBER(p,s)
°   "p" é o numero máximo de dígitos (precisão)
°   "s" é o número de decimais (escala)

Obs.: O ponto decimal não é armazenado internamente 

Tipo NUMBER - Exemplo

DECLARE
vvalor1 NUMBER(11,2) := 14.5;
vvalor2 NUMBER(11) := 24;

CHAR 

°   O tipo de dado CHAR é um tipo de dado
    base para strings de tamanho fixo
°   O tamanho máximo para um tipo de dado
    CHAR no PL/SQL é 32767 bytes
°   O tamanho default é 1 byte

Obs.:
°   O tamanho máximo um tipo de dado CHAR
    no SQL é 2.000 bytes

CHAR - Exemplo

DECLARE
vestado CHAR(2) NOT NULL := 'RS';

VARCHAR2

°   O tipo de dado VARCHAR2 é p tipo de
    dado base para strings de tamanho variável
°   O tamanho máximo de um VARCHAR2 é de
    32767 bytes

Obs.:
°   O tamanho no SQL é de 4000 bytes

varchar2 - eXEMPLO

declare
VCIDADE varchar2(40) not null := 'Porto Alegre';

BOOLEAN

°   O tipo de dado BOOLEAN possui três
    valores possíveis: TRUE, FALSE e NULL

BOOLEAN - Exemplo 

DECLARE
vvar BOOLEAN NOT NULL := TRUE;

LONG e LONG RAW

°   O tipo de dado LONG armazena um string de
    caracteres. O tipo de dado LONG RAW armazena
    bínarios
°   O tipo de dado LONG possui um tamanho máximo
    de até 32760 bytes no PL/SQL
°   O tipo de dado LONG RAW possui um tamanho
    máximo de até 32760 bytes no PL/SQL

Obs.:
°   O taamnho máximo de um tipo de dado LONG no
    SQL é 2G - 1
°   O tamanho máximo de um tipo de dado LONG 
    RAW no SQL é 2G

LONG e LONG RAW - Exemplo

DECLARE 
vtexto LONG := 'CAR';
vvar LONG RAW := HEXTORAW('43'||'41'||'52');

ROWID

°   O tipo ROWID mapeia a pseudocoluna
    ROWID, que é o endereço lógico de uma
    linha de uma tabela
°   O tipo ROWID é um string de 18 caracteres

ROWID - Exemplo

DECLARE
vrowid ROWID;

DATE 

°   O Tipo de dado DATE é o tipo de dado base
    para datas. O intervalo válido é a aprtir de 1
    de janeiro de 4712 AC até 31 de dezembro
    de 9999 DC

DATE - Exemplo

DECLARE
vdata1 DATE := sysdate
vdata2 DATE := '28/01/20'

TIMESTAMP

°   O subtipo TIMESTAMP extende o tipo de
    dado DATE base oferecendo um tempo com
    tamanho máximo de 9 dígitos de segundos
    após o decimal

TIMESTAMP - Exemplo

DECLARE
vdata1 TIMESTAMP := SYSTIMESTAMP;
vdata2 TIMESTAMP(3) := SYSTIMESTAMP;

TIMESTAMP WHIT TIME ZONE

    O subtipo TIMESTAMP extende o tipo de dado
    DATE base oferecendo um tempo com tamanho
    máximo de 9 dígitos de segundos após o decimal
    Incluindo UTC

TIMESTAMP WHIT TIME ZONE - Exemplo

DECLARE 
vdata1 TIMESTAMP WHIT TIME ZONE := SYSTIMESTAMP;

DECLARE 
vdata2 TIMESTAMP WHIT LOCAL TIME ZONE := SYSTIMESTAMP;

NCHAR E NVARCHAR2

°   Caracteres e string Unicode existem para
    suportar globalizaçãp utilizando conjuntos de
    caracteres (character sets)
    univerasais
°   AL16UTF16 ou UTF8 são conjuntos de 
    caracteres universais fornecidos pelo banco
    de dados Oracle
°   AL16UTF16 armazena todos os caracteres
    em 2 bytes físicos
°   UTF8 armazena todos os caracteres em 3
    bytes físicos.

NCHAR E NVARCHAR2

°   O tipo de dado NCHAR é um Unicode
    equivalente ao tipo de dado CHAR
°   O tipo de dado NVARCHAR2 é um Unicode
    equivalente ao tipo de dado VARCHAR2

NCHAR E NVARCHAR2 - Exemplo

DECLARE
vestado NCHAR(2) := 'RS';
vnome NVARCHAR2(20) := 'Utilizando conjuntos
de caracteres Universal';

BINARY_INTERGER

°   O tipo de dado BINARY_INTERGER é
    numérico sem decimais
°   Armazena números inteiros na faixa entre: -
    2.147.483.648 até 2.147.483.647 como 32
    bits ou 4 bytes
°   Cálculos mais eficientes como números
    inteiros que um tipo de dado NUMBER
    porque consome menos espaços em memória

BINARY_INTERGER - Exemplo

DECLARE
vvar1 BINARY_INTEGER := 14;
vvar2 BINARY_INTEGER := 24;

BINARY_DOUBLE E BINARY_FLOAT

°   BINARY_FLOAT - Precisão simples (32 bits)
°   BINARY_DOUBLWE - Precisão dupla (64 bits)

BINARY_DOUBLE E BINARY_FLOAT - Exemplo

DECLARE 
vvar1 BINARY_DOUBLE := 14;
vvar2 BINARY_FLOAT := 24;

Regras de Nomenclatura

°   Dois objetos podem possuir o mesmo nome
    desde que sejam definidos em blocos
    diferentes
°   Não utilize mesmo nome (identificador) para
    uma variável que o nome de colunas de 
    tabelas utilizadas no bloco para evitar 
    ambiguidade

Atribuindo valores para Variáveis 

°   Para atribuir um valor para uma variável, você
    escreve um comando de atribuição PL/SQL
°   Você deve explicitamente nomear a variável
    para receber o novo valor à esquerda do
    operador de atribuoção (:=)

Atribuindo valores para Variáveis - Exemplo

set serveroutput on
DECLARE
    vdatabase VARCHAR2(40);
BEGIN
    vdatabase:= 'Oracle 19c';
    DBMS_OUTPUT_LINE('Valor da variável
vdatabase = ' || vdatabase);
END;

Declarando variáveis utilizando %TYPE

°   Ao invés de codificar o tipo de dado e a
    precisão de uma variável, você pode utilizar o
    atributo %TYPE para declarar uma variável
    de acordo com uma coluna do banco de
    dadis ou outra variável
°   O atrubuto %TYPE é frequentemente utilizado 
    quando o valor armazenado em uma variável
    é derivado de uma coluna de uma tabela do
    banco de dados

Utilizando % TYPE - Exemplo

DECLARE
    vfirst_name employees.firt_name%TYPE;
    vlast_name  employees.last_name%TYPE;

*/

DESC employees

SET