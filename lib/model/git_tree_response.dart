part of openapi.api;

class GitTreeResponse {
  
  int page = null;
  
  String sha = null;
  
  int totalCount = null;
  
  List<GitEntry> tree = [];
  
  bool truncated = null;
  
  String url = null;
  GitTreeResponse();

  @override
  String toString() {
    return 'GitTreeResponse[page=$page, sha=$sha, totalCount=$totalCount, tree=$tree, truncated=$truncated, url=$url, ]';
  }

  GitTreeResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    page = json['page'];
    sha = json['sha'];
    totalCount = json['total_count'];
    tree = (json['tree'] == null) ?
      null :
      GitEntry.listFromJson(json['tree']);
    truncated = json['truncated'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (page != null)
      json['page'] = page;
    if (sha != null)
      json['sha'] = sha;
    if (totalCount != null)
      json['total_count'] = totalCount;
    if (tree != null)
      json['tree'] = tree;
    if (truncated != null)
      json['truncated'] = truncated;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitTreeResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<GitTreeResponse>() : json.map((value) => GitTreeResponse.fromJson(value)).toList();
  }

  static Map<String, GitTreeResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitTreeResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitTreeResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GitTreeResponse-objects as value to a dart map
  static Map<String, List<GitTreeResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GitTreeResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GitTreeResponse.listFromJson(value);
       });
     }
     return map;
  }
}

