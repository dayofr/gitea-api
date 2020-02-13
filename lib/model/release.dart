part of openapi.api;

class Release {
  
  List<Attachment> assets = [];
  
  User author = null;
  
  String body = null;
  
  DateTime createdAt = null;
  
  bool draft = null;
  
  int id = null;
  
  String name = null;
  
  bool prerelease = null;
  
  DateTime publishedAt = null;
  
  String tagName = null;
  
  String tarballUrl = null;
  
  String targetCommitish = null;
  
  String url = null;
  
  String zipballUrl = null;
  Release();

  @override
  String toString() {
    return 'Release[assets=$assets, author=$author, body=$body, createdAt=$createdAt, draft=$draft, id=$id, name=$name, prerelease=$prerelease, publishedAt=$publishedAt, tagName=$tagName, tarballUrl=$tarballUrl, targetCommitish=$targetCommitish, url=$url, zipballUrl=$zipballUrl, ]';
  }

  Release.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assets = (json['assets'] == null) ?
      null :
      Attachment.listFromJson(json['assets']);
    author = (json['author'] == null) ?
      null :
      User.fromJson(json['author']);
    body = json['body'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    draft = json['draft'];
    id = json['id'];
    name = json['name'];
    prerelease = json['prerelease'];
    publishedAt = (json['published_at'] == null) ?
      null :
      DateTime.parse(json['published_at']);
    tagName = json['tag_name'];
    tarballUrl = json['tarball_url'];
    targetCommitish = json['target_commitish'];
    url = json['url'];
    zipballUrl = json['zipball_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assets != null)
      json['assets'] = assets;
    if (author != null)
      json['author'] = author;
    if (body != null)
      json['body'] = body;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (draft != null)
      json['draft'] = draft;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (prerelease != null)
      json['prerelease'] = prerelease;
    if (publishedAt != null)
      json['published_at'] = publishedAt == null ? null : publishedAt.toUtc().toIso8601String();
    if (tagName != null)
      json['tag_name'] = tagName;
    if (tarballUrl != null)
      json['tarball_url'] = tarballUrl;
    if (targetCommitish != null)
      json['target_commitish'] = targetCommitish;
    if (url != null)
      json['url'] = url;
    if (zipballUrl != null)
      json['zipball_url'] = zipballUrl;
    return json;
  }

  static List<Release> listFromJson(List<dynamic> json) {
    return json == null ? List<Release>() : json.map((value) => Release.fromJson(value)).toList();
  }

  static Map<String, Release> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Release>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Release.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Release-objects as value to a dart map
  static Map<String, List<Release>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Release>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Release.listFromJson(value);
       });
     }
     return map;
  }
}

