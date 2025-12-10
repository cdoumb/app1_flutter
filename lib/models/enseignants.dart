import 'package:mon_prem_pp/models/personne.dart';
//extends pour hériter d'une autre classe
class Enseignant extends Personne{

	final String matiere;

	Enseignant({
		required super.prenom,
		required super.nom,
		required super.matricule,
		required this.matiere,

	});
//implémentation des méthodes abstraites de la classe Personne
	String getPrenom(){
		return this.prenom;
	}

	String getNom(){
		return this.nom;
	}
}
