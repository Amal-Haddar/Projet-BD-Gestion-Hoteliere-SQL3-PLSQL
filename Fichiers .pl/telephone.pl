set serveroutput on;
DECLARE
nouv_tel Telephones;
BEGIN
SELECT numTel INTO nouv_tel FROM Employe WHERE nom = 'Seif';
IF (nouv_tel(2) IS NULL) THEN
DBMS_OUTPUT.PUT_LINE('Deuxième numéro non renseigné (travail)');
ELSE
DBMS_OUTPUT.PUT_LINE('Le numéro de travail L employe Seif est : ' ||
nouv_tel(2));
END IF;
END;
/