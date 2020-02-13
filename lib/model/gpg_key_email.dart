part of gitea_openapi;

class GPGKeyEmail {
  
  String email = null;
  
  bool verified = null;
  GPGKeyEmail();

  @override
  String toString() {
    return 'GPGKeyEmail[email=$email, verified=$verified, ]';
  }

  GPGKeyEmail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (verified != null)
      json['verified'] = verified;
    return json;
  }

  static List<GPGKeyEmail> listFromJson(List<dynamic> json) {
    return json == null ? List<GPGKeyEmail>() : json.map((value) => GPGKeyEmail.fromJson(value)).toList();
  }

  static Map<String, GPGKeyEmail> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GPGKeyEmail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GPGKeyEmail.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GPGKeyEmail-objects as value to a dart map
  static Map<String, List<GPGKeyEmail>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GPGKeyEmail>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GPGKeyEmail.listFromJson(value);
       });
     }
     return map;
  }
}

