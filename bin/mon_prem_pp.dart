import 'package:mon_prem_pp/models/enseignants.dart';
import 'package:mon_prem_pp/models/etudiant.dart';
import 'package:mon_prem_pp/services/api_services.dart';
void main() async { 
  print("Salut le monde");
  // Création d'une instance de la classe Etudiant avec le constructeur par défaut
 // Etudiant etudiant1 = Etudiant("Titi", "Toto", 1234, 15.5);
  // Affichage des attributs de l'étudiant
  // print(etudiant1.prenom);
  //print(etudiant1.nom);
  //print(etudiant1.matricule);
  // On veut afficher les attributs dans une chaîne de caractères
 /* print(
    "${etudiant1.prenom} ${etudiant1.nom} ${etudiant1.matricule} ${etudiant1.moyenne}",
  );*/
  const annee = 2026;
  print("L'année est : $annee");
  // on utilise ${} lorsqu'on veut afficher une expression plus complexe
  //creation d'une autre instance de la classe Etudiant avec le constructeur nommé
  // Etudiant etudiant2 = Etudiant(prenom: "Lili", nom: "Lala", matricule: 5678);
  //Etudiant etudiant3 = Etudiant(matricule: 91011, nom: "Dada", prenom: "Dodo"); //ordre différent
  //print("${etudiant2.prenom} ${etudiant2.nom} ${etudiant2.matricule}");
  //print("${etudiant3.prenom} ${etudiant3.nom} ${etudiant3.matricule}");
  //print(etudiant1.toString()); //appel de la méthode toString()
  Map<String, dynamic> etudiant = {
    "prenom": "Abdoul Razak",
    "nom": "Issaka",
    "matricule": 0072,
    "moyenne": 18,
    "note": 18.75
  };

  /*print("Affichage du map");

  print(etudiant["prenom"]);
  print(etudiant["nom"]);
  print(etudiant["matricule"]);
  print(etudiant["moyenne"]);
  print(etudiant["note"]);*/
  // Création d'une instance de la classe Etudiant à partir du map
 Etudiant e2 = Etudiant(
    prenom: etudiant["prenom"],
    nom: etudiant["nom"],
    matricule: etudiant["matricule"],
    note: etudiant["note"],
  );
  print("Affichage de l'étudiant créé à partir du map");
  
  print(e2.toString());
  print("|" * 72);
  print("Methode fromMap du map");
  Etudiant e3 = Etudiant.fromMap(etudiant);
  e3.moyenne = 19;
  print(e3.toString());
 List<Map<String, dynamic>> etudiants = [
    {
      "prenom": "Abdoul Razack",
      "nom": "ISSAKA",
      "matricule": 4000,
      "moyenne": 18,
      "note": 18.75,
    },
    {
      "prenom": "El Hadj",
      "nom": "Faye",
      "matricule": 9000,
      "moyenne": 19,
      "note": 16.75,
    },
  ];

  print("|" * 72);
  print("Utilisation de FOREACH");
  etudiants.forEach((e) {
    print(Etudiant.fromMap(e));
  });

  print("|" * 72);
  print("Utlisation de FOR IN");
  var resultat;
  for (var e in etudiants) {
    print(Etudiant.fromMap(e).toString());
  }


  final result = await Apiservices.getData("https://jsonplaceholder.typicode.com/users");

List<Map<String, dynamic>> value = List<Map<String, dynamic>>.from(result);

	for(var e in value){
		print("${e["name"]} ${e["username"]} ${e["email"]}");
	}

  Enseignant en = Enseignant(
		matiere: "IA", 
		prenom: "Moustapha", 	
		nom: "Der",           
		matricule: 0009, 
  );
}   

