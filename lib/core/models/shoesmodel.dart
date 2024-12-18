class ShoesModel {
  String shoesImage;
  String shoesName;
  double shoesPrice;
  bool isFavorite;

  ShoesModel({
    required this.shoesImage,
    required this.shoesName,
    required this.shoesPrice,
    this.isFavorite = false,
  });

  factory ShoesModel.fromjson(jsonData) {
    return ShoesModel(
      shoesImage: "",
      shoesName: '',
      shoesPrice: 1,
      isFavorite: false,
    );
  }
}

List<ShoesModel> items = [
  ShoesModel(
    shoesImage: "assets/images/nike1.png",
    shoesName: "Jordan Chicago",
    shoesPrice: 150,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike2.png",
    shoesName: "Sabrina 2 By Courtney Vandersloot",
    shoesPrice: 600,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike3.png",
    shoesName: "Air Jordan 4 RM",
    shoesPrice: 400,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike3.png",
    shoesName: "Air Jordan 4 RM",
    shoesPrice: 400,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike3.png",
    shoesName: "Air Jordan 4 RM",
    shoesPrice: 400,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike3.png",
    shoesName: "Air Jordan 4 RM",
    shoesPrice: 400,
  ),
  ShoesModel(
    shoesImage: "assets/images/nike3.png",
    shoesName: "Air Jordan 4 RM",
    shoesPrice: 400,
  ),
];
