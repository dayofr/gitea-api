part of gitea_openapi;

class CommitMeta {
  
  String sha = null;
  
  String url = null;
  CommitMeta();

  @override
  String toString() {
    return 'CommitMeta[sha=$sha, url=$url, ]';
  }

  CommitMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sha != null)
      json['sha'] = sha;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CommitMeta> listFromJson(List<dynamic> json) {
    return json == null ? List<CommitMeta>() : json.map((value) => CommitMeta.fromJson(value)).toList();
  }

  static Map<String, CommitMeta> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommitMeta>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommitMeta.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommitMeta-objects as value to a dart map
  static Map<String, List<CommitMeta>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CommitMeta>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CommitMeta.listFromJson(value);
       });
     }
     return map;
  }
}

