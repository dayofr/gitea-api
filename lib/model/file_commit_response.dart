part of openapi.api;

class FileCommitResponse {
  
  CommitUser author = null;
  
  CommitUser committer = null;
  
  String htmlUrl = null;
  
  String message = null;
  
  List<CommitMeta> parents = [];
  
  String sha = null;
  
  CommitMeta tree = null;
  
  String url = null;
  FileCommitResponse();

  @override
  String toString() {
    return 'FileCommitResponse[author=$author, committer=$committer, htmlUrl=$htmlUrl, message=$message, parents=$parents, sha=$sha, tree=$tree, url=$url, ]';
  }

  FileCommitResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      CommitUser.fromJson(json['author']);
    committer = (json['committer'] == null) ?
      null :
      CommitUser.fromJson(json['committer']);
    htmlUrl = json['html_url'];
    message = json['message'];
    parents = (json['parents'] == null) ?
      null :
      CommitMeta.listFromJson(json['parents']);
    sha = json['sha'];
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
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (message != null)
      json['message'] = message;
    if (parents != null)
      json['parents'] = parents;
    if (sha != null)
      json['sha'] = sha;
    if (tree != null)
      json['tree'] = tree;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<FileCommitResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FileCommitResponse>() : json.map((value) => FileCommitResponse.fromJson(value)).toList();
  }

  static Map<String, FileCommitResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileCommitResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileCommitResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileCommitResponse-objects as value to a dart map
  static Map<String, List<FileCommitResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FileCommitResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FileCommitResponse.listFromJson(value);
       });
     }
     return map;
  }
}

