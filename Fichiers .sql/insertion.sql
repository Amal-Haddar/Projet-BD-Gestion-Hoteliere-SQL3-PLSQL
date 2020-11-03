DROP DIRECTORY IMAGEFF;
CREATE DIRECTORY IMAGEFF AS 'C:\IMAAGE';

INSERT INTO Categorie VALUES 
    (Categorie_Type(1,'1*','Hébergement économique'));
INSERT INTO Categorie VALUES 
    (Categorie_Type(2,'2*','Hébergement milieu de gamme'));
INSERT INTO Categorie VALUES 
    (Categorie_Type(3,'3*','Hébergement milieu de gamme-supérieur'));
INSERT INTO Categorie VALUES 
    (Categorie_Type(4,'4*','Hébergement haut de gamme'));
INSERT INTO Categorie VALUES 
    (Categorie_Type(5,'5*','Hébergement très haut de gamme'));

INSERT INTO Hotel VALUES 
   (Hotel_Type('Laico','Hammamet',Chambres_Type(Chambre_element(1,1,'Double','vue sur mer',50.5)),
    ORDSYS.ORDImage.init('FILE','IMAGEFF','Laico.jpg'),'20625497', ORDSYS.ORDImageSignature.init(),
    (select REF(C)from Categorie C where C.id_categorie = 2)
   ));
INSERT INTO Hotel VALUES 
   (Hotel_Type('El Hana 2','Hammamet',Chambres_Type(Chambre_element(2,1,'Single','Chambre élégante',30)),
   ORDSYS.ORDImage.init('FILE','IMAGEFF','El Hana 2.jpg'),'20625497', ORDSYS.ORDImageSignature.init(),
   (select REF(C)from Categorie C where C.id_categorie = 3)
   ));
INSERT INTO Hotel VALUES 
   (Hotel_Type('Royal','Sousse',Chambres_Type(Chambre_element(3,30,'Single','Logement confortable',20)),
    ORDSYS.ORDImage.init('FILE','IMAGEFF','Royal.jpg'),'99554225', ORDSYS.ORDImageSignature.init(),
    (select REF(C)from Categorie C where C.id_categorie = 4)
    ));
INSERT INTO Hotel VALUES 
   (Hotel_Type('The Residence','Djerba',Chambres_Type(Chambre_element(2,1,'Single','Chambre élégante',30)),
    ORDSYS.ORDImage.init('FILE','IMAGEFF','theresidence.jpg'),'26300999', ORDSYS.ORDImageSignature.init(),
   (select REF(C)from Categorie C where C.id_categorie = 5)
    ));
INSERT INTO Hotel VALUES 
   (Hotel_Type('El Hana','Tunis',Chambres_Type(Chambre_element(2,1,'Single','Chambre élégante',30)),
    ORDSYS.ORDImage.init('FILE','IMAGEFF','El Hana.jpg'),'71225363', ORDSYS.ORDImageSignature.init(),
   (select REF(C)from Categorie C where C.id_categorie = 1)
   ));


INSERT INTO Employe VALUES 
    (Employe_Type('30225457','Ahmed','Chedli','Ben Arous', 
               Telephones(20888497,20625546),
               'Serveur',
    (select REF(H)from Hotel H where H.nom_hotel = 'Laico')
   ));
INSERT INTO Employe VALUES 
    (Employe_Type('99225999','Arbi','Rami','Gabes', 
               Telephones(20888497, 20369111),
               'Portier',
    (select REF(H)from Hotel H where H.nom_hotel = 'Laico')
   ));
INSERT INTO Employe VALUES 
    (Employe_Type('87225422','Hamza','Mohammed','Tunis', 
               Telephones(90888227,23625546, 20369854),
               'Serveur',
    (select REF(H)from Hotel H where H.nom_hotel = 'Royal')
   ));
INSERT INTO Employe VALUES 
    (Employe_Type('45225434','Salah','Bechikh','Beja', 
               Telephones(24548224,23625546),
               'Cuisinier',
    (select REF(H)from Hotel H where H.nom_hotel = 'The Residence')
   ));
INSERT INTO Employe VALUES 
    (Employe_Type('87225433','Seif','Bechikh','Kairouan', 
               Telephones(24548224,23625546, 21369497),
               'Receptionniste',
    (select REF(H)from Hotel H where H.nom_hotel = 'El Hana')
   ));




INSERT INTO ClientHotel VALUES 
    (Client_Type('87225433','Amal','Haddar','Ben Arous', 
               Telephones(20625497,94625222, 21369111),
               'haddaramal4@gmail.com'
   ));



INSERT INTO Reservation VALUES 
    (Reservation_Type(1,'12/01/2019','12/03/2019', 
    (select REF(C)from ClientHotel C where C.cin = '87225433'),
    (select REF(H)from Hotel H where H.nom_hotel = 'El Hana')          
   ));


