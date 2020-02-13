part of openapi.api;

class PullRequest {
  
  User assignee = null;
  
  List<User> assignees = [];
  
  PRBranchInfo base = null;
  
  String body = null;
  
  DateTime closedAt = null;
  
  int comments = null;
  
  DateTime createdAt = null;
  
  String diffUrl = null;
  
  DateTime dueDate = null;
  
  PRBranchInfo head = null;
  
  String htmlUrl = null;
  
  int id = null;
  
  List<Label> labels = [];
  
  String mergeBase = null;
  
  String mergeCommitSha = null;
  
  bool mergeable = null;
  
  bool merged = null;
  
  DateTime mergedAt = null;
  
  User mergedBy = null;
  
  Milestone milestone = null;
  
  int number = null;
  
  String patchUrl = null;
  /* StateType issue state type */
  String state = null;
  
  String title = null;
  
  DateTime updatedAt = null;
  
  String url = null;
  
  User user = null;
  PullRequest();

  @override
  String toString() {
    return 'PullRequest[assignee=$assignee, assignees=$assignees, base=$base, body=$body, closedAt=$closedAt, comments=$comments, createdAt=$createdAt, diffUrl=$diffUrl, dueDate=$dueDate, head=$head, htmlUrl=$htmlUrl, id=$id, labels=$labels, mergeBase=$mergeBase, mergeCommitSha=$mergeCommitSha, mergeable=$mergeable, merged=$merged, mergedAt=$mergedAt, mergedBy=$mergedBy, milestone=$milestone, number=$number, patchUrl=$patchUrl, state=$state, title=$title, updatedAt=$updatedAt, url=$url, user=$user, ]';
  }

  PullRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignee = (json['assignee'] == null) ?
      null :
      User.fromJson(json['assignee']);
    assignees = (json['assignees'] == null) ?
      null :
      User.listFromJson(json['assignees']);
    base = (json['base'] == null) ?
      null :
      PRBranchInfo.fromJson(json['base']);
    body = json['body'];
    closedAt = (json['closed_at'] == null) ?
      null :
      DateTime.parse(json['closed_at']);
    comments = json['comments'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    diffUrl = json['diff_url'];
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
    head = (json['head'] == null) ?
      null :
      PRBranchInfo.fromJson(json['head']);
    htmlUrl = json['html_url'];
    id = json['id'];
    labels = (json['labels'] == null) ?
      null :
      Label.listFromJson(json['labels']);
    mergeBase = json['merge_base'];
    mergeCommitSha = json['merge_commit_sha'];
    mergeable = json['mergeable'];
    merged = json['merged'];
    mergedAt = (json['merged_at'] == null) ?
      null :
      DateTime.parse(json['merged_at']);
    mergedBy = (json['merged_by'] == null) ?
      null :
      User.fromJson(json['merged_by']);
    milestone = (json['milestone'] == null) ?
      null :
      Milestone.fromJson(json['milestone']);
    number = json['number'];
    patchUrl = json['patch_url'];
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
    if (base != null)
      json['base'] = base;
    if (body != null)
      json['body'] = body;
    if (closedAt != null)
      json['closed_at'] = closedAt == null ? null : closedAt.toUtc().toIso8601String();
    if (comments != null)
      json['comments'] = comments;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (diffUrl != null)
      json['diff_url'] = diffUrl;
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (head != null)
      json['head'] = head;
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (id != null)
      json['id'] = id;
    if (labels != null)
      json['labels'] = labels;
    if (mergeBase != null)
      json['merge_base'] = mergeBase;
    if (mergeCommitSha != null)
      json['merge_commit_sha'] = mergeCommitSha;
    if (mergeable != null)
      json['mergeable'] = mergeable;
    if (merged != null)
      json['merged'] = merged;
    if (mergedAt != null)
      json['merged_at'] = mergedAt == null ? null : mergedAt.toUtc().toIso8601String();
    if (mergedBy != null)
      json['merged_by'] = mergedBy;
    if (milestone != null)
      json['milestone'] = milestone;
    if (number != null)
      json['number'] = number;
    if (patchUrl != null)
      json['patch_url'] = patchUrl;
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

  static List<PullRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequest>() : json.map((value) => PullRequest.fromJson(value)).toList();
  }

  static Map<String, PullRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PullRequest-objects as value to a dart map
  static Map<String, List<PullRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PullRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PullRequest.listFromJson(value);
       });
     }
     return map;
  }
}

