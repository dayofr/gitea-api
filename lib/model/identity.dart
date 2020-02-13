part of gitea_openapi;

class Identity {
  
  String email = null;
  
  String name = null;
  Identity();

  @override
  String toString() {
    return 'Identity[email=$email, name=$name, ]';
  }

  Identity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<Identity> listFromJson(List<dynamic> json) {
    return json == null ? List<Identity>() : json.map((value) => Identity.fromJson(value)).toList();
  }

  static Map<String, Identity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Identity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Identity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Identity-objects as value to a dart map
  static Map<String, List<Identity>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Identity>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Identity.listFromJson(value);
       });
     }
     return map;
  }
}

