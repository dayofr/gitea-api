part of openapi.api;

class FileLinksResponse {
  
  String git = null;
  
  String html = null;
  
  String self = null;
  FileLinksResponse();

  @override
  String toString() {
    return 'FileLinksResponse[git=$git, html=$html, self=$self, ]';
  }

  FileLinksResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    git = json['git'];
    html = json['html'];
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (git != null)
      json['git'] = git;
    if (html != null)
      json['html'] = html;
    if (self != null)
      json['self'] = self;
    return json;
  }

  static List<FileLinksResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<FileLinksResponse>() : json.map((value) => FileLinksResponse.fromJson(value)).toList();
  }

  static Map<String, FileLinksResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileLinksResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileLinksResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileLinksResponse-objects as value to a dart map
  static Map<String, List<FileLinksResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FileLinksResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FileLinksResponse.listFromJson(value);
       });
     }
     return map;
  }
}

