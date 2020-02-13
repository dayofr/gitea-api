part of openapi.api;

class Milestone {
  
  DateTime closedAt = null;
  
  int closedIssues = null;
  
  String description = null;
  
  DateTime dueOn = null;
  
  int id = null;
  
  int openIssues = null;
  /* StateType issue state type */
  String state = null;
  
  String title = null;
  Milestone();

  @override
  String toString() {
    return 'Milestone[closedAt=$closedAt, closedIssues=$closedIssues, description=$description, dueOn=$dueOn, id=$id, openIssues=$openIssues, state=$state, title=$title, ]';
  }

  Milestone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    closedAt = (json['closed_at'] == null) ?
      null :
      DateTime.parse(json['closed_at']);
    closedIssues = json['closed_issues'];
    description = json['description'];
    dueOn = (json['due_on'] == null) ?
      null :
      DateTime.parse(json['due_on']);
    id = json['id'];
    openIssues = json['open_issues'];
    state = json['state'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (closedAt != null)
      json['closed_at'] = closedAt == null ? null : closedAt.toUtc().toIso8601String();
    if (closedIssues != null)
      json['closed_issues'] = closedIssues;
    if (description != null)
      json['description'] = description;
    if (dueOn != null)
      json['due_on'] = dueOn == null ? null : dueOn.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (openIssues != null)
      json['open_issues'] = openIssues;
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<Milestone> listFromJson(List<dynamic> json) {
    return json == null ? List<Milestone>() : json.map((value) => Milestone.fromJson(value)).toList();
  }

  static Map<String, Milestone> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Milestone>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Milestone.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Milestone-objects as value to a dart map
  static Map<String, List<Milestone>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Milestone>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Milestone.listFromJson(value);
       });
     }
     return map;
  }
}

