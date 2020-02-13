part of gitea_openapi;

class NotificationCount {
  
  int new_ = null;
  NotificationCount();

  @override
  String toString() {
    return 'NotificationCount[new_=$new_, ]';
  }

  NotificationCount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    new_ = json['new'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (new_ != null)
      json['new'] = new_;
    return json;
  }

  static List<NotificationCount> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationCount>() : json.map((value) => NotificationCount.fromJson(value)).toList();
  }

  static Map<String, NotificationCount> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationCount>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationCount.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NotificationCount-objects as value to a dart map
  static Map<String, List<NotificationCount>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NotificationCount>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NotificationCount.listFromJson(value);
       });
     }
     return map;
  }
}

