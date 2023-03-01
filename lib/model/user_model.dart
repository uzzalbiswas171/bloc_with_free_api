class UserModel {
  String? _status;
  Data? _data;

  UserModel({String? status, Data? data}) {
    if (status != null) {
      this._status = status;
    }
    if (data != null) {
      this._data = data;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  UserModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this._status;
    if (this._data != null) {
      data['data'] = this._data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Null>? _categories;
  Products? _products;

  Data({List<Null>? categories, Products? products}) {
    if (categories != null) {
      this._categories = categories;
    }
    if (products != null) {
      this._products = products;
    }
  }

  List<Null>? get categories => _categories;
  set categories(List<Null>? categories) => _categories = categories;
  Products? get products => _products;
  set products(Products? products) => _products = products;

  Data.fromJson(Map<String, dynamic> json) {

    _products = json['products'] != null
        ? Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this._products != null) {
      data['products'] = this._products!.toJson();
    }
    return data;
  }
}

class Products {
  int? _count;
  String? _next;
  String? _previous;
  List<Results>? _results;

  Products(
      {int? count, String? next, String? previous, List<Results>? results}) {
    if (count != null) {
      this._count = count;
    }
    if (next != null) {
      this._next = next;
    }
    if (previous != null) {
      this._previous = previous;
    }
    if (results != null) {
      this._results = results;
    }
  }

  int? get count => _count;
  set count(int? count) => _count = count;
  String? get next => _next;
  set next(String? next) => _next = next;
  String? get previous => _previous;
  set previous(String? previous) => _previous = previous;
  List<Results>? get results => _results;
  set results(List<Results>? results) => _results = results;

  Products.fromJson(Map<String, dynamic> json) {
    _count = json['count'];
    _next = json['next'];
    _previous = json['previous'];
    if (json['results'] != null) {
      _results = <Results>[];
      json['results'].forEach((v) {
        _results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = this._count;
    data['next'] = this._next;
    data['previous'] = this._previous;
    if (this._results != null) {
      data['results'] = this._results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? _id;
  Brand? _brand;
  String? _image;
  Charge? _charge;
  List<Images>? _images;
  String? _slug;
  String? _productName;
  String? _model;
  String? _commissionType;
  String? _amount;
  String? _tag;
  String? _description;
  String? _note;
  String? _embaddedVideoLink;
  int? _maximumOrder;
  int? _stock;
  bool? _isBackOrder;
  String? _specification;
  String? _warranty;
  bool? _preOrder;
  int? _productReview;
  bool? _isSeller;
  bool? _isPhone;
  bool? _willShowEmi;
  Null? _badge;
  bool? _isActive;
  String? _sackEquivalent;
  String? _createdAt;
  String? _updatedAt;
  Null? _language;
  String? _seller;
  Null? _combo;
  String? _createdBy;
  Null? _updatedBy;
  List<int>? _category;
  List<Null>? _relatedProduct;
  List<Null>? _filterValue;
  List<Null>? _distributors;

  Results(
      {int? id,
        Brand? brand,
        String? image,
        Charge? charge,
        List<Images>? images,
        String? slug,
        String? productName,
        String? model,
        String? commissionType,
        String? amount,
        String? tag,
        String? description,
        String? note,
        String? embaddedVideoLink,
        int? maximumOrder,
        int? stock,
        bool? isBackOrder,
        String? specification,
        String? warranty,
        bool? preOrder,
        int? productReview,
        bool? isSeller,
        bool? isPhone,
        bool? willShowEmi,
        Null? badge,
        bool? isActive,
        String? sackEquivalent,
        String? createdAt,
        String? updatedAt,
        Null? language,
        String? seller,
        Null? combo,
        String? createdBy,
        Null? updatedBy,
        List<int>? category,
        List<Null>? relatedProduct,
        List<Null>? filterValue,
        List<Null>? distributors}) {
    if (id != null) {
      this._id = id;
    }
    if (brand != null) {
      this._brand = brand;
    }
    if (image != null) {
      this._image = image;
    }
    if (charge != null) {
      this._charge = charge;
    }
    if (images != null) {
      this._images = images;
    }
    if (slug != null) {
      this._slug = slug;
    }
    if (productName != null) {
      this._productName = productName;
    }
    if (model != null) {
      this._model = model;
    }
    if (commissionType != null) {
      this._commissionType = commissionType;
    }
    if (amount != null) {
      this._amount = amount;
    }
    if (tag != null) {
      this._tag = tag;
    }
    if (description != null) {
      this._description = description;
    }
    if (note != null) {
      this._note = note;
    }
    if (embaddedVideoLink != null) {
      this._embaddedVideoLink = embaddedVideoLink;
    }
    if (maximumOrder != null) {
      this._maximumOrder = maximumOrder;
    }
    if (stock != null) {
      this._stock = stock;
    }
    if (isBackOrder != null) {
      this._isBackOrder = isBackOrder;
    }
    if (specification != null) {
      this._specification = specification;
    }
    if (warranty != null) {
      this._warranty = warranty;
    }
    if (preOrder != null) {
      this._preOrder = preOrder;
    }
    if (productReview != null) {
      this._productReview = productReview;
    }
    if (isSeller != null) {
      this._isSeller = isSeller;
    }
    if (isPhone != null) {
      this._isPhone = isPhone;
    }
    if (willShowEmi != null) {
      this._willShowEmi = willShowEmi;
    }
    if (badge != null) {
      this._badge = badge;
    }
    if (isActive != null) {
      this._isActive = isActive;
    }
    if (sackEquivalent != null) {
      this._sackEquivalent = sackEquivalent;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (language != null) {
      this._language = language;
    }
    if (seller != null) {
      this._seller = seller;
    }
    if (combo != null) {
      this._combo = combo;
    }
    if (createdBy != null) {
      this._createdBy = createdBy;
    }
    if (updatedBy != null) {
      this._updatedBy = updatedBy;
    }
    if (category != null) {
      this._category = category;
    }
    if (relatedProduct != null) {
      this._relatedProduct = relatedProduct;
    }
    if (filterValue != null) {
      this._filterValue = filterValue;
    }
    if (distributors != null) {
      this._distributors = distributors;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  Brand? get brand => _brand;
  set brand(Brand? brand) => _brand = brand;
  String? get image => _image;
  set image(String? image) => _image = image;
  Charge? get charge => _charge;
  set charge(Charge? charge) => _charge = charge;
  List<Images>? get images => _images;
  set images(List<Images>? images) => _images = images;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;
  String? get productName => _productName;
  set productName(String? productName) => _productName = productName;
  String? get model => _model;
  set model(String? model) => _model = model;
  String? get commissionType => _commissionType;
  set commissionType(String? commissionType) =>
      _commissionType = commissionType;
  String? get amount => _amount;
  set amount(String? amount) => _amount = amount;
  String? get tag => _tag;
  set tag(String? tag) => _tag = tag;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get note => _note;
  set note(String? note) => _note = note;
  String? get embaddedVideoLink => _embaddedVideoLink;
  set embaddedVideoLink(String? embaddedVideoLink) =>
      _embaddedVideoLink = embaddedVideoLink;
  int? get maximumOrder => _maximumOrder;
  set maximumOrder(int? maximumOrder) => _maximumOrder = maximumOrder;
  int? get stock => _stock;
  set stock(int? stock) => _stock = stock;
  bool? get isBackOrder => _isBackOrder;
  set isBackOrder(bool? isBackOrder) => _isBackOrder = isBackOrder;
  String? get specification => _specification;
  set specification(String? specification) => _specification = specification;
  String? get warranty => _warranty;
  set warranty(String? warranty) => _warranty = warranty;
  bool? get preOrder => _preOrder;
  set preOrder(bool? preOrder) => _preOrder = preOrder;
  int? get productReview => _productReview;
  set productReview(int? productReview) => _productReview = productReview;
  bool? get isSeller => _isSeller;
  set isSeller(bool? isSeller) => _isSeller = isSeller;
  bool? get isPhone => _isPhone;
  set isPhone(bool? isPhone) => _isPhone = isPhone;
  bool? get willShowEmi => _willShowEmi;
  set willShowEmi(bool? willShowEmi) => _willShowEmi = willShowEmi;
  Null? get badge => _badge;
  set badge(Null? badge) => _badge = badge;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  String? get sackEquivalent => _sackEquivalent;
  set sackEquivalent(String? sackEquivalent) =>
      _sackEquivalent = sackEquivalent;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  Null? get language => _language;
  set language(Null? language) => _language = language;
  String? get seller => _seller;
  set seller(String? seller) => _seller = seller;
  Null? get combo => _combo;
  set combo(Null? combo) => _combo = combo;
  String? get createdBy => _createdBy;
  set createdBy(String? createdBy) => _createdBy = createdBy;
  Null? get updatedBy => _updatedBy;
  set updatedBy(Null? updatedBy) => _updatedBy = updatedBy;
  List<int>? get category => _category;
  set category(List<int>? category) => _category = category;
  List<Null>? get relatedProduct => _relatedProduct;
  set relatedProduct(List<Null>? relatedProduct) =>
      _relatedProduct = relatedProduct;
  List<Null>? get filterValue => _filterValue;
  set filterValue(List<Null>? filterValue) => _filterValue = filterValue;
  List<Null>? get distributors => _distributors;
  set distributors(List<Null>? distributors) => _distributors = distributors;

  Results.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    _image = json['image'];
    _charge =
    json['charge'] != null ? Charge.fromJson(json['charge']) : null;
    if (json['images'] != null) {
      _images = <Images>[];
      json['images'].forEach((v) {
        _images!.add(Images.fromJson(v));
      });
    }
    _slug = json['slug'];
    _productName = json['product_name'];
    _model = json['model'];
    _commissionType = json['commission_type'];
    _amount = json['amount'];
    _tag = json['tag'];
    _description = json['description'];
    _note = json['note'];
    _embaddedVideoLink = json['embadded_video_link'];
    _maximumOrder = json['maximum_order'];
    _stock = json['stock'];
    _isBackOrder = json['is_back_order'];
    _specification = json['specification'];
    _warranty = json['warranty'];
    _preOrder = json['pre_order'];
    _productReview = json['product_review'];
    _isSeller = json['is_seller'];
    _isPhone = json['is_phone'];
    _willShowEmi = json['will_show_emi'];
    _badge = json['badge'];
    _isActive = json['is_active'];
    _sackEquivalent = json['sack_equivalent'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _language = json['language'];
    _seller = json['seller'];
    _combo = json['combo'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _category = json['category'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this._id;
    if (this._brand != null) {
      data['brand'] = this._brand!.toJson();
    }
    data['image'] = this._image;
    if (this._charge != null) {
      data['charge'] = this._charge!.toJson();
    }
    if (this._images != null) {
      data['images'] = this._images!.map((v) => v.toJson()).toList();
    }
    data['slug'] = this._slug;
    data['product_name'] = this._productName;
    data['model'] = this._model;
    data['commission_type'] = this._commissionType;
    data['amount'] = this._amount;
    data['tag'] = this._tag;
    data['description'] = this._description;
    data['note'] = this._note;
    data['embadded_video_link'] = this._embaddedVideoLink;
    data['maximum_order'] = this._maximumOrder;
    data['stock'] = this._stock;
    data['is_back_order'] = this._isBackOrder;
    data['specification'] = this._specification;
    data['warranty'] = this._warranty;
    data['pre_order'] = this._preOrder;
    data['product_review'] = this._productReview;
    data['is_seller'] = this._isSeller;
    data['is_phone'] = this._isPhone;
    data['will_show_emi'] = this._willShowEmi;
    data['badge'] = this._badge;
    data['is_active'] = this._isActive;
    data['sack_equivalent'] = this._sackEquivalent;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['language'] = this._language;
    data['seller'] = this._seller;
    data['combo'] = this._combo;
    data['created_by'] = this._createdBy;
    data['updated_by'] = this._updatedBy;
    data['category'] = this._category;

    return data;
  }
}

class Brand {
  String? _name;
  String? _image;
  Null? _headerImage;
  String? _slug;

  Brand({String? name, String? image, Null? headerImage, String? slug}) {
    if (name != null) {
      this._name = name;
    }
    if (image != null) {
      this._image = image;
    }
    if (headerImage != null) {
      this._headerImage = headerImage;
    }
    if (slug != null) {
      this._slug = slug;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get image => _image;
  set image(String? image) => _image = image;
  Null? get headerImage => _headerImage;
  set headerImage(Null? headerImage) => _headerImage = headerImage;
  String? get slug => _slug;
  set slug(String? slug) => _slug = slug;

  Brand.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _image = json['image'];
    _headerImage = json['header_image'];
    _slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this._name;
    data['image'] = this._image;
    data['header_image'] = this._headerImage;
    data['slug'] = this._slug;
    return data;
  }
}

class Charge {
  int? _bookingPrice;
  int? _currentCharge;
  Null? _discountCharge;
  int? _sellingPrice;
  int? _profit;
  bool? _isEvent;
  Null? _eventId;
  bool? _highlight;
  Null? _highlightId;
  bool? _groupping;
  Null? _grouppingId;
  Null? _campaignSectionId;
  bool? _campaignSection;
  Null? _message;

  Charge(
      {int? bookingPrice,
        int? currentCharge,
        Null? discountCharge,
        int? sellingPrice,
        int? profit,
        bool? isEvent,
        Null? eventId,
        bool? highlight,
        Null? highlightId,
        bool? groupping,
        Null? grouppingId,
        Null? campaignSectionId,
        bool? campaignSection,
        Null? message}) {
    if (bookingPrice != null) {
      this._bookingPrice = bookingPrice;
    }
    if (currentCharge != null) {
      this._currentCharge = currentCharge;
    }
    if (discountCharge != null) {
      this._discountCharge = discountCharge;
    }
    if (sellingPrice != null) {
      this._sellingPrice = sellingPrice;
    }
    if (profit != null) {
      this._profit = profit;
    }
    if (isEvent != null) {
      this._isEvent = isEvent;
    }
    if (eventId != null) {
      this._eventId = eventId;
    }
    if (highlight != null) {
      this._highlight = highlight;
    }
    if (highlightId != null) {
      this._highlightId = highlightId;
    }
    if (groupping != null) {
      this._groupping = groupping;
    }
    if (grouppingId != null) {
      this._grouppingId = grouppingId;
    }
    if (campaignSectionId != null) {
      this._campaignSectionId = campaignSectionId;
    }
    if (campaignSection != null) {
      this._campaignSection = campaignSection;
    }
    if (message != null) {
      this._message = message;
    }
  }

  int? get bookingPrice => _bookingPrice;
  set bookingPrice(int? bookingPrice) => _bookingPrice = bookingPrice;
  int? get currentCharge => _currentCharge;
  set currentCharge(int? currentCharge) => _currentCharge = currentCharge;
  Null? get discountCharge => _discountCharge;
  set discountCharge(Null? discountCharge) => _discountCharge = discountCharge;
  int? get sellingPrice => _sellingPrice;
  set sellingPrice(int? sellingPrice) => _sellingPrice = sellingPrice;
  int? get profit => _profit;
  set profit(int? profit) => _profit = profit;
  bool? get isEvent => _isEvent;
  set isEvent(bool? isEvent) => _isEvent = isEvent;
  Null? get eventId => _eventId;
  set eventId(Null? eventId) => _eventId = eventId;
  bool? get highlight => _highlight;
  set highlight(bool? highlight) => _highlight = highlight;
  Null? get highlightId => _highlightId;
  set highlightId(Null? highlightId) => _highlightId = highlightId;
  bool? get groupping => _groupping;
  set groupping(bool? groupping) => _groupping = groupping;
  Null? get grouppingId => _grouppingId;
  set grouppingId(Null? grouppingId) => _grouppingId = grouppingId;
  Null? get campaignSectionId => _campaignSectionId;
  set campaignSectionId(Null? campaignSectionId) =>
      _campaignSectionId = campaignSectionId;
  bool? get campaignSection => _campaignSection;
  set campaignSection(bool? campaignSection) =>
      _campaignSection = campaignSection;
  Null? get message => _message;
  set message(Null? message) => _message = message;

  Charge.fromJson(Map<String, dynamic> json) {
    _bookingPrice = json['booking_price'];
    _currentCharge = json['current_charge'];
    _discountCharge = json['discount_charge'];
    _sellingPrice = json['selling_price'];
    _profit = json['profit'];
    _isEvent = json['is_event'];
    _eventId = json['event_id'];
    _highlight = json['highlight'];
    _highlightId = json['highlight_id'];
    _groupping = json['groupping'];
    _grouppingId = json['groupping_id'];
    _campaignSectionId = json['campaign_section_id'];
    _campaignSection = json['campaign_section'];
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['booking_price'] = this._bookingPrice;
    data['current_charge'] = this._currentCharge;
    data['discount_charge'] = this._discountCharge;
    data['selling_price'] = this._sellingPrice;
    data['profit'] = this._profit;
    data['is_event'] = this._isEvent;
    data['event_id'] = this._eventId;
    data['highlight'] = this._highlight;
    data['highlight_id'] = this._highlightId;
    data['groupping'] = this._groupping;
    data['groupping_id'] = this._grouppingId;
    data['campaign_section_id'] = this._campaignSectionId;
    data['campaign_section'] = this._campaignSection;
    data['message'] = this._message;
    return data;
  }
}

class Images {
  int? _id;
  String? _image;
  bool? _isPrimary;
  int? _product;

  Images({int? id, String? image, bool? isPrimary, int? product}) {
    if (id != null) {
      this._id = id;
    }
    if (image != null) {
      this._image = image;
    }
    if (isPrimary != null) {
      this._isPrimary = isPrimary;
    }
    if (product != null) {
      this._product = product;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get image => _image;
  set image(String? image) => _image = image;
  bool? get isPrimary => _isPrimary;
  set isPrimary(bool? isPrimary) => _isPrimary = isPrimary;
  int? get product => _product;
  set product(int? product) => _product = product;

  Images.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _image = json['image'];
    _isPrimary = json['is_primary'];
    _product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this._id;
    data['image'] = this._image;
    data['is_primary'] = this._isPrimary;
    data['product'] = this._product;
    return data;
  }
}
