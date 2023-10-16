class RecommendationModel {
  final String urlImage;
  final double rating;
  final String location;

  RecommendationModel({
    required this.urlImage,
    required this.rating,
    required this.location,
  });
}

List<RecommendationModel> recommendedplaces = [
  RecommendationModel(
      urlImage: 'images/places/place1.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
  RecommendationModel(
      urlImage: 'images/places/place2.jpg', rating: 4.4, location: 'Nepal'),
  RecommendationModel(
      urlImage: 'images/places/place3.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
  RecommendationModel(
      urlImage: 'images/places/place4.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
  RecommendationModel(
      urlImage: 'images/places/place5.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
  RecommendationModel(
      urlImage: 'images/places/place6.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
  RecommendationModel(
      urlImage: 'images/places/place7.jpg',
      rating: 4.4,
      location: 'St. Regis Bora Bora'),
];
