part of gitea_openapi;

class User {
  /* URL to the user's avatar */
  String avatarUrl = null;
  
  DateTime created = null;
  
  String email = null;
  /* the user's full name */
  String fullName = null;
  /* the user's id */
  int id = null;
  /* Is the user an administrator */
  bool isAdmin = null;
  /* User locale */
  String language = null;
  
  DateTime lastLogin = null;
  /* the user's username */
  String login = null;
  User();

  @override
  String toString() {
    return 'User[avatarUrl=$avatarUrl, created=$created, email=$email, fullName=$fullName, id=$id, isAdmin=$isAdmin, language=$language, lastLogin=$lastLogin, login=$login, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    avatarUrl = json['avatar_url'];
    created = (json['created'] == null) ?
      null :
      DateTime.parse(json['created']);
    email = json['email'];
    fullName = json['full_name'];
    id = json['id'];
    isAdmin = json['is_admin'];
    language = json['language'];
    lastLogin = (json['last_login'] == null) ?
      null :
      DateTime.parse(json['last_login']);
    login = json['login'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (avatarUrl != null)
      json['avatar_url'] = avatarUrl;
    if (created != null)
      json['created'] = created == null ? null : created.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    if (fullName != null)
      json['full_name'] = fullName;
    if (id != null)
      json['id'] = id;
    if (isAdmin != null)
      json['is_admin'] = isAdmin;
    if (language != null)
      json['language'] = language;
    if (lastLogin != null)
      json['last_login'] = lastLogin == null ? null : lastLogin.toUtc().toIso8601String();
    if (login != null)
      json['login'] = login;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

