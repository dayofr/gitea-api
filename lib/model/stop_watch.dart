part of openapi.api;

class StopWatch {
  
  DateTime created = null;
  
  int issueIndex = null;
  StopWatch();

  @override
  String toString() {
    return 'StopWatch[created=$created, issueIndex=$issueIndex, ]';
  }

  StopWatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = (json['created'] == null) ?
      null :
      DateTime.parse(json['created']);
    issueIndex = json['issue_index'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (created != null)
      json['created'] = created == null ? null : created.toUtc().toIso8601String();
    if (issueIndex != null)
      json['issue_index'] = issueIndex;
    return json;
  }

  static List<StopWatch> listFromJson(List<dynamic> json) {
    return json == null ? List<StopWatch>() : json.map((value) => StopWatch.fromJson(value)).toList();
  }

  static Map<String, StopWatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StopWatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StopWatch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StopWatch-objects as value to a dart map
  static Map<String, List<StopWatch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<StopWatch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = StopWatch.listFromJson(value);
       });
     }
     return map;
  }
}

