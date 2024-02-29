class Artist {
  final String name;
  final String coverImage;

  Artist({required this.name, required this.coverImage});

  factory Artist.fromJson(Map<String, dynamic> data) => Artist(
        name: data['name'],
        coverImage: data['coverImage'],
      );
}
