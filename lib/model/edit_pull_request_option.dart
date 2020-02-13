part of gitea_openapi;

class EditPullRequestOption {
  
  String assignee = null;
  
  List<String> assignees = [];
  
  String body = null;
  
  DateTime dueDate = null;
  
  List<int> labels = [];
  
  int milestone = null;
  
  String state = null;
  
  String title = null;
  
  bool unsetDueDate = null;
  EditPullRequestOption();

  @override
  String toString() {
    return 'EditPullRequestOption[assignee=$assignee, assignees=$assignees, body=$body, dueDate=$dueDate, labels=$labels, milestone=$milestone, state=$state, title=$title, unsetDueDate=$unsetDueDate, ]';
  }

  EditPullRequestOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = json['assignee'];
    assignees = (json['assignees'] == null) ?
      null :
      (json['assignees'] as List).cast<String>();
    body = json['body'];
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    labels = (json['labels'] == null) ?
      null :
      (json['labels'] as List).cast<int>();
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
    if (labels != null)
      json['labels'] = labels;
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

  static List<EditPullRequestOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditPullRequestOption>() : json.map((value) => EditPullRequestOption.fromJson(value)).toList();
  }

  static Map<String, EditPullRequestOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditPullRequestOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditPullRequestOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditPullRequestOption-objects as value to a dart map
  static Map<String, List<EditPullRequestOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditPullRequestOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditPullRequestOption.listFromJson(value);
       });
     }
     return map;
  }
}

