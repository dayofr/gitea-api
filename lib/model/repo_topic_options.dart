part of openapi.api;

class RepoTopicOptions {
  /* list of topic names */
  List<String> topics = [];
  RepoTopicOptions();

  @override
  String toString() {
    return 'RepoTopicOptions[topics=$topics, ]';
  }

  RepoTopicOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    topics = (json['topics'] == null) ?
      null :
      (json['topics'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (topics != null)
      json['topics'] = topics;
    return json;
  }

  static List<RepoTopicOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<RepoTopicOptions>() : json.map((value) => RepoTopicOptions.fromJson(value)).toList();
  }

  static Map<String, RepoTopicOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RepoTopicOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RepoTopicOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RepoTopicOptions-objects as value to a dart map
  static Map<String, List<RepoTopicOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RepoTopicOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RepoTopicOptions.listFromJson(value);
       });
     }
     return map;
  }
}

