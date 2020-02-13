part of openapi.api;

class InternalTracker {
  /* Let only contributors track time (Built-in issue tracker) */
  bool allowOnlyContributorsToTrackTime = null;
  /* Enable dependencies for issues and pull requests (Built-in issue tracker) */
  bool enableIssueDependencies = null;
  /* Enable time tracking (Built-in issue tracker) */
  bool enableTimeTracker = null;
  InternalTracker();

  @override
  String toString() {
    return 'InternalTracker[allowOnlyContributorsToTrackTime=$allowOnlyContributorsToTrackTime, enableIssueDependencies=$enableIssueDependencies, enableTimeTracker=$enableTimeTracker, ]';
  }

  InternalTracker.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowOnlyContributorsToTrackTime = json['allow_only_contributors_to_track_time'];
    enableIssueDependencies = json['enable_issue_dependencies'];
    enableTimeTracker = json['enable_time_tracker'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowOnlyContributorsToTrackTime != null)
      json['allow_only_contributors_to_track_time'] = allowOnlyContributorsToTrackTime;
    if (enableIssueDependencies != null)
      json['enable_issue_dependencies'] = enableIssueDependencies;
    if (enableTimeTracker != null)
      json['enable_time_tracker'] = enableTimeTracker;
    return json;
  }

  static List<InternalTracker> listFromJson(List<dynamic> json) {
    return json == null ? List<InternalTracker>() : json.map((value) => InternalTracker.fromJson(value)).toList();
  }

  static Map<String, InternalTracker> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InternalTracker>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InternalTracker.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InternalTracker-objects as value to a dart map
  static Map<String, List<InternalTracker>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InternalTracker>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InternalTracker.listFromJson(value);
       });
     }
     return map;
  }
}

