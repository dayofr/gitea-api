part of openapi.api;

class ExternalTracker {
  /* External Issue Tracker URL Format. Use the placeholders {user}, {repo} and {index} for the username, repository name and issue index. */
  String externalTrackerFormat = null;
  /* External Issue Tracker Number Format, either `numeric` or `alphanumeric` */
  String externalTrackerStyle = null;
  /* URL of external issue tracker. */
  String externalTrackerUrl = null;
  ExternalTracker();

  @override
  String toString() {
    return 'ExternalTracker[externalTrackerFormat=$externalTrackerFormat, externalTrackerStyle=$externalTrackerStyle, externalTrackerUrl=$externalTrackerUrl, ]';
  }

  ExternalTracker.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    externalTrackerFormat = json['external_tracker_format'];
    externalTrackerStyle = json['external_tracker_style'];
    externalTrackerUrl = json['external_tracker_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (externalTrackerFormat != null)
      json['external_tracker_format'] = externalTrackerFormat;
    if (externalTrackerStyle != null)
      json['external_tracker_style'] = externalTrackerStyle;
    if (externalTrackerUrl != null)
      json['external_tracker_url'] = externalTrackerUrl;
    return json;
  }

  static List<ExternalTracker> listFromJson(List<dynamic> json) {
    return json == null ? List<ExternalTracker>() : json.map((value) => ExternalTracker.fromJson(value)).toList();
  }

  static Map<String, ExternalTracker> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExternalTracker>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExternalTracker.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExternalTracker-objects as value to a dart map
  static Map<String, List<ExternalTracker>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExternalTracker>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExternalTracker.listFromJson(value);
       });
     }
     return map;
  }
}

