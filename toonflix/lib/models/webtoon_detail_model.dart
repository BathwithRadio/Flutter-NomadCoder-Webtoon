class WebtoonDetailModel {
  //
  final String title, about, gender, age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        about = json['about'],
        gender = json['gender'],
        age = json['age'];
}
