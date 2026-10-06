void main() {

print("Palier 1:");

  // TODO 1 : déclarer nom (String), age (int), moyenne (double), inscrit (bool)
String nom="Roua";
int age=21;
double moyenne=16.24;
bool inscrit=true;
  // TODO 2 : déclarer const tva = 0.19 et final anneeCourante = DateTime.now().year
const tva=0.19;
final anneeCourante = DateTime.now().year;
  // TODO 3 : afficher avec l'interpolation
  // print('Je m'appelle $nom, j'ai $age ans.');
print("je m'appelle $nom,j'ai $age ans");
  // TODO 4 : afficher la moyenne arrondie à 2 décimales
  // indice : moyenne.toStringAsFixed(2)
print("Moyenne:${moyenne.toStringAsFixed(2)}");
print("Année:$anneeCourante");
  // TODO 5 : décommenter la ligne suivante, lire l'erreur, puis la commenter
   //tva = 0.20;:Constant variables can't be assigned a value.

print("Palier2:");

String? surnom; // aucune valeur pour l'instant
  String? email = 'ahmed@iset.tn';

  // TODO 1 : afficher le surnom, ou 'Aucun surnom' s'il est null (opérateur ??)
 print(surnom ?? 'Aucun surnom');
  // TODO 2 : afficher la longueur de email sans planter si email est null (?.)
 print(email?.length);
  // TODO 3 : donner une valeur à surnom, puis réafficher le TODO 1
  surnom = 'Doudou';
  print(surnom ?? 'Aucun surnom');
  // TODO 4 : décommenter, lire l'erreur, puis commenter à nouveau
  // String? vide;
  // print(vide!.length);:Null check operator used on a null value

  print(decrire(null));
  print(decrire('Ahmed'));
  
  print("Palier 3:");

print(carre(5));
  print(calculerMoyenne(12, 16));

  afficherFiche(nom: 'Ahmed');
  afficherFiche(nom: 'Sarra', classe: 'DSI3', moyenne: 15.5);

  print("Palier 5:");
    List<int> notes = [12, 8, 15, 17, 9];

  // TODO 1 : ajouter la note 11 à la liste
notes.add(11);
  // TODO 2 : afficher le nombre de notes (propriété length)
print('${notes.length} notes');
  // TODO 3 : afficher chaque note, une par ligne, avec une boucle for
  for (int note in notes) {
    print(note);
  }
  // TODO 4 : créer une liste des notes >= 10 avec where, puis l'afficher
  // indice : notes.where((n) => ...).toList()
 List<int> reussies = notes.where((n) => n >= 10).toList();
  print('Notes >= 10 : $reussies');
  // TODO 5 : calculer et afficher la moyenne
  // indice : une boucle et une variable somme
 int somme = 0;
  for (int note in notes) {
    somme += note;
  }
  double moyenneNotes = somme / notes.length;
  print('Moyenne : ${moyenneNotes.toStringAsFixed(2)}');
  Map<String, int> ages = {'Ahmed': 22, 'Sarra': 21};

  // TODO 6 : ajouter 'Youssef' avec l'âge 23
ages['Youssef'] = 23;
  // TODO 7 : parcourir la map et afficher 'Ahmed a 22 ans'
  // indice : ages.forEach((cle, valeur) { ... });
ages.forEach((cle, valeur) {
    print('$cle a $valeur ans');
  });

  print("Palier 5:");
  final etudiants = [
    Etudiant(nom: 'Ahmed', moyenne: 14.5),
    Etudiant(nom: 'Sarra', moyenne: 9.0),
    Etudiant(nom: 'Youssef', moyenne: 12.0),
  ];

  // TODO 4 : afficher chaque étudiant (une boucle for)
for (final e in etudiants) {
    print(e);
  }
  // TODO 5 : afficher uniquement les admis (moyenne >= 10)
  // indice : etudiants.where((e) => e.estAdmis)
  final admis = etudiants.where((e) => e.estAdmis);
  print('Admis : ${admis.map((e) => e.nom).join(', ')}');
}

class Etudiant {
  // TODO 1 : déclarer final nom (String) et final moyenne (double)
final String nom;
  final double moyenne;
  // TODO 2 : constructeur avec paramètres nommés obligatoires
 Etudiant({required this.nom, required this.moyenne});
  // TODO 3 : getter estAdmis qui renvoie true si moyenne >= 10
  bool get estAdmis => moyenne >= 10;

  // TODO 3 bis : redéfinir toString() pour renvoyer
  // 'Ahmed - 14.5 (admis)' ou 'Sarra - 9.0 (non admis)'
   @override
  String toString() => '$nom - $moyenne (${estAdmis ? 'admis' : 'non admis'})';
}




// TODO 1 : fonction fléchée qui renvoie le carré d'un entier
int carre(int n) => n*n;

// TODO 2 : renvoie la moyenne de deux notes (double)
double calculerMoyenne(double n1, double n2) {
  return (n1+n2)/2;
}

// TODO 3 : compléter la signature
// nom : nommé et obligatoire
// classe : nommé, valeur par défaut 'Non précisée'
// moyenne : nommé, peut être null
void afficherFiche({required String nom,String classe='Non précisée',double?moyenne}) {
  // TODO 4 : afficher
  // Nom : Ahmed | Classe : Non précisée | Moyenne : non renseignée
  print('Nom : $nom | Classe : $classe | Moyenne : ${moyenne ?? 'non renseignée'}');
}

  // TODO 5 : compléter cette fonction
// elle renvoie 'Bonjour X' si nom n'est pas null, sinon 'Bonjour visiteur'
   String decrire(String? nom) {
   return 'Bonjour ${nom ?? 'visiteur'}';
   }