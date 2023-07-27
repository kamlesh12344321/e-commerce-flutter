class ExploreHome {
  ExploreHome({
      this.data,
      this.status,});

  ExploreHome.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    status = json['status'];
  }
  List<Data>? data;
  bool? status;
ExploreHome copyWith({  List<Data>? data,
  bool? status,
}) => ExploreHome(  data: data ?? this.data,
  status: status ?? this.status,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['status'] = status;
    return map;
  }

}

class Data {
  Data({
      this.viewGroupType, 
      this.header, 
      this.children, 
      this.gridColumn,});

  Data.fromJson(dynamic json) {
    viewGroupType = json['view_group_type'];
    header = json['header'] != null ? Header.fromJson(json['header']) : null;
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
    gridColumn = json['gridColumn'];
  }
  String? viewGroupType;
  Header? header;
  List<Children>? children;
  num? gridColumn;
Data copyWith({  String? viewGroupType,
  Header? header,
  List<Children>? children,
  num? gridColumn,
}) => Data(  viewGroupType: viewGroupType ?? this.viewGroupType,
  header: header ?? this.header,
  children: children ?? this.children,
  gridColumn: gridColumn ?? this.gridColumn,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['view_group_type'] = viewGroupType;
    if (header != null) {
      map['header'] = header?.toJson();
    }
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    map['gridColumn'] = gridColumn;
    return map;
  }

}

class Children {
  Children({
      this.productId, 
      this.type, 
      this.title, 
      this.backgroundColor, 
      this.value, 
      this.productInfo, 
      this.action,});

  Children.fromJson(dynamic json) {
    productId = json['product_id'];
    type = json['type'];
    title = json['title'];
    backgroundColor = json['background_color'] != null ? BackgroundColor.fromJson(json['background_color']) : null;
    value = json['value'] != null ? Value.fromJson(json['value']) : null;
    productInfo = json['product_info'] != null ? ProductInfo.fromJson(json['product_info']) : null;
    action = json['action'] != null ? ItemAction.fromJson(json['action']) : null;
  }
  String? productId;
  String? type;
  String? title;
  BackgroundColor? backgroundColor;
  Value? value;
  ProductInfo? productInfo;
  ItemAction? action;
Children copyWith({  String? productId,
  String? type,
  String? title,
  BackgroundColor? backgroundColor,
  Value? value,
  ProductInfo? productInfo,
  ItemAction? action,
}) => Children(  productId: productId ?? this.productId,
  type: type ?? this.type,
  title: title ?? this.title,
  backgroundColor: backgroundColor ?? this.backgroundColor,
  value: value ?? this.value,
  productInfo: productInfo ?? this.productInfo,
  action: action ?? this.action,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product_id'] = productId;
    map['type'] = type;
    map['title'] = title;
    if (backgroundColor != null) {
      map['background_color'] = backgroundColor?.toJson();
    }
    if (value != null) {
      map['value'] = value?.toJson();
    }
    if (productInfo != null) {
      map['product_info'] = productInfo?.toJson();
    }
    if (action != null) {
      map['action'] = action?.toJson();
    }
    return map;
  }

}

class ItemAction {
  ItemAction({
      this.method, 
      this.api, 
      this.destination, 
      this.query,});

  ItemAction.fromJson(dynamic json) {
    method = json['method'];
    api = json['api'];
    destination = json['destination'];
    query = json['query'];
  }
  String? method;
  String? api;
  String? destination;
  String? query;
ItemAction copyWith({  String? method,
  String? api,
  String? destination,
  String? query,
}) => ItemAction(  method: method ?? this.method,
  api: api ?? this.api,
  destination: destination ?? this.destination,
  query: query ?? this.query,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['method'] = method;
    map['api'] = api;
    map['destination'] = destination;
    map['query'] = query;
    return map;
  }

}

class ProductInfo {
  ProductInfo({
      this.offerPercentage, 
      this.quantity, 
      this.displaySellingScale, 
      this.unitPrice, 
      this.offerPrice,});

  ProductInfo.fromJson(dynamic json) {
    offerPercentage = json['offer_percentage'];
    quantity = json['quantity'];
    displaySellingScale = json['display_selling_scale'];
    unitPrice = json['unit_price'];
    offerPrice = json['offer_price'];
  }
  String? offerPercentage;
  num? quantity;
  String? displaySellingScale;
  num? unitPrice;
  num? offerPrice;
ProductInfo copyWith({  String? offerPercentage,
  num? quantity,
  String? displaySellingScale,
  num? unitPrice,
  num? offerPrice,
}) => ProductInfo(  offerPercentage: offerPercentage ?? this.offerPercentage,
  quantity: quantity ?? this.quantity,
  displaySellingScale: displaySellingScale ?? this.displaySellingScale,
  unitPrice: unitPrice ?? this.unitPrice,
  offerPrice: offerPrice ?? this.offerPrice,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offer_percentage'] = offerPercentage;
    map['quantity'] = quantity;
    map['display_selling_scale'] = displaySellingScale;
    map['unit_price'] = unitPrice;
    map['offer_price'] = offerPrice;
    return map;
  }

}

class Value {
  Value({
      this.thumb1x, 
      this.thumb2x, 
      this.thumb3x, 
      this.thumb4x, 
      this.banner1x, 
      this.banner2x, 
      this.banner3x, 
      this.banner4x,});

  Value.fromJson(dynamic json) {
    thumb1x = json['thumb_1x'];
    thumb2x = json['thumb_2x'];
    thumb3x = json['thumb_3x'];
    thumb4x = json['thumb_4x'];
    banner1x = json['banner_1x'];
    banner2x = json['banner_2x'];
    banner3x = json['banner_3x'];
    banner4x = json['banner_4x'];
  }
  String? thumb1x;
  String? thumb2x;
  String? thumb3x;
  String? thumb4x;
  String? banner1x;
  String? banner2x;
  String? banner3x;
  String? banner4x;
Value copyWith({  String? thumb1x,
  String? thumb2x,
  String? thumb3x,
  String? thumb4x,
  String? banner1x,
  String? banner2x,
  String? banner3x,
  String? banner4x,
}) => Value(  thumb1x: thumb1x ?? this.thumb1x,
  thumb2x: thumb2x ?? this.thumb2x,
  thumb3x: thumb3x ?? this.thumb3x,
  thumb4x: thumb4x ?? this.thumb4x,
  banner1x: banner1x ?? this.banner1x,
  banner2x: banner2x ?? this.banner2x,
  banner3x: banner3x ?? this.banner3x,
  banner4x: banner4x ?? this.banner4x,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['thumb_1x'] = thumb1x;
    map['thumb_2x'] = thumb2x;
    map['thumb_3x'] = thumb3x;
    map['thumb_4x'] = thumb4x;
    map['banner_1x'] = banner1x;
    map['banner_2x'] = banner2x;
    map['banner_3x'] = banner3x;
    map['banner_4x'] = banner4x;
    return map;
  }

}

class BackgroundColor {
  BackgroundColor({
      this.hue, 
      this.saturation, 
      this.lighting, 
      this.alpha,});

  BackgroundColor.fromJson(dynamic json) {
    hue = json['hue'];
    saturation = json['saturation'];
    lighting = json['lighting'];
    alpha = json['alpha'];
  }
  num? hue;
  num? saturation;
  num? lighting;
  num? alpha;
BackgroundColor copyWith({  num? hue,
  num? saturation,
  num? lighting,
  num? alpha,
}) => BackgroundColor(  hue: hue ?? this.hue,
  saturation: saturation ?? this.saturation,
  lighting: lighting ?? this.lighting,
  alpha: alpha ?? this.alpha,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hue'] = hue;
    map['saturation'] = saturation;
    map['lighting'] = lighting;
    map['alpha'] = alpha;
    return map;
  }

}

class Header {
  Header({
      this.type, 
      this.title, 
      this.ctaTitle, 
      this.backgroundColor, 
      this.action,});

  Header.fromJson(dynamic json) {
    type = json['type'];
    title = json['title'];
    ctaTitle = json['ctaTitle'];
    backgroundColor = json['background_color'] != null ? BackgroundColor.fromJson(json['background_color']) : null;
    action = json['action'] != null ? ItemAction.fromJson(json['action']) : null;
  }
  String? type;
  String? title;
  String? ctaTitle;
  BackgroundColor? backgroundColor;
  ItemAction? action;
Header copyWith({  String? type,
  String? title,
  String? ctaTitle,
  BackgroundColor? backgroundColor,
  ItemAction? action,
}) => Header(  type: type ?? this.type,
  title: title ?? this.title,
  ctaTitle: ctaTitle ?? this.ctaTitle,
  backgroundColor: backgroundColor ?? this.backgroundColor,
  action: action ?? this.action,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['title'] = title;
    map['ctaTitle'] = ctaTitle;
    if (backgroundColor != null) {
      map['background_color'] = backgroundColor?.toJson();
    }
    if (action != null) {
      map['action'] = action?.toJson();
    }
    return map;
  }

}
