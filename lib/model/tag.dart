part of gitea_openapi;

class Tag {
  
  CommitMeta commit = null;
  
  String id = null;
  
  String name = null;
  
  String tarballUrl = null;
  
  String zipballUrl = null;
  Tag();

  @override
  String toString() {
    return 'Tag[commit=$commit, id=$id, name=$name, tarballUrl=$tarballUrl, zipballUrl=$zipballUrl, ]';
  }

  Tag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commit = (json['commit'] == null) ?
      null :
      CommitMeta.fromJson(json['commit']);
    id = json['id'];
    name = json['name'];
    tarballUrl = json['tarball_url'];
    zipballUrl = json['zipball_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commit != null)
      json['commit'] = commit;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (tarballUrl != null)
      json['tarball_url'] = tarballUrl;
    if (zipballUrl != null)
      json['zipball_url'] = zipballUrl;
    return json;
  }

  static List<Tag> listFromJson(List<dynamic> json) {
    return json == null ? List<Tag>() : json.map((value) => Tag.fromJson(value)).toList();
  }

  static Map<String, Tag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Tag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Tag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Tag-objects as value to a dart map
  static Map<String, List<Tag>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Tag>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Tag.listFromJson(value);
       });
     }
     return map;
  }
}

