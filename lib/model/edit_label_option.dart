part of openapi.api;

class EditLabelOption {
  
  String color = null;
  
  String description = null;
  
  String name = null;
  EditLabelOption();

  @override
  String toString() {
    return 'EditLabelOption[color=$color, description=$description, name=$name, ]';
  }

  EditLabelOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    color = json['color'];
    description = json['description'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (description != null)
      json['description'] = description;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<EditLabelOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditLabelOption>() : json.map((value) => EditLabelOption.fromJson(value)).toList();
  }

  static Map<String, EditLabelOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditLabelOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditLabelOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditLabelOption-objects as value to a dart map
  static Map<String, List<EditLabelOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditLabelOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditLabelOption.listFromJson(value);
       });
     }
     return map;
  }
}

