class ProductModel {
  int? stauts;
  int? limit;
  int? count;
  List<Data>? data;

  ProductModel({this.stauts, this.limit, this.count, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    stauts = json['stauts'];
    limit = json['limit'];
    count = json['count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stauts'] = stauts;
    data['limit'] = limit;
    data['count'] = count;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? slug;
  String? skuId;
  int? categoryId;
  int? authorId;
  String? discountPercent;
  String? price;
  String? shortDescription;
  String? description;
  String? thumbnail;
  int? stock;
  String? rating;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.title,
      this.slug,
      this.skuId,
      this.categoryId,
      this.authorId,
      this.discountPercent,
      this.price,
      this.shortDescription,
      this.description,
      this.thumbnail,
      this.stock,
      this.rating,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    skuId = json['sku_id'];
    categoryId = json['category_id'];
    authorId = json['author_id'];
    discountPercent = json['discount_percent'];
    price = json['price'];
    shortDescription = json['short_description'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    stock = json['stock'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['slug'] = slug;
    data['sku_id'] = skuId;
    data['category_id'] = categoryId;
    data['author_id'] = authorId;
    data['discount_percent'] = discountPercent;
    data['price'] = price;
    data['short_description'] = shortDescription;
    data['description'] = description;
    data['thumbnail'] = thumbnail;
    data['stock'] = stock;
    data['rating'] = rating;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
