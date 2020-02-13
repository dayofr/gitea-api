part of openapi.api;

class FileResponse {
  
  FileCommitResponse commit = null;
  
  ContentsResponse content = null;
  
  PayloadCommitVerification verification = null;
  FileResponse();

  @override
  String toString() {
    return 'FileResponse[commit=$commit, content=$content, verification=$verification, ]';
  }

  FileResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commit = (json['commit'] == null) ?
      null :
      FileCommitResponse.fromJson(json['commit']);
    content = (json['content'] == null) ?
      null :
      ContentsResponse.fromJson(json['content']);
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

  static List<FileResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FileResponse>() : json.map((value) => FileResponse.fromJson(value)).toList();
  }

  static Map<String, FileResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileResponse-objects as value to a dart map
  static Map<String, List<FileResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FileResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FileResponse.listFromJson(value);
       });
     }
     return map;
  }
}

