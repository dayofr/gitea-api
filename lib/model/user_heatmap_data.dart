part of gitea_openapi;

class UserHeatmapData {
  
  int contributions = null;
  /* TimeStamp defines a timestamp */
  int timestamp = null;
  UserHeatmapData();

  @override
  String toString() {
    return 'UserHeatmapData[contributions=$contributions, timestamp=$timestamp, ]';
  }

  UserHeatmapData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contributions = json['contributions'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contributions != null)
      json['contributions'] = contributions;
    if (timestamp != null)
      json['timestamp'] = timestamp;
    return json;
  }

  static List<UserHeatmapData> listFromJson(List<dynamic> json) {
    return json == null ? List<UserHeatmapData>() : json.map((value) => UserHeatmapData.fromJson(value)).toList();
  }

  static Map<String, UserHeatmapData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserHeatmapData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserHeatmapData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserHeatmapData-objects as value to a dart map
  static Map<String, List<UserHeatmapData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserHeatmapData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserHeatmapData.listFromJson(value);
       });
     }
     return map;
  }
}

