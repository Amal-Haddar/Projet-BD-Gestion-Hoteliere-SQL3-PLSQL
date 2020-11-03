SELECT H.nom_hotel , H.ref_Categorie.nombre_etoile
FROM Hotel H;


SELECT H.nom_hotel , H.ref_Categorie.nombre_etoile
FROM Hotel H
WHERE H.nom_hotel = 'Laico';


SELECT H.nom_hotel, H.image 
FROM Hotel H
WHERE H.nom_hotel = 'El Hana';


SELECT e.nom , t.* from Employe e , table (e.numTel) t;


SELECT emp.ref_hotel.nom_hotel , emp.nom , COUNT(*) nbr
FROM Employe emp
GROUP BY (emp.ref_hotel.nom_hotel , emp.nom);


SELECT emp.nom , emp.poste
FROM Employe emp;


SELECT R.DateD , R.DateF , R.ref_cl.nom , R.ref_h.nom_hotel
FROM Reservation R;