part of gitea_openapi;

class Reaction {
  
  String content = null;
  
  DateTime createdAt = null;
  
  User user = null;
  Reaction();

  @override
  String toString() {
    return 'Reaction[content=$content, createdAt=$createdAt, user=$user, ]';
  }

  Reaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<Reaction> listFromJson(List<dynamic> json) {
    return json == null ? List<Reaction>() : json.map((value) => Reaction.fromJson(value)).toList();
  }

  static Map<String, Reaction> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Reaction>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Reaction.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Reaction-objects as value to a dart map
  static Map<String, List<Reaction>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Reaction>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Reaction.listFromJson(value);
       });
     }
     return map;
  }
}

