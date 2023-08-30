class bord {
  String image;
  String title;
  String discription;

  bord({required this.image, required this.title, required this.discription});
}

List<bord> page = [
  bord(
      title: 'Trouvez des médicaments rapidement',
      image: 'assets/im2.png',
      discription: "Utilisez la recherche pour trouver rapidement des médicaments et des pharmacies."
  ),
  bord(
      title: 'Consultez les détails des médicaments',
      image: 'assets/im1.png',
      discription: "Consultez les informations détaillées sur les médicaments, y compris les posologies et les effets secondaires."
  ),
  bord(
      title: 'Trouvez une pharmacie à proximité',
      image: 'assets/im3.png',
      discription: "Utilisez notre carte pour trouver les pharmacies les plus proches de chez vous."
  ),
];