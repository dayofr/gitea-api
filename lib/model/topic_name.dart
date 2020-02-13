part of openapi.api;

class TopicName {
  
  List<String> topics = [];
  TopicName();

  @override
  String toString() {
    return 'TopicName[topics=$topics, ]';
  }

  TopicName.fromJson(Map<String, dynamic> json) {
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

  static List<TopicName> listFromJson(List<dynamic> json) {
    return json == null ? List<TopicName>() : json.map((value) => TopicName.fromJson(value)).toList();
  }

  static Map<String, TopicName> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TopicName>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TopicName.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TopicName-objects as value to a dart map
  static Map<String, List<TopicName>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TopicName>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TopicName.listFromJson(value);
       });
     }
     return map;
  }
}

