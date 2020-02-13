part of gitea_openapi;

class PullRequestMeta {
  
  bool merged = null;
  
  DateTime mergedAt = null;
  PullRequestMeta();

  @override
  String toString() {
    return 'PullRequestMeta[merged=$merged, mergedAt=$mergedAt, ]';
  }

  PullRequestMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    merged = json['merged'];
    mergedAt = (json['merged_at'] == null) ?
      null :
      DateTime.parse(json['merged_at']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (merged != null)
      json['merged'] = merged;
    if (mergedAt != null)
      json['merged_at'] = mergedAt == null ? null : mergedAt.toUtc().toIso8601String();
    return json;
  }

  static List<PullRequestMeta> listFromJson(List<dynamic> json) {
    return json == null ? List<PullRequestMeta>() : json.map((value) => PullRequestMeta.fromJson(value)).toList();
  }

  static Map<String, PullRequestMeta> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PullRequestMeta>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PullRequestMeta.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PullRequestMeta-objects as value to a dart map
  static Map<String, List<PullRequestMeta>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PullRequestMeta>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PullRequestMeta.listFromJson(value);
       });
     }
     return map;
  }
}

