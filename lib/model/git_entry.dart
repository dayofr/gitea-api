part of gitea_openapi;

class GitEntry {
  
  String mode = null;
  
  String path = null;
  
  String sha = null;
  
  int size = null;
  
  String type = null;
  
  String url = null;
  GitEntry();

  @override
  String toString() {
    return 'GitEntry[mode=$mode, path=$path, sha=$sha, size=$size, type=$type, url=$url, ]';
  }

  GitEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode = json['mode'];
    path = json['path'];
    sha = json['sha'];
    size = json['size'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mode != null)
      json['mode'] = mode;
    if (path != null)
      json['path'] = path;
    if (sha != null)
      json['sha'] = sha;
    if (size != null)
      json['size'] = size;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<GitEntry>() : json.map((value) => GitEntry.fromJson(value)).toList();
  }

  static Map<String, GitEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitEntry.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GitEntry-objects as value to a dart map
  static Map<String, List<GitEntry>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GitEntry>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GitEntry.listFromJson(value);
       });
     }
     return map;
  }
}

