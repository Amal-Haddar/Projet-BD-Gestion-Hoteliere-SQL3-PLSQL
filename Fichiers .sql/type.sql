create or replace type Categorie_Type force As Object(
   id_categorie number(2),
   nombre_etoile varchar(30),
   hebergement varchar(200));
/


create or replace type Chambre_element force AS OBJECT (
   id_ch number(3),
   num_ch number(3),
   type_ch varchar(10),
   description_ch varchar(50),
   prix decimal(3.2)
 )
/

create or replace TYPE Chambres_Type force AS TABLE OF Chambre_element
/

create or replace type Hotel_Type force As Object(
   nom_hotel varchar(30),
   adresse varchar(10),
   Chambre Chambres_Type,
   image ORDSYS.ORDIMAGE,
   tel varchar(8),
   signature ORDSYS.ORDImageSignature,
   ref_Categorie REF Categorie_Type);
/

create or replace type Telephones force As varray(3) of number(8);
/

create or replace type Personne_Type force As Object(
   cin varchar(8),
   nom varchar(20),
   prenom varchar(20),
   adresse varchar(30),
   numTel Telephones)
NOT FINAL;
/

create or replace type Employe_Type force under Personne_Type (
  poste varchar(20),
  ref_hotel REF Hotel_type);
/

create or replace type Client_Type force under Personne_Type (
   mail varchar(50));
/

create or replace type Reservation_Type force As Object(
   id_res number(3),
   dateD date,
   dateF date,
   ref_cl REF Client_Type,
   ref_h REF Hotel_type);
/


