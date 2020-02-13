part of gitea_openapi;

class RepositoryMeta {
  
  String fullName = null;
  
  int id = null;
  
  String name = null;
  
  String owner = null;
  RepositoryMeta();

  @override
  String toString() {
    return 'RepositoryMeta[fullName=$fullName, id=$id, name=$name, owner=$owner, ]';
  }

  RepositoryMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fullName = json['full_name'];
    id = json['id'];
    name = json['name'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fullName != null)
      json['full_name'] = fullName;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (owner != null)
      json['owner'] = owner;
    return json;
  }

  static List<RepositoryMeta> listFromJson(List<dynamic> json) {
    return json == null ? List<RepositoryMeta>() : json.map((value) => RepositoryMeta.fromJson(value)).toList();
  }

  static Map<String, RepositoryMeta> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RepositoryMeta>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RepositoryMeta.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RepositoryMeta-objects as value to a dart map
  static Map<String, List<RepositoryMeta>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RepositoryMeta>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RepositoryMeta.listFromJson(value);
       });
     }
     return map;
  }
}

