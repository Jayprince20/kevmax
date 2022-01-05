import 'dart:convert';

CoffeeModel coffeeModelFromJson(String str) =>
    CoffeeModel.fromJson(json.decode(str));

String coffeeModelToJson(CoffeeModel data) => json.encode(data.toJson());

class CoffeeModel {
  CoffeeModel({
    this.total,
    this.pages,
    this.currentPage,
    this.perPage,
    this.data,
  });

  final int? total;
  final int? pages;
  final int? currentPage;
  final int? perPage;
  final List<Datums>? data;

  factory CoffeeModel.fromJson(Map<String, dynamic> json) => CoffeeModel(
        total: json["total"],
        pages: json["pages"],
        currentPage: json["current_page"],
        perPage: json["per_page"],
        data: List<Datums>.from(json["data"].map((x) => Datums.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "pages": pages,
        "current_page": currentPage,
        "per_page": perPage,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datums {
  Datums({
    this.id,
    this.title,
    this.description,
    this.price,
    this.favoris,
    this.imageUrl,
    this.star,
    this.category,
  });

  final int? id;
  final String? title;
  final String? description;
  final double? price;
  final bool? favoris;
  final String? imageUrl;
  final double? star;
  final Category? category;

  factory Datums.fromJson(Map<String, dynamic> json) => Datums(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        favoris: json["favoris"],
        imageUrl: json["image_url"],
        star: json["star"].toDouble(),
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "favoris": favoris,
        "image_url": imageUrl,
        "star": star,
        "category": category!.toJson(),
      };
}

class Category {
  Category({
    this.title,
    this.id,
  });

  final String? title;
  final int? id;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
      };
}
