
<?php

    class Crud{ // Class = Object - Elle commence toujours par une Majuscule

        /*
        ** Propriété = Variable - Toujours en minuscule (ex: public $donnee_a_enregistrer).
        ** public => Utilisable dans la class et par les instances.
        ** private => Utilisable UNIQUEMENT dans la class, les instances n'y ont pas accées.
        */
        private $host;
        private $user;
        private $password;
        private $database;
        private $mysqli;
        public $table;

        // Méthode = Fonction - Toujours en minuscule (ex: public function allezAuParc(){} )

        // Le "__construct" est appeller lors de la création d'une nouvelle instance AUTOMATIQUEMENT
        public function __construct($newHost, $newUser, $newPassword, $newDatabase){
            $this->host = $newHost;
            $this->user = $newUser;
            $this->password = $newPassword;
            $this->database = $newDatabase;
            $this->mysqli = new mysqli($this->host, $this->user, $this->password, $this->database);
        }





        // FUNCTION CRUD
        public function create($champs, $newTable){
           // INSERT
            $insert = ""; // init variable insert
            foreach($champs as $key => $valeu){ // Boucle sur l'array  
                $insert .= $key.", "; // Concatenation de la chaine de caractere $insert avec ', '
            }
            $insert = rtrim($insert, ", "); // Suppression du dernier ', '

            // VALEUR 
            $data = "";
            foreach($champs as $key => $valeu){ 
                $data .= "'" . $valeu . "', "; 
            }
            $data = rtrim($data, ", ");

            $result = $this->mysqli->query("INSERT INTO ".$newTable." (".$insert.") VALUES (".$data.")"); // Execution de la requet
        }

        public function read($champs, $newTable, $condition){
            // SELECT
            $select = ""; // init variable select
            foreach($champs as $indice){ // Boucle sur l'array  
                $select .= $indice.", "; // Concatenation de la chaine de caractere $select avec ', '
            }
            $select = rtrim($select, ", "); // Suppression du dernier ', '

            // WHERE 
            $where = ""; // init variable where
            foreach($condition as $key => $valeu){ // Boucle sur l'array afin de récupérer le champs($key) et la valeu associer ($valeu)
                $where .= $key." = '".$valeu."' AND "; // Concatenation de la chaine de caractere $where avec ' = ' Et a la fin le 'AND'
            }
            $where = rtrim($where, " AND "); // Suppression du dernier ' AND '
            
            $result = $this->mysqli->query("SELECT ".$select." FROM ".$newTable." WHERE ".$where); // Execution de la requet
            $tableau = $result->fetch_all(MYSQLI_ASSOC); // Trie des données par association
            return $tableau; // Retour des données
        }

        public function update($champs, $newTable, $condition){
            // VALEUR 
            $set = "";
            foreach($champs as $key => $valeu){ 
                $set .= $key." = '".$valeu."', ";
            }
            $set = rtrim($set, ", ");

            // WHERE 
            $where = ""; // init variable where
            foreach($condition as $key => $valeu){ // Boucle sur l'array afin de récupérer le champs($key) et la valeu associer ($valeu)
                $where .= $key." = '".$valeu."' AND "; // Concatenation de la chaine de caractere $where avec ' = ' Et a la fin le 'AND'
            }
            $where = rtrim($where, " AND "); // Suppression du dernier ' AND '

            $result = $this->mysqli->query("UPDATE ".$newTable." SET ".$set." WHERE ".$where); // Execution de la requet
        }

        public function delete($newTable, $condition){
            // WHERE 
            $where = ""; // init variable where
            foreach($condition as $key => $valeu){ // Boucle sur l'array afin de récupérer le champs($key) et la valeu associer ($valeu)
                $where .= $key." = '".$valeu."' AND "; // Concatenation de la chaine de caractere $where avec ' = ' Et a la fin le 'AND'
            }
            $where = rtrim($where, " AND "); // Suppression du dernier ' AND '
            $result = $this->mysqli->query("DELETE FROM ".$newTable." WHERE ".$where); // Execution de la requet

        }
        // FIN FUNCTION CRUD






        // Le "__destruct" est appeller AUTOMATIQUEMENT à la fin du code.
        function __destruct(){
            $this->mysqli->close();
        }
    }








    /*
    ** Instace = new de la class (Nous affectons les variables et les fonctions public à notre varible)
    ** Pour faire appelle à une variablze ou un fonction, nous "Aiguillons" grace à une "->" vers la ressource(les variables et les fonctions)
    */
    // $mydb = new Crud("localhost", "root", "", "projetapp");
    // $data = array("name"=>"politics", "slug"=>"politics", "image"=>"test.jpg");
    // $mydb->create($data, "category");