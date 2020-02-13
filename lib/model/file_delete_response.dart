part of gitea_openapi;

class FileDeleteResponse {
  
  FileCommitResponse commit = null;
  
  Object content = null;
  
  PayloadCommitVerification verification = null;
  FileDeleteResponse();

  @override
  String toString() {
    return 'FileDeleteResponse[commit=$commit, content=$content, verification=$verification, ]';
  }

  FileDeleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commit = (json['commit'] == null) ?
      null :
      FileCommitResponse.fromJson(json['commit']);
    content = json['content'];
    verification = (json['verification'] == null) ?
      null :
      PayloadCommitVerification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commit != null)
      json['commit'] = commit;
    if (content != null)
      json['content'] = content;
    if (verification != null)
      json['verification'] = verification;
    return json;
  }

  static List<FileDeleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FileDeleteResponse>() : json.map((value) => FileDeleteResponse.fromJson(value)).toList();
  }

  static Map<String, FileDeleteResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileDeleteResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileDeleteResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileDeleteResponse-objects as value to a dart map
  static Map<String, List<FileDeleteResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FileDeleteResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FileDeleteResponse.listFromJson(value);
       });
     }
     return map;
  }
}

