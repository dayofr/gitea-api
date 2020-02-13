part of gitea_openapi;

class AccessToken {
  
  int id = null;
  
  String name = null;
  
  String sha1 = null;
  
  String tokenLastEight = null;
  AccessToken();

  @override
  String toString() {
    return 'AccessToken[id=$id, name=$name, sha1=$sha1, tokenLastEight=$tokenLastEight, ]';
  }

  AccessToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    sha1 = json['sha1'];
    tokenLastEight = json['token_last_eight'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (sha1 != null)
      json['sha1'] = sha1;
    if (tokenLastEight != null)
      json['token_last_eight'] = tokenLastEight;
    return json;
  }

  static List<AccessToken> listFromJson(List<dynamic> json) {
    return json == null ? List<AccessToken>() : json.map((value) => AccessToken.fromJson(value)).toList();
  }

  static Map<String, AccessToken> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccessToken>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccessToken.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccessToken-objects as value to a dart map
  static Map<String, List<AccessToken>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AccessToken>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AccessToken.listFromJson(value);
       });
     }
     return map;
  }
}

