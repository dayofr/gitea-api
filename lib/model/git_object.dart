part of gitea_openapi;

class GitObject {
  
  String sha = null;
  
  String type = null;
  
  String url = null;
  GitObject();

  @override
  String toString() {
    return 'GitObject[sha=$sha, type=$type, url=$url, ]';
  }

  GitObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sha != null)
      json['sha'] = sha;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitObject> listFromJson(List<dynamic> json) {
    return json == null ? List<GitObject>() : json.map((value) => GitObject.fromJson(value)).toList();
  }

  static Map<String, GitObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GitObject-objects as value to a dart map
  static Map<String, List<GitObject>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GitObject>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GitObject.listFromJson(value);
       });
     }
     return map;
  }
}

