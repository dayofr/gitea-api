part of openapi.api;

class AnnotatedTag {
  
  String message = null;
  
  AnnotatedTagObject object = null;
  
  String sha = null;
  
  String tag = null;
  
  CommitUser tagger = null;
  
  String url = null;
  
  PayloadCommitVerification verification = null;
  AnnotatedTag();

  @override
  String toString() {
    return 'AnnotatedTag[message=$message, object=$object, sha=$sha, tag=$tag, tagger=$tagger, url=$url, verification=$verification, ]';
  }

  AnnotatedTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    object = (json['object'] == null) ?
      null :
      AnnotatedTagObject.fromJson(json['object']);
    sha = json['sha'];
    tag = json['tag'];
    tagger = (json['tagger'] == null) ?
      null :
      CommitUser.fromJson(json['tagger']);
    url = json['url'];
    verification = (json['verification'] == null) ?
      null :
      PayloadCommitVerification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (object != null)
      json['object'] = object;
    if (sha != null)
      json['sha'] = sha;
    if (tag != null)
      json['tag'] = tag;
    if (tagger != null)
      json['tagger'] = tagger;
    if (url != null)
      json['url'] = url;
    if (verification != null)
      json['verification'] = verification;
    return json;
  }

  static List<AnnotatedTag> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotatedTag>() : json.map((value) => AnnotatedTag.fromJson(value)).toList();
  }

  static Map<String, AnnotatedTag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AnnotatedTag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotatedTag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotatedTag-objects as value to a dart map
  static Map<String, List<AnnotatedTag>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AnnotatedTag>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AnnotatedTag.listFromJson(value);
       });
     }
     return map;
  }
}

