part of gitea_openapi;

class GitHook {
  
  String content = null;
  
  bool isActive = null;
  
  String name = null;
  GitHook();

  @override
  String toString() {
    return 'GitHook[content=$content, isActive=$isActive, name=$name, ]';
  }

  GitHook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    isActive = json['is_active'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (isActive != null)
      json['is_active'] = isActive;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<GitHook> listFromJson(List<dynamic> json) {
    return json == null ? List<GitHook>() : json.map((value) => GitHook.fromJson(value)).toList();
  }

  static Map<String, GitHook> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitHook>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitHook.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GitHook-objects as value to a dart map
  static Map<String, List<GitHook>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GitHook>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GitHook.listFromJson(value);
       });
     }
     return map;
  }
}

