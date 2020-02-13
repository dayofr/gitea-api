part of openapi.api;

class PublicKey {
  
  DateTime createdAt = null;
  
  String fingerprint = null;
  
  int id = null;
  
  String key = null;
  
  String keyType = null;
  
  bool readOnly = null;
  
  String title = null;
  
  String url = null;
  
  User user = null;
  PublicKey();

  @override
  String toString() {
    return 'PublicKey[createdAt=$createdAt, fingerprint=$fingerprint, id=$id, key=$key, keyType=$keyType, readOnly=$readOnly, title=$title, url=$url, user=$user, ]';
  }

  PublicKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    fingerprint = json['fingerprint'];
    id = json['id'];
    key = json['key'];
    keyType = json['key_type'];
    readOnly = json['read_only'];
    title = json['title'];
    url = json['url'];
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (fingerprint != null)
      json['fingerprint'] = fingerprint;
    if (id != null)
      json['id'] = id;
    if (key != null)
      json['key'] = key;
    if (keyType != null)
      json['key_type'] = keyType;
    if (readOnly != null)
      json['read_only'] = readOnly;
    if (title != null)
      json['title'] = title;
    if (url != null)
      json['url'] = url;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<PublicKey> listFromJson(List<dynamic> json) {
    return json == null ? List<PublicKey>() : json.map((value) => PublicKey.fromJson(value)).toList();
  }

  static Map<String, PublicKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublicKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublicKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PublicKey-objects as value to a dart map
  static Map<String, List<PublicKey>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PublicKey>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PublicKey.listFromJson(value);
       });
     }
     return map;
  }
}

