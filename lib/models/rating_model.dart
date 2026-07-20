class RatingModel {
  final num rate;
  final num count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String,dynamic> jsonData){
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
