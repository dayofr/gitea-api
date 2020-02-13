part of openapi.api;

class IssueDeadline {
  
  DateTime dueDate = null;
  IssueDeadline();

  @override
  String toString() {
    return 'IssueDeadline[dueDate=$dueDate, ]';
  }

  IssueDeadline.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    return json;
  }

  static List<IssueDeadline> listFromJson(List<dynamic> json) {
    return json == null ? List<IssueDeadline>() : json.map((value) => IssueDeadline.fromJson(value)).toList();
  }

  static Map<String, IssueDeadline> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IssueDeadline>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IssueDeadline.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IssueDeadline-objects as value to a dart map
  static Map<String, List<IssueDeadline>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IssueDeadline>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = IssueDeadline.listFromJson(value);
       });
     }
     return map;
  }
}

