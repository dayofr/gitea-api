part of openapi.api;

class Status {
  
  String context = null;
  
  DateTime createdAt = null;
  
  User creator = null;
  
  String description = null;
  
  int id = null;
  /* StatusState holds the state of a Status It can be \"pending\", \"success\", \"error\", \"failure\", and \"warning\" */
  String status = null;
  
  String targetUrl = null;
  
  DateTime updatedAt = null;
  
  String url = null;
  Status();

  @override
  String toString() {
    return 'Status[context=$context, createdAt=$createdAt, creator=$creator, description=$description, id=$id, status=$status, targetUrl=$targetUrl, updatedAt=$updatedAt, url=$url, ]';
  }

  Status.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context = json['context'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    creator = (json['creator'] == null) ?
      null :
      User.fromJson(json['creator']);
    description = json['description'];
    id = json['id'];
    status = json['status'];
    targetUrl = json['target_url'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (context != null)
      json['context'] = context;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (creator != null)
      json['creator'] = creator;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (status != null)
      json['status'] = status;
    if (targetUrl != null)
      json['target_url'] = targetUrl;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Status> listFromJson(List<dynamic> json) {
    return json == null ? List<Status>() : json.map((value) => Status.fromJson(value)).toList();
  }

  static Map<String, Status> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Status>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Status.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Status>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Status.listFromJson(value);
       });
     }
     return map;
  }
}

