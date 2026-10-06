void main() {
  final cours = [
    Cours(nom: 'Programmation', coefficient: 3, note: 14.5),
    Cours(nom: 'francais', coefficient: 1, note: 12.0),
    Cours(nom: 'Réseaux', coefficient: 2, note: 16.0),
    Cours(nom: 'Anglais', coefficient: 1, note: 11.5),
  ];

  // Moyenne pondérée 
  double sommeNotes = 0;
  int sommeCoefficients = 0;
  for (final c in cours) {
    sommeNotes += c.note * c.coefficient;
    sommeCoefficients += c.coefficient;
  }
  double moyennePonderee = sommeNotes / sommeCoefficients;
  print('Moyenne pondérée : ${moyennePonderee.toStringAsFixed(2)}');

  // Cours ayant la meilleure note
  Cours meilleur = cours[0];
  for (final c in cours) {
    if (c.note > meilleur.note) {
      meilleur = c;
    }
  }
  print('Meilleur cours : ${meilleur.nom} (${meilleur.note})');
}

class Cours {
  final String nom;
  final int coefficient;
  final double note;

  Cours({required this.nom, required this.coefficient, required this.note});
}