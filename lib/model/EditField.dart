class EditFieldModel {
  EditFieldModel({
      this.roundCorner, 
      this.cornerRadius, 
      this.cornerWidth, 
      this.cornerRadiusColor, 
      this.background, 
      this.curseColor, 
      this.hint, 
      this.hintColor, 
      this.inputType, 
      this.textPadding,
  this.levelText});

  EditFieldModel.fromJson(dynamic json) {
    roundCorner = json['round_corner'];
    cornerRadius = json['corner_radius'];
    cornerWidth = json['corner_width'];
    cornerRadiusColor = json['corner_radius_color'];
    background = json['background'];
    curseColor = json['curse_color'];
    hint = json['hint'];
    hintColor = json['hint_color'];
    inputType = json['input_type'];
    textPadding = json['text_padding'];
    levelText = json['level_text'];
  }
  bool? roundCorner;
  num? cornerRadius;
  num? cornerWidth;
  String? cornerRadiusColor;
  String? background;
  String? curseColor;
  String? hint;
  String? hintColor;
  String? inputType;
  num? textPadding;
  String? levelText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['round_corner'] = roundCorner;
    map['corner_radius'] = cornerRadius;
    map['corner_width'] = cornerWidth;
    map['corner_radius_color'] = cornerRadiusColor;
    map['background'] = background;
    map['curse_color'] = curseColor;
    map['hint'] = hint;
    map['hint_color'] = hintColor;
    map['input_type'] = inputType;
    map['text_padding'] = textPadding;
    map['level_text'] = levelText;
    return map;
  }

}