part of gitea_openapi;

class Email {
  
  String email = null;
  
  bool primary = null;
  
  bool verified = null;
  Email();

  @override
  String toString() {
    return 'Email[email=$email, primary=$primary, verified=$verified, ]';
  }

  Email.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    primary = json['primary'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (primary != null)
      json['primary'] = primary;
    if (verified != null)
      json['verified'] = verified;
    return json;
  }

  static List<Email> listFromJson(List<dynamic> json) {
    return json == null ? List<Email>() : json.map((value) => Email.fromJson(value)).toList();
  }

  static Map<String, Email> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Email>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Email.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Email>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Email.listFromJson(value);
       });
     }
     return map;
  }
}

