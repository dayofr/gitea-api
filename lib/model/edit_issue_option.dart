part of gitea_openapi;

class EditIssueOption {
  
  String assignee = null;
  
  List<String> assignees = [];
  
  String body = null;
  
  DateTime dueDate = null;
  
  int milestone = null;
  
  String state = null;
  
  String title = null;
  
  bool unsetDueDate = null;
  EditIssueOption();

  @override
  String toString() {
    return 'EditIssueOption[assignee=$assignee, assignees=$assignees, body=$body, dueDate=$dueDate, milestone=$milestone, state=$state, title=$title, unsetDueDate=$unsetDueDate, ]';
  }

  EditIssueOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = json['assignee'];
    assignees = (json['assignees'] == null) ?
      null :
      (json['assignees'] as List).cast<String>();
    body = json['body'];
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    milestone = json['milestone'];
    state = json['state'];
    title = json['title'];
    unsetDueDate = json['unset_due_date'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignee != null)
      json['assignee'] = assignee;
    if (assignees != null)
      json['assignees'] = assignees;
    if (body != null)
      json['body'] = body;
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (milestone != null)
      json['milestone'] = milestone;
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    if (unsetDueDate != null)
      json['unset_due_date'] = unsetDueDate;
    return json;
  }

  static List<EditIssueOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditIssueOption>() : json.map((value) => EditIssueOption.fromJson(value)).toList();
  }

  static Map<String, EditIssueOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditIssueOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditIssueOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditIssueOption-objects as value to a dart map
  static Map<String, List<EditIssueOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditIssueOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditIssueOption.listFromJson(value);
       });
     }
     return map;
  }
}

