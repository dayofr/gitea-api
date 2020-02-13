part of openapi.api;

class CreateIssueCommentOption {
  
  String body = null;
  CreateIssueCommentOption();

  @override
  String toString() {
    return 'CreateIssueCommentOption[body=$body, ]';
  }

  CreateIssueCommentOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    return json;
  }

  static List<CreateIssueCommentOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateIssueCommentOption>() : json.map((value) => CreateIssueCommentOption.fromJson(value)).toList();
  }

  static Map<String, CreateIssueCommentOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateIssueCommentOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateIssueCommentOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateIssueCommentOption-objects as value to a dart map
  static Map<String, List<CreateIssueCommentOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateIssueCommentOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateIssueCommentOption.listFromJson(value);
       });
     }
     return map;
  }
}

