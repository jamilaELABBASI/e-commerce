class PopularProductModel {
  String titre;
  String description;
  String image;
  double ancienPrix;
  double nouveauPrix;

  // Constructeur pour initialiser les valeurs
  PopularProductModel({
    required this.titre,
    required this.description,
    required this.image,
    required this.ancienPrix,
    required this.nouveauPrix,
  });

  // Méthode pour afficher un objet Produit sous forme de String (facultatif)
  @override
  String toString() {
    return 'Produit{titre: $titre, description: $description, image: $image, ancienPrix: $ancienPrix, nouveauPrix: $nouveauPrix}';
  }

  // Méthode pour convertir un objet Produit en map (pour sérialisation ou stockage)
  Map<String, dynamic> toMap() {
    return {
      'titre': titre,
      'description': description,
      'image': image,
      'ancienPrix': ancienPrix,
      'nouveauPrix': nouveauPrix,
    };
  }

  // Méthode pour créer un objet Produit à partir d'un map (pour désérialisation)
  factory PopularProductModel.fromMap(Map<String, dynamic> map) {
    return PopularProductModel(
      titre: map['titre'],
      description: map['description'],
      image: map['image'],
      ancienPrix: map['ancienPrix'],
      nouveauPrix: map['nouveauPrix'],
    );
  }
}
