part of gitea_openapi;

class TopicResponse {
  
  DateTime created = null;
  
  int id = null;
  
  int repoCount = null;
  
  String topicName = null;
  
  DateTime updated = null;
  TopicResponse();

  @override
  String toString() {
    return 'TopicResponse[created=$created, id=$id, repoCount=$repoCount, topicName=$topicName, updated=$updated, ]';
  }

  TopicResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = (json['created'] == null) ?
      null :
      DateTime.parse(json['created']);
    id = json['id'];
    repoCount = json['repo_count'];
    topicName = json['topic_name'];
    updated = (json['updated'] == null) ?
      null :
      DateTime.parse(json['updated']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (created != null)
      json['created'] = created == null ? null : created.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (repoCount != null)
      json['repo_count'] = repoCount;
    if (topicName != null)
      json['topic_name'] = topicName;
    if (updated != null)
      json['updated'] = updated == null ? null : updated.toUtc().toIso8601String();
    return json;
  }

  static List<TopicResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TopicResponse>() : json.map((value) => TopicResponse.fromJson(value)).toList();
  }

  static Map<String, TopicResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TopicResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TopicResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TopicResponse-objects as value to a dart map
  static Map<String, List<TopicResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TopicResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TopicResponse.listFromJson(value);
       });
     }
     return map;
  }
}

