part of openapi.api;

class RepoCommit {
  
  CommitUser author = null;
  
  CommitUser committer = null;
  
  String message = null;
  
  CommitMeta tree = null;
  
  String url = null;
  RepoCommit();

  @override
  String toString() {
    return 'RepoCommit[author=$author, committer=$committer, message=$message, tree=$tree, url=$url, ]';
  }

  RepoCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      CommitUser.fromJson(json['author']);
    committer = (json['committer'] == null) ?
      null :
      CommitUser.fromJson(json['committer']);
    message = json['message'];
    tree = (json['tree'] == null) ?
      null :
      CommitMeta.fromJson(json['tree']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (committer != null)
      json['committer'] = committer;
    if (message != null)
      json['message'] = message;
    if (tree != null)
      json['tree'] = tree;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<RepoCommit> listFromJson(List<dynamic> json) {
    return json == null ? List<RepoCommit>() : json.map((value) => RepoCommit.fromJson(value)).toList();
  }

  static Map<String, RepoCommit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RepoCommit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RepoCommit.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RepoCommit-objects as value to a dart map
  static Map<String, List<RepoCommit>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RepoCommit>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RepoCommit.listFromJson(value);
       });
     }
     return map;
  }
}

