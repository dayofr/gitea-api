part of openapi.api;

class EditGitHookOption {
  
  String content = null;
  EditGitHookOption();

  @override
  String toString() {
    return 'EditGitHookOption[content=$content, ]';
  }

  EditGitHookOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<EditGitHookOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditGitHookOption>() : json.map((value) => EditGitHookOption.fromJson(value)).toList();
  }

  static Map<String, EditGitHookOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditGitHookOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditGitHookOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditGitHookOption-objects as value to a dart map
  static Map<String, List<EditGitHookOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditGitHookOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditGitHookOption.listFromJson(value);
       });
     }
     return map;
  }
}

