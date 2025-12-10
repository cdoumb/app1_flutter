// Import du package HTTP (il faut l'ajouter dans pubspec.yaml)
import 'package:http/http.dart' as http;
import 'dart:convert'; // Pour jsonDecode
class Apiservices{
	static dynamic getData(String url) async{
		try{
			var apichaine = "https://jsonplaceholder.typicode.com/users"; //pas besoin vu que la ligne juste ne bas le recup avec le truc url
			var response = await http.get(Uri.parse(url));//parse prend la valeur avant le .com et le separe de la partie apres .com
			//await pour la recup de trucs qui peuvent prendre du temps a l'aide d'une fonction asynchrone. Grace a await, tant que la variable response ne reçoit pas de résultats de la part de get, on ne passera pas a la suite. Cela permet de tout récup avant de continuer.

			if(response.statusCode == 200){
				var value = jsonDecode(response.body); //permet de convertir la valeur recuperee en valeur correspondant à qq chose de notre langage de programmation, sachant qu'à la base, on avait des chaines de caracteres
				return value;
			}else{
				throw("Code :{response.statusCode} Raison : ${response.reasonPhrase}");
			}
	
		}catch(e, stackTrace){
			print("$e $stackTrace");
		}	
	}
}