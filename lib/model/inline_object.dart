part of openapi.api;

class InlineObject {
  
  String name = null;
  InlineObject();

  @override
  String toString() {
    return 'InlineObject[name=$name, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject>() : json.map((value) => InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject.listFromJson(value);
       });
     }
     return map;
  }
}

