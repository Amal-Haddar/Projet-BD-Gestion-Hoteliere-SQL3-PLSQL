create table Categorie of Categorie_Type(
   constraint pk_categorie primary key(id_categorie));

create table Hotel of Hotel_type(
   constraint pk_hotel primary key(nom_hotel),
   constraint ref_cat ref_Categorie REFERENCES Categorie)
   Nested table Chambre STORE AS chambres_table;

create table Employe of Employe_type(
   constraint pk_employe primary key(cin),
   constraint ref_hot ref_hotel REFERENCES Hotel);

create table ClientHotel of Client_type(
   constraint pk_clientHotel primary key(cin));

create table Reservation of Reservation_type(
   constraint pk_reserv primary key(id_res),
   constraint ref_clt ref_cl REFERENCES ClientHotel,
   constraint ref_hotel ref_h REFERENCES Hotel);