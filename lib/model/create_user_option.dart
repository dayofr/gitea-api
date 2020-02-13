part of gitea_openapi;

class CreateUserOption {
  
  String email = null;
  
  String fullName = null;
  
  String loginName = null;
  
  bool mustChangePassword = null;
  
  String password = null;
  
  bool sendNotify = null;
  
  int sourceId = null;
  
  String username = null;
  CreateUserOption();

  @override
  String toString() {
    return 'CreateUserOption[email=$email, fullName=$fullName, loginName=$loginName, mustChangePassword=$mustChangePassword, password=$password, sendNotify=$sendNotify, sourceId=$sourceId, username=$username, ]';
  }

  CreateUserOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    fullName = json['full_name'];
    loginName = json['login_name'];
    mustChangePassword = json['must_change_password'];
    password = json['password'];
    sendNotify = json['send_notify'];
    sourceId = json['source_id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (fullName != null)
      json['full_name'] = fullName;
    if (loginName != null)
      json['login_name'] = loginName;
    if (mustChangePassword != null)
      json['must_change_password'] = mustChangePassword;
    if (password != null)
      json['password'] = password;
    if (sendNotify != null)
      json['send_notify'] = sendNotify;
    if (sourceId != null)
      json['source_id'] = sourceId;
    if (username != null)
      json['username'] = username;
    return json;
  }

  static List<CreateUserOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateUserOption>() : json.map((value) => CreateUserOption.fromJson(value)).toList();
  }

  static Map<String, CreateUserOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateUserOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateUserOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateUserOption-objects as value to a dart map
  static Map<String, List<CreateUserOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateUserOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateUserOption.listFromJson(value);
       });
     }
     return map;
  }
}

