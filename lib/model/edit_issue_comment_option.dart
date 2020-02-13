part of gitea_openapi;

class EditIssueCommentOption {
  
  String body = null;
  EditIssueCommentOption();

  @override
  String toString() {
    return 'EditIssueCommentOption[body=$body, ]';
  }

  EditIssueCommentOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    return json;
  }

  static List<EditIssueCommentOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditIssueCommentOption>() : json.map((value) => EditIssueCommentOption.fromJson(value)).toList();
  }

  static Map<String, EditIssueCommentOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditIssueCommentOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditIssueCommentOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditIssueCommentOption-objects as value to a dart map
  static Map<String, List<EditIssueCommentOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditIssueCommentOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditIssueCommentOption.listFromJson(value);
       });
     }
     return map;
  }
}

