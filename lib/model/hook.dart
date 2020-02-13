part of openapi.api;

class Hook {
  
  bool active = null;
  
  Map<String, String> config = {};
  
  DateTime createdAt = null;
  
  List<String> events = [];
  
  int id = null;
  
  String type = null;
  
  DateTime updatedAt = null;
  Hook();

  @override
  String toString() {
    return 'Hook[active=$active, config=$config, createdAt=$createdAt, events=$events, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }

  Hook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active = json['active'];
    config = (json['config'] == null) ?
      null :
      (json['config'] as Map).cast<String, String>();
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    events = (json['events'] == null) ?
      null :
      (json['events'] as List).cast<String>();
    id = json['id'];
    type = json['type'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (active != null)
      json['active'] = active;
    if (config != null)
      json['config'] = config;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (events != null)
      json['events'] = events;
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    return json;
  }

  static List<Hook> listFromJson(List<dynamic> json) {
    return json == null ? List<Hook>() : json.map((value) => Hook.fromJson(value)).toList();
  }

  static Map<String, Hook> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Hook>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Hook.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Hook-objects as value to a dart map
  static Map<String, List<Hook>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Hook>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Hook.listFromJson(value);
       });
     }
     return map;
  }
}

