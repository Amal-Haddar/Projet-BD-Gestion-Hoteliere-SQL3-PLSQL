set serveroutput on;
DECLARE
CURSOR EmployeCourant IS SELECT DISTINCT(emp.cin) num,
emp.nom nom
FROM Employe emp ORDER BY 1;
tab_Telephone Telephones;
BEGIN
FOR UnEmployeCourant IN EmployeCourant LOOP
DBMS_OUTPUT.PUT_LINE('Employe : ' || (UnEmployeCourant.num) || ' ' || UnEmployeCourant.nom);
SELECT numTel INTO tab_Telephone
FROM Employe emp WHERE emp.cin = UnEmployeCourant.num;
IF (tab_Telephone(2) IS NULL) THEN
DBMS_OUTPUT.PUT_LINE('Deuxiéme numéro non renseigné (travail)');
ELSE
DBMS_OUTPUT.PUT_LINE('Le numero du travail est : ' || tab_Telephone(2));
END IF;
END LOOP;
END;
/
