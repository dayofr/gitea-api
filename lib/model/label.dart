part of gitea_openapi;

class Label {
  
  String color = null;
  
  String description = null;
  
  int id = null;
  
  String name = null;
  
  String url = null;
  Label();

  @override
  String toString() {
    return 'Label[color=$color, description=$description, id=$id, name=$name, url=$url, ]';
  }

  Label.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    color = json['color'];
    description = json['description'];
    id = json['id'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (color != null)
      json['color'] = color;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Label> listFromJson(List<dynamic> json) {
    return json == null ? List<Label>() : json.map((value) => Label.fromJson(value)).toList();
  }

  static Map<String, Label> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Label>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Label.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Label-objects as value to a dart map
  static Map<String, List<Label>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Label>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Label.listFromJson(value);
       });
     }
     return map;
  }
}

