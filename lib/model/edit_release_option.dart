part of gitea_openapi;

class EditReleaseOption {
  
  String body = null;
  
  bool draft = null;
  
  String name = null;
  
  bool prerelease = null;
  
  String tagName = null;
  
  String targetCommitish = null;
  EditReleaseOption();

  @override
  String toString() {
    return 'EditReleaseOption[body=$body, draft=$draft, name=$name, prerelease=$prerelease, tagName=$tagName, targetCommitish=$targetCommitish, ]';
  }

  EditReleaseOption.fromJson(Map<String, dynamic> json) {
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

  static List<EditReleaseOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditReleaseOption>() : json.map((value) => EditReleaseOption.fromJson(value)).toList();
  }

  static Map<String, EditReleaseOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditReleaseOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditReleaseOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditReleaseOption-objects as value to a dart map
  static Map<String, List<EditReleaseOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditReleaseOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditReleaseOption.listFromJson(value);
       });
     }
     return map;
  }
}

