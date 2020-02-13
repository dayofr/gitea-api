part of gitea_openapi;

class CreateIssueOption {
  /* username of assignee */
  String assignee = null;
  
  List<String> assignees = [];
  
  String body = null;
  
  bool closed = null;
  
  DateTime dueDate = null;
  /* list of label ids */
  List<int> labels = [];
  /* milestone id */
  int milestone = null;
  
  String title = null;
  CreateIssueOption();

  @override
  String toString() {
    return 'CreateIssueOption[assignee=$assignee, assignees=$assignees, body=$body, closed=$closed, dueDate=$dueDate, labels=$labels, milestone=$milestone, title=$title, ]';
  }

  CreateIssueOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = json['assignee'];
    assignees = (json['assignees'] == null) ?
      null :
      (json['assignees'] as List).cast<String>();
    body = json['body'];
    closed = json['closed'];
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    labels = (json['labels'] == null) ?
      null :
      (json['labels'] as List).cast<int>();
    milestone = json['milestone'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignee != null)
      json['assignee'] = assignee;
    if (assignees != null)
      json['assignees'] = assignees;
    if (body != null)
      json['body'] = body;
    if (closed != null)
      json['closed'] = closed;
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (labels != null)
      json['labels'] = labels;
    if (milestone != null)
      json['milestone'] = milestone;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<CreateIssueOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateIssueOption>() : json.map((value) => CreateIssueOption.fromJson(value)).toList();
  }

  static Map<String, CreateIssueOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateIssueOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateIssueOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateIssueOption-objects as value to a dart map
  static Map<String, List<CreateIssueOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateIssueOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateIssueOption.listFromJson(value);
       });
     }
     return map;
  }
}

