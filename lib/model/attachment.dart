part of openapi.api;

class Attachment {
  
  String browserDownloadUrl = null;
  
  DateTime createdAt = null;
  
  int downloadCount = null;
  
  int id = null;
  
  String name = null;
  
  int size = null;
  
  String uuid = null;
  Attachment();

  @override
  String toString() {
    return 'Attachment[browserDownloadUrl=$browserDownloadUrl, createdAt=$createdAt, downloadCount=$downloadCount, id=$id, name=$name, size=$size, uuid=$uuid, ]';
  }

  Attachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    browserDownloadUrl = json['browser_download_url'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    downloadCount = json['download_count'];
    id = json['id'];
    name = json['name'];
    size = json['size'];
    uuid = json['uuid'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (browserDownloadUrl != null)
      json['browser_download_url'] = browserDownloadUrl;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (downloadCount != null)
      json['download_count'] = downloadCount;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (size != null)
      json['size'] = size;
    if (uuid != null)
      json['uuid'] = uuid;
    return json;
  }

  static List<Attachment> listFromJson(List<dynamic> json) {
    return json == null ? List<Attachment>() : json.map((value) => Attachment.fromJson(value)).toList();
  }

  static Map<String, Attachment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Attachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Attachment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Attachment-objects as value to a dart map
  static Map<String, List<Attachment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Attachment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Attachment.listFromJson(value);
       });
     }
     return map;
  }
}

