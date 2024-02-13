class Categorymodel {
  String id;
  String image;

  Categorymodel({
    required this.id,
    required this.image,
  });

  factory Categorymodel.fromJson(Map<String, dynamic> json) {
    return Categorymodel(
      id: json["id"] as String,
      image: json["image"] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
