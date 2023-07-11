import 'package:ecommerce_flutter_new/model/EditField.dart';

/// status : true
/// data : [{"type":"image","width":200,"height":200,"image_url":"https://images.gorappid.com/uploads/logo.png","fit":"fill","row_items":[],"margin":{"margin_top":10,"margin_start":16,"margin_end":16,"margin_bottom":0},"position":{"horizontal_position":"center_left","vertical_position":"top"}},{"type":"image","width":200,"height":200,"row_items":[],"image_url":"https://images.gorappid.com/uploads/logo.png","fit":"fill","margin":{"margin_top":0,"margin_start":16,"margin_end":16,"margin_bottom":0},"position":{"horizontal_position":"start","vertical_position":"bottom"}},{"type":"row","row_items":[{"type":"image","width":100,"height":100,"image_url":"https://images.gorappid.com/uploads/logo.png","fit":"fill","margin":{"margin_top":10,"margin_start":16,"margin_end":16,"margin_bottom":0},"position":{"horizontal_position":"center_left","vertical_position":"top"}},{"type":"image","width":100,"height":100,"image_url":"https://images.gorappid.com/uploads/logo.png","fit":"fill","margin":{"margin_top":10,"margin_start":16,"margin_end":16,"margin_bottom":0},"position":{"horizontal_position":"center_left","vertical_position":"top"}}]},{"type":"editField","width":0,"height":50,"image_url":"https://images.gorappid.com/uploads/logo.png","fit":"fill","row_items":[],"edit_field":{"round_corner":true,"corner_radius":20,"corner_width":2,"corner_radius_color":"#FFFFFF","background":"#FFFFFF","curse_color":"#000000","hint":"Enter your email id","hint_color":"#000000","input_type":"email","text_padding":10},"margin":{"margin_top":10,"margin_start":16,"margin_end":16,"margin_bottom":10},"position":{"horizontal_position":"center","vertical_position":"center"}}]

class LoginScreenUiModel {
  LoginScreenUiModel({
      bool? status,
      List<Data>? data,}){
    _status = status;
    _data = data;
}

  LoginScreenUiModel.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  List<Data>? _data;
LoginScreenUiModel copyWith({  bool? status,
  List<Data>? data,
}) => LoginScreenUiModel(  status: status ?? _status,
  data: data ?? _data,
);
  bool? get status => _status;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// type : "image"
/// width : 200
/// height : 200
/// image_url : "https://images.gorappid.com/uploads/logo.png"
/// fit : "fill"
/// row_items : []
/// margin : {"margin_top":10,"margin_start":16,"margin_end":16,"margin_bottom":0}
/// position : {"horizontal_position":"center_left","vertical_position":"top"}

class Data {
  Data({
      String? type,
      String? subType,
      num? width,
      num? height,
      String? imageUrl,
      String? fit,
      List<Data>? rowItems,
      List<Data>? columnItems,
      Margin? margin,
      Position? position,
      EditFieldModel? editField}){
    _type = type;
    _width = width;
    _height = height;
    _imageUrl = imageUrl;
    _fit = fit;
    _rowItems = rowItems;
    _columnItems = columnItems;
    _margin = margin;
    _position = position;
    _editField = editField;
}

  Data.fromJson(dynamic json) {
    _type = json['type'];
    _subType = json['sub_type'];
    _width = json['width'];
    _height = json['height'];
    _imageUrl = json['image_url'];
    _fit = json['fit'];
    if (json['row_items'] != null) {
      _rowItems = [];
      json['row_items'].forEach((v) {
        _rowItems?.add(Data.fromJson(v));
      });
    }
    if (json['column_item'] != null) {
      _columnItems = [];
      json['column_item'].forEach((v) {
        _columnItems?.add(Data.fromJson(v));
      });
    }
    _margin = json['margin'] != null ? Margin.fromJson(json['margin']) : null;
    _position = json['position'] != null ? Position.fromJson(json['position']) : null;
    _editField = json['edit_field'] != null ? EditFieldModel.fromJson(json['edit_field']) : null;
  }
  String? _type;
  String? _subType;
  num? _width;
  num? _height;
  String? _imageUrl;
  String? _fit;
  List<Data>? _rowItems;
  List<Data>? _columnItems;
  Margin? _margin;
  Position? _position;
  EditFieldModel? _editField;
Data copyWith({  String? type,
  String? subType,
  num? width,
  num? height,
  String? imageUrl,
  String? fit,
  List<Data>? rowItems,
  List<Data>? columnItems,
  Margin? margin,
  Position? position,
  EditFieldModel? editField,
}) => Data(  type: type ?? _type,
  subType: subType ?? _subType,
  width: width ?? _width,
  height: height ?? _height,
  imageUrl: imageUrl ?? _imageUrl,
  fit: fit ?? _fit,
  rowItems: rowItems ?? _rowItems,
  columnItems: columnItems ?? _columnItems,
  margin: margin ?? _margin,
  position: position ?? _position,
  editField: editField ?? _editField
);
  String? get type => _type;
  String? get subType => _subType;
  num? get width => _width;
  num? get height => _height;
  String? get imageUrl => _imageUrl;
  String? get fit => _fit;
  List<Data>? get rowItems => _rowItems;
  List<Data>? get columnItems => _columnItems;
  Margin? get margin => _margin;
  Position? get position => _position;
  EditFieldModel? get editField => _editField;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map["sub_type"] = _subType;
    map['width'] = _width;
    map['height'] = _height;
    map['image_url'] = _imageUrl;
    map['fit'] = _fit;
    if (_rowItems != null) {
      map['row_items'] = _rowItems?.map((v) => v.toJson()).toList();
    }
    if (_columnItems != null) {
      map['column_item'] = _columnItems?.map((v) => v.toJson()).toList();
    }
    if (_margin != null) {
      map['margin'] = _margin?.toJson();
    }
    if (_position != null) {
      map['position'] = _position?.toJson();
    }
    if(_editField != null) {
      map['edit_field'] = _editField?.toJson();
    }
    return map;
  }

}

/// horizontal_position : "center_left"
/// vertical_position : "top"

class Position {
  Position({
      String? horizontalPosition,
      String? verticalPosition,}){
    _horizontalPosition = horizontalPosition;
    _verticalPosition = verticalPosition;
}

  Position.fromJson(dynamic json) {
    _horizontalPosition = json['horizontal_position'];
    _verticalPosition = json['vertical_position'];
  }
  String? _horizontalPosition;
  String? _verticalPosition;
Position copyWith({  String? horizontalPosition,
  String? verticalPosition,
}) => Position(  horizontalPosition: horizontalPosition ?? _horizontalPosition,
  verticalPosition: verticalPosition ?? _verticalPosition,
);
  String? get horizontalPosition => _horizontalPosition;
  String? get verticalPosition => _verticalPosition;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['horizontal_position'] = _horizontalPosition;
    map['vertical_position'] = _verticalPosition;
    return map;
  }

}

/// margin_top : 10
/// margin_start : 16
/// margin_end : 16
/// margin_bottom : 0

class Margin {
  Margin({
      num? marginTop,
      num? marginStart,
      num? marginEnd,
      num? marginBottom,}){
    _marginTop = marginTop;
    _marginStart = marginStart;
    _marginEnd = marginEnd;
    _marginBottom = marginBottom;
}

  Margin.fromJson(dynamic json) {
    _marginTop = json['margin_top'];
    _marginStart = json['margin_start'];
    _marginEnd = json['margin_end'];
    _marginBottom = json['margin_bottom'];
  }
  num? _marginTop;
  num? _marginStart;
  num? _marginEnd;
  num? _marginBottom;
Margin copyWith({  num? marginTop,
  num? marginStart,
  num? marginEnd,
  num? marginBottom,
}) => Margin(  marginTop: marginTop ?? _marginTop,
  marginStart: marginStart ?? _marginStart,
  marginEnd: marginEnd ?? _marginEnd,
  marginBottom: marginBottom ?? _marginBottom,
);
  num? get marginTop => _marginTop;
  num? get marginStart => _marginStart;
  num? get marginEnd => _marginEnd;
  num? get marginBottom => _marginBottom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['margin_top'] = _marginTop;
    map['margin_start'] = _marginStart;
    map['margin_end'] = _marginEnd;
    map['margin_bottom'] = _marginBottom;
    return map;
  }

}