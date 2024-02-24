class productModel {
  String? id;
  String? thumb;
  String? priceFormated;
  String? priceWithoutCurrency;
  double? price;
  String? name;
  String? enName;
  String? description;
  String? sku;
  String? isbn;
  bool? hasOption;
  int? categoryId;
  int? quantity;
  List<Null>? special;
  String? manufacturer;
  bool? isNew;
  bool? isExclusive;
  int? order;
  Null? score;
  String? eventPrice;
  double? rating;
  String? totalReviews;
  String? seoUrlAr;
  String? seoUrlEn;
  String? shareUrl;
  List<Options>? options;
  List<CategoryHierarchy>? categoryHierarchy;

  productModel(
      {this.id,
      this.thumb,
      this.priceFormated,
      this.priceWithoutCurrency,
      this.price,
      this.name,
      this.enName,
      this.description,
      this.sku,
      this.isbn,
      this.hasOption,
      this.categoryId,
      this.quantity,
      this.special,
      this.manufacturer,
      this.isNew,
      this.isExclusive,
      this.order,
      this.score,
      this.eventPrice,
      this.rating,
      this.totalReviews,
      this.seoUrlAr,
      this.seoUrlEn,
      this.shareUrl,
      this.options,
      this.categoryHierarchy});

  productModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    thumb = json['thumb'];
    priceFormated = json['price_formated'];
    priceWithoutCurrency = json['priceWithoutCurrency'];
    price = json['price'];
    name = json['name'];
    enName = json['en_name'];
    description = json['description'];
    sku = json['sku'];
    isbn = json['isbn'];
    hasOption = json['has_option'];
    categoryId = json['category_id'];
    quantity = json['quantity'];
    if (json['special'] != null) {
      special = <Null>[];
      json['special'].forEach((v) {
        // special!.add(Null.fromJson(v));
      });
    }
    manufacturer = json['manufacturer'];
    isNew = json['is_new'];
    isExclusive = json['is_exclusive'];
    order = json['order'];
    score = json['score'];
    eventPrice = json['event_price'];
    rating = json['rating'];
    totalReviews = json['total_reviews'];
    seoUrlAr = json['seo_url_ar'];
    seoUrlEn = json['seo_url_en'];
    shareUrl = json['share_url'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options!.add(new Options.fromJson(v));
      });
    }
    if (json['category_hierarchy'] != null) {
      categoryHierarchy = <CategoryHierarchy>[];
      json['category_hierarchy'].forEach((v) {
        categoryHierarchy!.add(new CategoryHierarchy.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['thumb'] = this.thumb;
    data['price_formated'] = this.priceFormated;
    data['priceWithoutCurrency'] = this.priceWithoutCurrency;
    data['price'] = this.price;
    data['name'] = this.name;
    data['en_name'] = this.enName;
    data['description'] = this.description;
    data['sku'] = this.sku;
    data['isbn'] = this.isbn;
    data['has_option'] = this.hasOption;
    data['category_id'] = this.categoryId;
    data['quantity'] = this.quantity;
    if (this.special != null) {
      // data['special'] = this.special!.map((v) => v.toJson()).toList();
    }
    data['manufacturer'] = this.manufacturer;
    data['is_new'] = this.isNew;
    data['is_exclusive'] = this.isExclusive;
    data['order'] = this.order;
    data['score'] = this.score;
    data['event_price'] = this.eventPrice;
    data['rating'] = this.rating;
    data['total_reviews'] = this.totalReviews;
    data['seo_url_ar'] = this.seoUrlAr;
    data['seo_url_en'] = this.seoUrlEn;
    data['share_url'] = this.shareUrl;
    if (this.options != null) {
      data['options'] = this.options!.map((v) => v.toJson()).toList();
    }
    if (this.categoryHierarchy != null) {
      data['category_hierarchy'] =
          this.categoryHierarchy!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Options {
  int? optionId;
  int? productOptionId;
  String? type;
  int? required;
  String? name;
  String? enName;
  List<OptionValue>? optionValue;

  Options(
      {this.optionId,
      this.productOptionId,
      this.type,
      this.required,
      this.name,
      this.enName,
      this.optionValue});

  Options.fromJson(Map<String, dynamic> json) {
    optionId = json['option_id'];
    productOptionId = json['product_option_id'];
    type = json['type'];
    required = json['required'];
    name = json['name'];
    enName = json['en_name'];
    if (json['option_value'] != null) {
      optionValue = <OptionValue>[];
      json['option_value'].forEach((v) {
        optionValue!.add(new OptionValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['option_id'] = this.optionId;
    data['product_option_id'] = this.productOptionId;
    data['type'] = this.type;
    data['required'] = this.required;
    data['name'] = this.name;
    data['en_name'] = this.enName;
    if (this.optionValue != null) {
      data['option_value'] = this.optionValue!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OptionValue {
  int? productOptionVariantId;
  int? quantity;
  String? image;
  String? hexColor;
  String? sku;
  String? price;
  String? priceFormated;
  String? eventPrice;
  String? name;
  String? enName;

  OptionValue(
      {this.productOptionVariantId,
      this.quantity,
      this.image,
      this.hexColor,
      this.sku,
      this.price,
      this.priceFormated,
      this.eventPrice,
      this.name,
      this.enName});

  OptionValue.fromJson(Map<String, dynamic> json) {
    productOptionVariantId = json['product_option_variant_id'];
    quantity = json['quantity'];
    image = json['image'];
    hexColor = json['hex_color'];
    sku = json['sku'];
    price = json['price'];
    priceFormated = json['price_formated'];
    eventPrice = json['event_price'];
    name = json['name'];
    enName = json['en_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_option_variant_id'] = this.productOptionVariantId;
    data['quantity'] = this.quantity;
    data['image'] = this.image;
    data['hex_color'] = this.hexColor;
    data['sku'] = this.sku;
    data['price'] = this.price;
    data['price_formated'] = this.priceFormated;
    data['event_price'] = this.eventPrice;
    data['name'] = this.name;
    data['en_name'] = this.enName;
    return data;
  }
}

class CategoryHierarchy {
  int? categoryId;
  String? name;
  String? enName;

  CategoryHierarchy({this.categoryId, this.name, this.enName});

  CategoryHierarchy.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    name = json['name'];
    enName = json['en_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['en_name'] = this.enName;
    return data;
  }
}
