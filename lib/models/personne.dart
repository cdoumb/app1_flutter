//abstract pour ne pas pouvoir instancier cette classe directement ou pour forcer les classes enfants à implémenter certaines méthodes
abstract class Personne{
	final String prenom;
	final String nom;
	final int matricule;

	Personne({
		required this.prenom,
		required this.nom,
		required this.matricule,
	});

	String getPrenom();
	String getNom();

}