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
      String? title,
      num? width,
      num? height,
      bool? isEnabled,
      String? imageUrl,
      String? fit,
      TextProperty? textProperty,
      List<Data>? rowItems,
      List<Data>? columnItems,
      Margin? margin,
      Position? position,
      EditFieldModel? editField}){
    _type = type;
    _width = width;
    _height = height;
    _isEnabled = isEnabled;
    _imageUrl = imageUrl;
    _fit = fit;
    _textProperty = textProperty;
    _rowItems = rowItems;
    _columnItems = columnItems;
    _margin = margin;
    _position = position;
    _editField = editField;
}

  Data.fromJson(dynamic json) {
    _type = json['type'];
    _subType = json['sub_type'];
    _title = json['title'];
    _width = json['width'];
    _height = json['height'];
    _isEnabled = json['isEnabled'];
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
    _textProperty = json['text_property'] != null ? TextProperty.fromJson(json["text_property"]): null;
    _margin = json['margin'] != null ? Margin.fromJson(json['margin']) : null;
    _position = json['position'] != null ? Position.fromJson(json['position']) : null;
    _editField = json['edit_field'] != null ? EditFieldModel.fromJson(json['edit_field']) : null;
  }
  String? _type;
  String? _subType;
  String? _title;
  num? _width;
  num? _height;
  bool? _isEnabled;
  String? _imageUrl;
  String? _fit;
  TextProperty? _textProperty;
  List<Data>? _rowItems;
  List<Data>? _columnItems;
  Margin? _margin;
  Position? _position;
  EditFieldModel? _editField;
Data copyWith({  String? type,
  String? subType,
  String? title,
  num? width,
  num? height,
  bool? isEnabled,
  String? imageUrl,
  String? fit,
  TextProperty? textProperty,
  List<Data>? rowItems,
  List<Data>? columnItems,
  Margin? margin,
  Position? position,
  EditFieldModel? editField,
}) => Data(  type: type ?? _type,
  subType: subType ?? _subType,
  title: title ?? _title,
  width: width ?? _width,
  height: height ?? _height,
  isEnabled: isEnabled ?? _isEnabled,
  imageUrl: imageUrl ?? _imageUrl,
  fit: fit ?? _fit,
  textProperty: textProperty ?? _textProperty,
  rowItems: rowItems ?? _rowItems,
  columnItems: columnItems ?? _columnItems,
  margin: margin ?? _margin,
  position: position ?? _position,
  editField: editField ?? _editField
);
  String? get type => _type;
  String? get subType => _subType;
  String? get title => _title;
  num? get width => _width;
  num? get height => _height;
  bool? get isEnabled => _isEnabled;
  String? get imageUrl => _imageUrl;
  String? get fit => _fit;
  TextProperty? get textProperty => _textProperty;
  List<Data>? get rowItems => _rowItems;
  List<Data>? get columnItems => _columnItems;
  Margin? get margin => _margin;
  Position? get position => _position;
  EditFieldModel? get editField => _editField;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map["sub_type"] = _subType;
    map["title"] = _title;
    map['width'] = _width;
    map['height'] = _height;
    map['isEnabled'] = _isEnabled;
    map['image_url'] = _imageUrl;
    map['fit'] = _fit;
    if(_textProperty != null){
      map['text_property'] = _textProperty?.toJson();
    }
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

class TextProperty{
 String? _textColor;
  String? _fontWeight;
  num? _fontSize;
  num? _letterSpacing;

 TextProperty({
   String? textColor,
   String? fontWeight,
   num? fontSize,
   num? letterSpacing,
}) {
   _textColor = textColor;
   _fontWeight = fontWeight;
   _fontSize = fontSize;
   _letterSpacing = letterSpacing;

 }
 TextProperty.fromJson(dynamic json){
   _textColor = json['text_color'];
   _fontWeight = json['font_weight'];
   _fontSize = json['font_size'];
   _letterSpacing = json['letter_spacing'];
 }
 TextProperty copyWith({  String? textColor,
   String? fontWeight,
   num? fontSize,
   num? letterSpacing,
 }) => TextProperty(  textColor: textColor ?? _textColor,
   fontWeight: fontWeight ?? _fontWeight,
   fontSize: fontSize ?? _fontSize,
   letterSpacing: letterSpacing ?? _letterSpacing,
 );

 String? get textColor => _textColor;
 String? get fontWeight => _fontWeight;
 num? get fontSize => _fontSize;
 num? get letterSpacing => _letterSpacing;

 Map<String, dynamic> toJson() {
   final map = <String, dynamic>{};
   map['text_color'] = _textColor;
   map['font_weight'] = _fontWeight;
   map['font_size'] = _fontSize;
   map['letter_spacing'] = _letterSpacing;
   return map;
 }

}