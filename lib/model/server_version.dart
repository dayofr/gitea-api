part of gitea_openapi;

class ServerVersion {
  
  String version = null;
  ServerVersion();

  @override
  String toString() {
    return 'ServerVersion[version=$version, ]';
  }

  ServerVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ServerVersion> listFromJson(List<dynamic> json) {
    return json == null ? List<ServerVersion>() : json.map((value) => ServerVersion.fromJson(value)).toList();
  }

  static Map<String, ServerVersion> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServerVersion>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ServerVersion.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ServerVersion-objects as value to a dart map
  static Map<String, List<ServerVersion>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ServerVersion>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ServerVersion.listFromJson(value);
       });
     }
     return map;
  }
}

