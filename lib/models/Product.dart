import 'dart:convert';

Product productFromJson(String str) => Product.formJson(json.decode(str));
String productToJson(Product data) => json.encode(data.toJson());

class Product {
  String image;
  String id;
  String name;
  String price;
  String description;
  String status;
  bool isFavorite;

  Product({
    required this.image,
    required this.id,
    required this.name,
    required this.isFavorite,
    required this.price,
    required this.description,
    required this.status,
    
  });
  factory Product.formJson(Map<String, dynamic> json) => Product(
    id : json["id"],
    name : json["name"],
    description : json["description"],
    image : json["image"],
    isFavorite : false,
    price : json["price"],
    status: json["status"],
    
  );

  Map<String, dynamic> toJson() => {
    "id" :id,
    "name":name,
    "description":description,
    "isFavorite":isFavorite,
    "price":price,
    status:status
  };
}
