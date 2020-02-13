part of openapi.api;

class ContentsResponse {
  
  FileLinksResponse links = null;
  /* `content` is populated when `type` is `file`, otherwise null */
  String content = null;
  
  String downloadUrl = null;
  /* `encoding` is populated when `type` is `file`, otherwise null */
  String encoding = null;
  
  String gitUrl = null;
  
  String htmlUrl = null;
  
  String name = null;
  
  String path = null;
  
  String sha = null;
  
  int size = null;
  /* `submodule_git_url` is populated when `type` is `submodule`, otherwise null */
  String submoduleGitUrl = null;
  /* `target` is populated when `type` is `symlink`, otherwise null */
  String target = null;
  /* `type` will be `file`, `dir`, `symlink`, or `submodule` */
  String type = null;
  
  String url = null;
  ContentsResponse();

  @override
  String toString() {
    return 'ContentsResponse[links=$links, content=$content, downloadUrl=$downloadUrl, encoding=$encoding, gitUrl=$gitUrl, htmlUrl=$htmlUrl, name=$name, path=$path, sha=$sha, size=$size, submoduleGitUrl=$submoduleGitUrl, target=$target, type=$type, url=$url, ]';
  }

  ContentsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = (json['_links'] == null) ?
      null :
      FileLinksResponse.fromJson(json['_links']);
    content = json['content'];
    downloadUrl = json['download_url'];
    encoding = json['encoding'];
    gitUrl = json['git_url'];
    htmlUrl = json['html_url'];
    name = json['name'];
    path = json['path'];
    sha = json['sha'];
    size = json['size'];
    submoduleGitUrl = json['submodule_git_url'];
    target = json['target'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (content != null)
      json['content'] = content;
    if (downloadUrl != null)
      json['download_url'] = downloadUrl;
    if (encoding != null)
      json['encoding'] = encoding;
    if (gitUrl != null)
      json['git_url'] = gitUrl;
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    if (sha != null)
      json['sha'] = sha;
    if (size != null)
      json['size'] = size;
    if (submoduleGitUrl != null)
      json['submodule_git_url'] = submoduleGitUrl;
    if (target != null)
      json['target'] = target;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ContentsResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ContentsResponse>() : json.map((value) => ContentsResponse.fromJson(value)).toList();
  }

  static Map<String, ContentsResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContentsResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContentsResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContentsResponse-objects as value to a dart map
  static Map<String, List<ContentsResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContentsResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContentsResponse.listFromJson(value);
       });
     }
     return map;
  }
}

