part of gitea_openapi;

class PayloadUser {
  
  String email = null;
  /* Full name of the commit author */
  String name = null;
  
  String username = null;
  PayloadUser();

  @override
  String toString() {
    return 'PayloadUser[email=$email, name=$name, username=$username, ]';
  }

  PayloadUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    if (username != null)
      json['username'] = username;
    return json;
  }

  static List<PayloadUser> listFromJson(List<dynamic> json) {
    return json == null ? List<PayloadUser>() : json.map((value) => PayloadUser.fromJson(value)).toList();
  }

  static Map<String, PayloadUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PayloadUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PayloadUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PayloadUser-objects as value to a dart map
  static Map<String, List<PayloadUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PayloadUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PayloadUser.listFromJson(value);
       });
     }
     return map;
  }
}

