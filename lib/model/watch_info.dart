part of gitea_openapi;

class WatchInfo {
  
  DateTime createdAt = null;
  
  bool ignored = null;
  
  Object reason = null;
  
  String repositoryUrl = null;
  
  bool subscribed = null;
  
  String url = null;
  WatchInfo();

  @override
  String toString() {
    return 'WatchInfo[createdAt=$createdAt, ignored=$ignored, reason=$reason, repositoryUrl=$repositoryUrl, subscribed=$subscribed, url=$url, ]';
  }

  WatchInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    ignored = json['ignored'];
    reason = json['reason'];
    repositoryUrl = json['repository_url'];
    subscribed = json['subscribed'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (ignored != null)
      json['ignored'] = ignored;
    if (reason != null)
      json['reason'] = reason;
    if (repositoryUrl != null)
      json['repository_url'] = repositoryUrl;
    if (subscribed != null)
      json['subscribed'] = subscribed;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WatchInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<WatchInfo>() : json.map((value) => WatchInfo.fromJson(value)).toList();
  }

  static Map<String, WatchInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WatchInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WatchInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WatchInfo-objects as value to a dart map
  static Map<String, List<WatchInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WatchInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WatchInfo.listFromJson(value);
       });
     }
     return map;
  }
}

