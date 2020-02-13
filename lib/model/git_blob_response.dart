part of gitea_openapi;

class GitBlobResponse {
  
  String content = null;
  
  String encoding = null;
  
  String sha = null;
  
  int size = null;
  
  String url = null;
  GitBlobResponse();

  @override
  String toString() {
    return 'GitBlobResponse[content=$content, encoding=$encoding, sha=$sha, size=$size, url=$url, ]';
  }

  GitBlobResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    encoding = json['encoding'];
    sha = json['sha'];
    size = json['size'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (encoding != null)
      json['encoding'] = encoding;
    if (sha != null)
      json['sha'] = sha;
    if (size != null)
      json['size'] = size;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<GitBlobResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<GitBlobResponse>() : json.map((value) => GitBlobResponse.fromJson(value)).toList();
  }

  static Map<String, GitBlobResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitBlobResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitBlobResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GitBlobResponse-objects as value to a dart map
  static Map<String, List<GitBlobResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GitBlobResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GitBlobResponse.listFromJson(value);
       });
     }
     return map;
  }
}

