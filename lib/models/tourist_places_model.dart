class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: 'Mountain', image: "images/mountain.png"),
  TouristPlacesModel(name: 'Beach', image: 'images/beach.png'),
  TouristPlacesModel(name: 'Forest', image: 'images/forest.png'),
  TouristPlacesModel(name: 'City', image: 'images/city.png'),
  TouristPlacesModel(name: 'Desert', image: 'images/desert.png'),
];
