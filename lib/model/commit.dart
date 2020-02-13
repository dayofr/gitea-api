part of openapi.api;

class Commit {
  
  User author = null;
  
  RepoCommit commit = null;
  
  User committer = null;
  
  String htmlUrl = null;
  
  List<CommitMeta> parents = [];
  
  String sha = null;
  
  String url = null;
  Commit();

  @override
  String toString() {
    return 'Commit[author=$author, commit=$commit, committer=$committer, htmlUrl=$htmlUrl, parents=$parents, sha=$sha, url=$url, ]';
  }

  Commit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      User.fromJson(json['author']);
    commit = (json['commit'] == null) ?
      null :
      RepoCommit.fromJson(json['commit']);
    committer = (json['committer'] == null) ?
      null :
      User.fromJson(json['committer']);
    htmlUrl = json['html_url'];
    parents = (json['parents'] == null) ?
      null :
      CommitMeta.listFromJson(json['parents']);
    sha = json['sha'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (commit != null)
      json['commit'] = commit;
    if (committer != null)
      json['committer'] = committer;
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (parents != null)
      json['parents'] = parents;
    if (sha != null)
      json['sha'] = sha;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Commit> listFromJson(List<dynamic> json) {
    return json == null ? List<Commit>() : json.map((value) => Commit.fromJson(value)).toList();
  }

  static Map<String, Commit> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Commit>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Commit.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Commit-objects as value to a dart map
  static Map<String, List<Commit>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Commit>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Commit.listFromJson(value);
       });
     }
     return map;
  }
}

