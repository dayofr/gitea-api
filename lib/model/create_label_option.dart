part of openapi.api;

class CreateLabelOption {
  
  String color = null;
  
  String description = null;
  
  String name = null;
  CreateLabelOption();

  @override
  String toString() {
    return 'CreateLabelOption[color=$color, description=$description, name=$name, ]';
  }

  CreateLabelOption.fromJson(Map<String, dynamic> json) {
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

  static List<CreateLabelOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateLabelOption>() : json.map((value) => CreateLabelOption.fromJson(value)).toList();
  }

  static Map<String, CreateLabelOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateLabelOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateLabelOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateLabelOption-objects as value to a dart map
  static Map<String, List<CreateLabelOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateLabelOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateLabelOption.listFromJson(value);
       });
     }
     return map;
  }
}

