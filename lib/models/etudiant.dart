class Etudiant {
  //les attributs de la classe Etudiant
  //On utilise le mot clé late pour indiquer que les variables seront initialisées plus tard
  late String prenom;
  late String nom;
  late int matricule;
  late double note;
  // Etudiant(this.prenom, this.nom, this.matricule);
 late double moyenne = 0.0; //initialisation de la moyenne à 0.0 
 // Etudiant(this.prenom, this.nom, this.matricule, this.moyenne, this.note);
  // les getters et setters pour l'attribut moyenne enfin de contrôler son accès
  double get _moyenne {
    return moyenne;
  }

  set _moyenne(double note) {
    //si on veut ajouter un contrôle sur la valeur de la moyenne
    if (note >= 0 && note <= 20) { 
      moyenne = note;
    } else {
      print("La moyenne doit être entre 0 et 20");
    }
  }
double get _note {
    return note;
  }
// ou  double get moyenne => _moyenne;
  set _note(double note1) {
    //si on veut ajouter un contrôle sur la valeur de la moyenne
    if (note1 >= 0 && note <= 20) { 
      note = note1;
    } else {
      print("La moyenne doit être entre 0 et 20");
    }
  }
  //un constructeur nommé avec des paramètres nommés les accolades {} les différencient des paramètres positionnels
  //on pourrait attribuer les valeurs dans l'ordre qu'on veut contrairement au constructeur par défaut
   Etudiant({
	//required indique que les paramètres sont obligatoires
	required this.prenom,
	required this.nom,
	required this.matricule,
  required this.note,
  });

//@override //redéfinition de la méthode toString() pour afficher les informations de l'étudiant
 @override
  String toString() {
    return "$prenom $nom ($matricule) - Note: $note - Moyenne: $moyenne";
  }
  // creation d'une méthode pour automatiser la création d'une instance de Etudiant à partir d'un map
   static Etudiant fromMap(Map<String, dynamic> et) {
    return Etudiant(
      prenom: et["prenom"],
      nom: et["nom"],
      matricule: et["matricule"],
      note: et["note"],
    );
   }

}
