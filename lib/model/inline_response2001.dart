part of openapi.api;

class InlineResponse2001 {
  
  List<User> data = [];
  
  bool ok = null;
  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[data=$data, ok=$ok, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      User.listFromJson(json['data']);
    ok = json['ok'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (ok != null)
      json['ok'] = ok;
    return json;
  }

  static List<InlineResponse2001> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse2001>() : json.map((value) => InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse2001>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse2001.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse2001-objects as value to a dart map
  static Map<String, List<InlineResponse2001>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse2001>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse2001.listFromJson(value);
       });
     }
     return map;
  }
}

