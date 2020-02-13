part of openapi.api;

class PayloadCommit {
  
  List<String> added = [];
  
  PayloadUser author = null;
  
  PayloadUser committer = null;
  /* sha1 hash of the commit */
  String id = null;
  
  String message = null;
  
  List<String> modified = [];
  
  List<String> removed = [];
  
  DateTime timestamp = null;
  
  String url = null;
  
  PayloadCommitVerification verification = null;
  PayloadCommit();

  @override
  String toString() {
    return 'PayloadCommit[added=$added, author=$author, committer=$committer, id=$id, message=$message, modified=$modified, removed=$removed, timestamp=$timestamp, url=$url, verification=$verification, ]';
  }

  PayloadCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    added = (json['added'] == null) ?
      null :
      (json['added'] as List).cast<String>();
    author = (json['author'] == null) ?
      null :
      PayloadUser.fromJson(json['author']);
    committer = (json['committer'] == null) ?
      null :
      PayloadUser.fromJson(json['committer']);
    id = json['id'];
    message = json['message'];
    modified = (json['modified'] == null) ?
      null :
      (json['modified'] as List).cast<String>();
    removed = (json['removed'] == null) ?
      null :
      (json['removed'] as List).cast<String>();
    timestamp = (json['timestamp'] == null) ?
      null :
      DateTime.parse(json['timestamp']);
    url = json['url'];
    verification = (json['verification'] == null) ?
      null :
      PayloadCommitVerification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (added != null)
      json['added'] = added;
    if (author != null)
      json['author'] = author;
    if (committer != null)
      json['committer'] = committer;
    if (id != null)
      json['id'] = id;
    if (message != null)
      json['message'] = message;
    if (modified != null)
      json['modified'] = modified;
    if (removed != null)
      json['removed'] = removed;
    if (timestamp != null)
      json['timestamp'] = timestamp == null ? null : timestamp.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    if (verification != null)
      json['verification'] = verification;
    return json;
  }

  static List<PayloadCommit> listFromJson(List<dynamic> json) {
    return json == null ? List<PayloadCommit>() : json.map((value) => PayloadCommit.fromJson(value)).toList();
  }

  static Map<String, PayloadCommit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PayloadCommit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PayloadCommit.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PayloadCommit-objects as value to a dart map
  static Map<String, List<PayloadCommit>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PayloadCommit>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PayloadCommit.listFromJson(value);
       });
     }
     return map;
  }
}

