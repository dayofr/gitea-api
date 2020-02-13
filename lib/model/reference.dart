part of gitea_openapi;

class Reference {
  
  GitObject object = null;
  
  String ref = null;
  
  String url = null;
  Reference();

  @override
  String toString() {
    return 'Reference[object=$object, ref=$ref, url=$url, ]';
  }

  Reference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    object = (json['object'] == null) ?
      null :
      GitObject.fromJson(json['object']);
    ref = json['ref'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (object != null)
      json['object'] = object;
    if (ref != null)
      json['ref'] = ref;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Reference> listFromJson(List<dynamic> json) {
    return json == null ? List<Reference>() : json.map((value) => Reference.fromJson(value)).toList();
  }

  static Map<String, Reference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Reference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Reference.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Reference-objects as value to a dart map
  static Map<String, List<Reference>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Reference>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Reference.listFromJson(value);
       });
     }
     return map;
  }
}

