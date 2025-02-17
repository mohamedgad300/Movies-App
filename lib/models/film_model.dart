class FilmModel {
  final String title;
  final String description;
  String image;
  double rate;

  FilmModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.rate});
}

List<FilmModel> filmsList = [
  FilmModel(title: "Movie 1", description: "Description of Movie 1", image: "assets/images/film1.png", rate: 8),
  FilmModel(title: "Movie 2", description: "Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346", image: "assets/images/film2.jpeg", rate: 7.7),
  FilmModel(title: "Movie 3", description: "Description of Movie 3", image: "assets/images/film3.jpeg", rate: 8.8),
  FilmModel(title: "Movie 4", description: "Description of Movie 4", image: "assets/images/film4.png", rate: 7.7),
  FilmModel(title: "Movie 5", description: "Description of Movie 5", image: "assets/images/img.png", rate: 7.0),
  FilmModel(title: "Movie 6", description: "Description of Movie 6", image: "assets/images/img_1.png", rate: 7.2),
  FilmModel(title: "Movie 7", description: "Description of Movie 7", image: "assets/images/img_2.png", rate: 9.0),
  FilmModel(title: "Movie 8", description: "Description of Movie 8", image: "assets/images/img_3.png", rate: 8.0),
];
