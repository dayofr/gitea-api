part of openapi.api;

class AnnotatedTagObject {
  
  String sha = null;
  
  String type = null;
  
  String url = null;
  AnnotatedTagObject();

  @override
  String toString() {
    return 'AnnotatedTagObject[sha=$sha, type=$type, url=$url, ]';
  }

  AnnotatedTagObject.fromJson(Map<String, dynamic> json) {
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

  static List<AnnotatedTagObject> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotatedTagObject>() : json.map((value) => AnnotatedTagObject.fromJson(value)).toList();
  }

  static Map<String, AnnotatedTagObject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotatedTagObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotatedTagObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotatedTagObject-objects as value to a dart map
  static Map<String, List<AnnotatedTagObject>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotatedTagObject>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotatedTagObject.listFromJson(value);
       });
     }
     return map;
  }
}

