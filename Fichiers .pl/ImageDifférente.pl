set serveroutput on;
DECLARE
t_image ORDSYS.ORDImage;
c_image ORDSYS.ORDImage;
image_sig ORDSYS.ORDImageSignature;
compare_sig ORDSYS.ORDImageSignature;
score FLOAT;



BEGIN
SELECT h.image, h.signature
INTO t_image, image_sig
FROM Hotel h
WHERE h.nom_hotel = 'Laico' FOR UPDATE;


image_sig.generateSignature(t_image);
UPDATE Hotel h SET
h.signature = image_sig
WHERE h.nom_hotel ='Laico';

SELECT h.image, h.signature INTO c_image,
compare_sig
FROM Hotel h
WHERE h.nom_hotel ='El Hana' FOR UPDATE;


compare_sig.generateSignature(c_image);
UPDATE Hotel h SET 
          h.signature = compare_sig
WHERE h.nom_hotel ='El Hana';

SELECT h.image, h.signature INTO t_image,
image_sig
FROM Hotel h
WHERE h.nom_hotel ='Laico';

SELECT h.image, h.signature INTO c_image,
compare_sig
FROM Hotel h
WHERE h.nom_hotel ='El Hana';



score:=ORDSYS.ORDImageSignature.evaluateScore(image_sig,
compare_sig,'color=1.0,texture=0,shape=0,location=0');
DBMS_OUTPUT.PUT_LINE('Deux images différentes avec un score de ' || score);
END;
/