# Database

### la base de donnée consiste à gerer un formation 

### la base de donnée n'est pas complet juste on à créer 4 tables pour faire de test sur les clés etrangeres
Tables_in_GestionFomation |
+---------------------------+
| assoEnFor                 |
| enseignant                |
| etudiant                  |
| formation                 |
| salle   

# prérequis pour utiliser ce programme 
    -installer mysql-server
    -se connecter sur le server mysql
    -tapez la commande suivant:
    
    // creation de base de donnée de nom gestion_Formation
    
          -create database gestion_Formation;
          
              
    // selectionner la base de donnée 
          -use gestion_Formation;
          
    // importation de nos tables avec les valeurs qui sont dans le fichier GestionFormation.sql
    
          - source /chemin du base de donnée/GestionFormation.sql
          
    // verifiée si les tables sont deja importées
           -show tables;
                Tables_in_GestionFomation |
                 +---------------------------+
                 | assoEnFor                 |
                 | enseignant                |
                 | etudiant                  |
                 | formation                 |
                 | salle  
            
  //tapez la commande suivant     
 -select etudiant.*,formation.* from etudiant,formation where etudiant.id_for=formation.id_for;
              
              
+----+----------+-----------+--------+--------+--------+--------------


#Félicitation

     
     
     
