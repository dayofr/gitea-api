part of openapi.api;

class NotificationSubject {
  
  String latestCommentUrl = null;
  
  String title = null;
  
  String type = null;
  
  String url = null;
  NotificationSubject();

  @override
  String toString() {
    return 'NotificationSubject[latestCommentUrl=$latestCommentUrl, title=$title, type=$type, url=$url, ]';
  }

  NotificationSubject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latestCommentUrl = json['latest_comment_url'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (latestCommentUrl != null)
      json['latest_comment_url'] = latestCommentUrl;
    if (title != null)
      json['title'] = title;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<NotificationSubject> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationSubject>() : json.map((value) => NotificationSubject.fromJson(value)).toList();
  }

  static Map<String, NotificationSubject> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationSubject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationSubject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NotificationSubject-objects as value to a dart map
  static Map<String, List<NotificationSubject>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NotificationSubject>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NotificationSubject.listFromJson(value);
       });
     }
     return map;
  }
}

