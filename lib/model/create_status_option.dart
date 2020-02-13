part of gitea_openapi;

class CreateStatusOption {
  
  String context = null;
  
  String description = null;
  /* StatusState holds the state of a Status It can be \"pending\", \"success\", \"error\", \"failure\", and \"warning\" */
  String state = null;
  
  String targetUrl = null;
  CreateStatusOption();

  @override
  String toString() {
    return 'CreateStatusOption[context=$context, description=$description, state=$state, targetUrl=$targetUrl, ]';
  }

  CreateStatusOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context = json['context'];
    description = json['description'];
    state = json['state'];
    targetUrl = json['target_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (context != null)
      json['context'] = context;
    if (description != null)
      json['description'] = description;
    if (state != null)
      json['state'] = state;
    if (targetUrl != null)
      json['target_url'] = targetUrl;
    return json;
  }

  static List<CreateStatusOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateStatusOption>() : json.map((value) => CreateStatusOption.fromJson(value)).toList();
  }

  static Map<String, CreateStatusOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateStatusOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateStatusOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateStatusOption-objects as value to a dart map
  static Map<String, List<CreateStatusOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateStatusOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateStatusOption.listFromJson(value);
       });
     }
     return map;
  }
}

