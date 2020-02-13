part of gitea_openapi;

class CreateReleaseOption {
  
  String body = null;
  
  bool draft = null;
  
  String name = null;
  
  bool prerelease = null;
  
  String tagName = null;
  
  String targetCommitish = null;
  CreateReleaseOption();

  @override
  String toString() {
    return 'CreateReleaseOption[body=$body, draft=$draft, name=$name, prerelease=$prerelease, tagName=$tagName, targetCommitish=$targetCommitish, ]';
  }

  CreateReleaseOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    draft = json['draft'];
    name = json['name'];
    prerelease = json['prerelease'];
    tagName = json['tag_name'];
    targetCommitish = json['target_commitish'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (body != null)
      json['body'] = body;
    if (draft != null)
      json['draft'] = draft;
    if (name != null)
      json['name'] = name;
    if (prerelease != null)
      json['prerelease'] = prerelease;
    if (tagName != null)
      json['tag_name'] = tagName;
    if (targetCommitish != null)
      json['target_commitish'] = targetCommitish;
    return json;
  }

  static List<CreateReleaseOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateReleaseOption>() : json.map((value) => CreateReleaseOption.fromJson(value)).toList();
  }

  static Map<String, CreateReleaseOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateReleaseOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateReleaseOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateReleaseOption-objects as value to a dart map
  static Map<String, List<CreateReleaseOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateReleaseOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateReleaseOption.listFromJson(value);
       });
     }
     return map;
  }
}

