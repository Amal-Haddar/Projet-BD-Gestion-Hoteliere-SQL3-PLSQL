set serveroutput on;
DECLARE
nouv_tel Telephones;
BEGIN
SELECT numTel INTO nouv_tel FROM Employe WHERE nom = 'Seif';
IF (nouv_tel(2) IS NULL) THEN
DBMS_OUTPUT.PUT_LINE('Deuxi�me num�ro non renseign� (travail)');
ELSE
DBMS_OUTPUT.PUT_LINE('Le num�ro de travail L employe Seif est : ' ||
nouv_tel(2));
END IF;
END;
/