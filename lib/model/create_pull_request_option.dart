part of openapi.api;

class CreatePullRequestOption {
  
  String assignee = null;
  
  List<String> assignees = [];
  
  String base = null;
  
  String body = null;
  
  DateTime dueDate = null;
  
  String head = null;
  
  List<int> labels = [];
  
  int milestone = null;
  
  String title = null;
  CreatePullRequestOption();

  @override
  String toString() {
    return 'CreatePullRequestOption[assignee=$assignee, assignees=$assignees, base=$base, body=$body, dueDate=$dueDate, head=$head, labels=$labels, milestone=$milestone, title=$title, ]';
  }

  CreatePullRequestOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = json['assignee'];
    assignees = (json['assignees'] == null) ?
      null :
      (json['assignees'] as List).cast<String>();
    base = json['base'];
    body = json['body'];
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    head = json['head'];
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
    if (base != null)
      json['base'] = base;
    if (body != null)
      json['body'] = body;
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (head != null)
      json['head'] = head;
    if (labels != null)
      json['labels'] = labels;
    if (milestone != null)
      json['milestone'] = milestone;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<CreatePullRequestOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreatePullRequestOption>() : json.map((value) => CreatePullRequestOption.fromJson(value)).toList();
  }

  static Map<String, CreatePullRequestOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreatePullRequestOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreatePullRequestOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreatePullRequestOption-objects as value to a dart map
  static Map<String, List<CreatePullRequestOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreatePullRequestOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreatePullRequestOption.listFromJson(value);
       });
     }
     return map;
  }
}

