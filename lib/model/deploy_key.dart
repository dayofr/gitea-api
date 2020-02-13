part of openapi.api;

class DeployKey {
  
  DateTime createdAt = null;
  
  String fingerprint = null;
  
  int id = null;
  
  String key = null;
  
  int keyId = null;
  
  bool readOnly = null;
  
  Repository repository = null;
  
  String title = null;
  
  String url = null;
  DeployKey();

  @override
  String toString() {
    return 'DeployKey[createdAt=$createdAt, fingerprint=$fingerprint, id=$id, key=$key, keyId=$keyId, readOnly=$readOnly, repository=$repository, title=$title, url=$url, ]';
  }

  DeployKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    fingerprint = json['fingerprint'];
    id = json['id'];
    key = json['key'];
    keyId = json['key_id'];
    readOnly = json['read_only'];
    repository = (json['repository'] == null) ?
      null :
      Repository.fromJson(json['repository']);
    title = json['title'];
    url = json['url'];
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
    if (keyId != null)
      json['key_id'] = keyId;
    if (readOnly != null)
      json['read_only'] = readOnly;
    if (repository != null)
      json['repository'] = repository;
    if (title != null)
      json['title'] = title;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<DeployKey> listFromJson(List<dynamic> json) {
    return json == null ? List<DeployKey>() : json.map((value) => DeployKey.fromJson(value)).toList();
  }

  static Map<String, DeployKey> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeployKey>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeployKey.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeployKey-objects as value to a dart map
  static Map<String, List<DeployKey>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeployKey>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeployKey.listFromJson(value);
       });
     }
     return map;
  }
}

