part of gitea_openapi;

class NotificationThread {
  
  int id = null;
  
  bool pinned = null;
  
  Repository repository = null;
  
  NotificationSubject subject = null;
  
  bool unread = null;
  
  DateTime updatedAt = null;
  
  String url = null;
  NotificationThread();

  @override
  String toString() {
    return 'NotificationThread[id=$id, pinned=$pinned, repository=$repository, subject=$subject, unread=$unread, updatedAt=$updatedAt, url=$url, ]';
  }

  NotificationThread.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    pinned = json['pinned'];
    repository = (json['repository'] == null) ?
      null :
      Repository.fromJson(json['repository']);
    subject = (json['subject'] == null) ?
      null :
      NotificationSubject.fromJson(json['subject']);
    unread = json['unread'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (pinned != null)
      json['pinned'] = pinned;
    if (repository != null)
      json['repository'] = repository;
    if (subject != null)
      json['subject'] = subject;
    if (unread != null)
      json['unread'] = unread;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<NotificationThread> listFromJson(List<dynamic> json) {
    return json == null ? List<NotificationThread>() : json.map((value) => NotificationThread.fromJson(value)).toList();
  }

  static Map<String, NotificationThread> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NotificationThread>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NotificationThread.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NotificationThread-objects as value to a dart map
  static Map<String, List<NotificationThread>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NotificationThread>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NotificationThread.listFromJson(value);
       });
     }
     return map;
  }
}

