part of gitea_openapi;

class Issue {
  
  User assignee = null;
  
  List<User> assignees = [];
  
  String body = null;
  
  DateTime closedAt = null;
  
  int comments = null;
  
  DateTime createdAt = null;
  
  DateTime dueDate = null;
  
  String htmlUrl = null;
  
  int id = null;
  
  List<Label> labels = [];
  
  Milestone milestone = null;
  
  int number = null;
  
  String originalAuthor = null;
  
  int originalAuthorId = null;
  
  PullRequestMeta pullRequest = null;
  
  RepositoryMeta repository = null;
  /* StateType issue state type */
  String state = null;
  
  String title = null;
  
  DateTime updatedAt = null;
  
  String url = null;
  
  User user = null;
  Issue();

  @override
  String toString() {
    return 'Issue[assignee=$assignee, assignees=$assignees, body=$body, closedAt=$closedAt, comments=$comments, createdAt=$createdAt, dueDate=$dueDate, htmlUrl=$htmlUrl, id=$id, labels=$labels, milestone=$milestone, number=$number, originalAuthor=$originalAuthor, originalAuthorId=$originalAuthorId, pullRequest=$pullRequest, repository=$repository, state=$state, title=$title, updatedAt=$updatedAt, url=$url, user=$user, ]';
  }

  Issue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = (json['assignee'] == null) ?
      null :
      User.fromJson(json['assignee']);
    assignees = (json['assignees'] == null) ?
      null :
      User.listFromJson(json['assignees']);
    body = json['body'];
    closedAt = (json['closed_at'] == null) ?
      null :
      DateTime.parse(json['closed_at']);
    comments = json['comments'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    htmlUrl = json['html_url'];
    id = json['id'];
    labels = (json['labels'] == null) ?
      null :
      Label.listFromJson(json['labels']);
    milestone = (json['milestone'] == null) ?
      null :
      Milestone.fromJson(json['milestone']);
    number = json['number'];
    originalAuthor = json['original_author'];
    originalAuthorId = json['original_author_id'];
    pullRequest = (json['pull_request'] == null) ?
      null :
      PullRequestMeta.fromJson(json['pull_request']);
    repository = (json['repository'] == null) ?
      null :
      RepositoryMeta.fromJson(json['repository']);
    state = json['state'];
    title = json['title'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    url = json['url'];
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assignee != null)
      json['assignee'] = assignee;
    if (assignees != null)
      json['assignees'] = assignees;
    if (body != null)
      json['body'] = body;
    if (closedAt != null)
      json['closed_at'] = closedAt == null ? null : closedAt.toUtc().toIso8601String();
    if (comments != null)
      json['comments'] = comments;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (id != null)
      json['id'] = id;
    if (labels != null)
      json['labels'] = labels;
    if (milestone != null)
      json['milestone'] = milestone;
    if (number != null)
      json['number'] = number;
    if (originalAuthor != null)
      json['original_author'] = originalAuthor;
    if (originalAuthorId != null)
      json['original_author_id'] = originalAuthorId;
    if (pullRequest != null)
      json['pull_request'] = pullRequest;
    if (repository != null)
      json['repository'] = repository;
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<Issue> listFromJson(List<dynamic> json) {
    return json == null ? List<Issue>() : json.map((value) => Issue.fromJson(value)).toList();
  }

  static Map<String, Issue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Issue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Issue.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Issue-objects as value to a dart map
  static Map<String, List<Issue>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Issue>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Issue.listFromJson(value);
       });
     }
     return map;
  }
}

