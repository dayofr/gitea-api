part of gitea_openapi;

class CommitUser {
  
  String date = null;
  
  String email = null;
  
  String name = null;
  CommitUser();

  @override
  String toString() {
    return 'CommitUser[date=$date, email=$email, name=$name, ]';
  }

  CommitUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date;
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<CommitUser> listFromJson(List<dynamic> json) {
    return json == null ? List<CommitUser>() : json.map((value) => CommitUser.fromJson(value)).toList();
  }

  static Map<String, CommitUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommitUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommitUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommitUser-objects as value to a dart map
  static Map<String, List<CommitUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CommitUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CommitUser.listFromJson(value);
       });
     }
     return map;
  }
}

