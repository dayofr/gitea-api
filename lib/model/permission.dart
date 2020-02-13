part of gitea_openapi;

class Permission {
  
  bool admin = null;
  
  bool pull = null;
  
  bool push = null;
  Permission();

  @override
  String toString() {
    return 'Permission[admin=$admin, pull=$pull, push=$push, ]';
  }

  Permission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = json['admin'];
    pull = json['pull'];
    push = json['push'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (admin != null)
      json['admin'] = admin;
    if (pull != null)
      json['pull'] = pull;
    if (push != null)
      json['push'] = push;
    return json;
  }

  static List<Permission> listFromJson(List<dynamic> json) {
    return json == null ? List<Permission>() : json.map((value) => Permission.fromJson(value)).toList();
  }

  static Map<String, Permission> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Permission>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Permission.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Permission-objects as value to a dart map
  static Map<String, List<Permission>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Permission>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Permission.listFromJson(value);
       });
     }
     return map;
  }
}

