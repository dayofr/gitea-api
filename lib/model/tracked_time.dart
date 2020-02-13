part of openapi.api;

class TrackedTime {
  
  DateTime created = null;
  
  int id = null;
  
  Issue issue = null;
  /* deprecated (only for backwards compatibility) */
  int issueId = null;
  /* Time in seconds */
  int time = null;
  /* deprecated (only for backwards compatibility) */
  int userId = null;
  
  String userName = null;
  TrackedTime();

  @override
  String toString() {
    return 'TrackedTime[created=$created, id=$id, issue=$issue, issueId=$issueId, time=$time, userId=$userId, userName=$userName, ]';
  }

  TrackedTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = (json['created'] == null) ?
      null :
      DateTime.parse(json['created']);
    id = json['id'];
    issue = (json['issue'] == null) ?
      null :
      Issue.fromJson(json['issue']);
    issueId = json['issue_id'];
    time = json['time'];
    userId = json['user_id'];
    userName = json['user_name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (created != null)
      json['created'] = created == null ? null : created.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (issue != null)
      json['issue'] = issue;
    if (issueId != null)
      json['issue_id'] = issueId;
    if (time != null)
      json['time'] = time;
    if (userId != null)
      json['user_id'] = userId;
    if (userName != null)
      json['user_name'] = userName;
    return json;
  }

  static List<TrackedTime> listFromJson(List<dynamic> json) {
    return json == null ? List<TrackedTime>() : json.map((value) => TrackedTime.fromJson(value)).toList();
  }

  static Map<String, TrackedTime> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TrackedTime>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TrackedTime.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TrackedTime-objects as value to a dart map
  static Map<String, List<TrackedTime>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TrackedTime>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TrackedTime.listFromJson(value);
       });
     }
     return map;
  }
}

