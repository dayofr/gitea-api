part of gitea_openapi;

class Comment {
  
  String body = null;
  
  DateTime createdAt = null;
  
  String htmlUrl = null;
  
  int id = null;
  
  String issueUrl = null;
  
  String originalAuthor = null;
  
  int originalAuthorId = null;
  
  String pullRequestUrl = null;
  
  DateTime updatedAt = null;
  
  User user = null;
  Comment();

  @override
  String toString() {
    return 'Comment[body=$body, createdAt=$createdAt, htmlUrl=$htmlUrl, id=$id, issueUrl=$issueUrl, originalAuthor=$originalAuthor, originalAuthorId=$originalAuthorId, pullRequestUrl=$pullRequestUrl, updatedAt=$updatedAt, user=$user, ]';
  }

  Comment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    htmlUrl = json['html_url'];
    id = json['id'];
    issueUrl = json['issue_url'];
    originalAuthor = json['original_author'];
    originalAuthorId = json['original_author_id'];
    pullRequestUrl = json['pull_request_url'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (id != null)
      json['id'] = id;
    if (issueUrl != null)
      json['issue_url'] = issueUrl;
    if (originalAuthor != null)
      json['original_author'] = originalAuthor;
    if (originalAuthorId != null)
      json['original_author_id'] = originalAuthorId;
    if (pullRequestUrl != null)
      json['pull_request_url'] = pullRequestUrl;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<Comment> listFromJson(List<dynamic> json) {
    return json == null ? List<Comment>() : json.map((value) => Comment.fromJson(value)).toList();
  }

  static Map<String, Comment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Comment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Comment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Comment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Comment.listFromJson(value);
       });
     }
     return map;
  }
}

