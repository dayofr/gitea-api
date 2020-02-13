part of gitea_openapi;

class UpdateFileOptions {
  
  Identity author = null;
  /* branch (optional) to base this file from. if not given, the default branch is used */
  String branch = null;
  
  Identity committer = null;
  /* content must be base64 encoded */
  String content = null;
  
  CommitDateOptions dates = null;
  /* from_path (optional) is the path of the original file which will be moved/renamed to the path in the URL */
  String fromPath = null;
  /* message (optional) for the commit of this file. if not supplied, a default message will be used */
  String message = null;
  /* new_branch (optional) will make a new branch from `branch` before creating the file */
  String newBranch = null;
  /* sha is the SHA for the file that already exists */
  String sha = null;
  UpdateFileOptions();

  @override
  String toString() {
    return 'UpdateFileOptions[author=$author, branch=$branch, committer=$committer, content=$content, dates=$dates, fromPath=$fromPath, message=$message, newBranch=$newBranch, sha=$sha, ]';
  }

  UpdateFileOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      Identity.fromJson(json['author']);
    branch = json['branch'];
    committer = (json['committer'] == null) ?
      null :
      Identity.fromJson(json['committer']);
    content = json['content'];
    dates = (json['dates'] == null) ?
      null :
      CommitDateOptions.fromJson(json['dates']);
    fromPath = json['from_path'];
    message = json['message'];
    newBranch = json['new_branch'];
    sha = json['sha'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author;
    if (branch != null)
      json['branch'] = branch;
    if (committer != null)
      json['committer'] = committer;
    if (content != null)
      json['content'] = content;
    if (dates != null)
      json['dates'] = dates;
    if (fromPath != null)
      json['from_path'] = fromPath;
    if (message != null)
      json['message'] = message;
    if (newBranch != null)
      json['new_branch'] = newBranch;
    if (sha != null)
      json['sha'] = sha;
    return json;
  }

  static List<UpdateFileOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateFileOptions>() : json.map((value) => UpdateFileOptions.fromJson(value)).toList();
  }

  static Map<String, UpdateFileOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateFileOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateFileOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateFileOptions-objects as value to a dart map
  static Map<String, List<UpdateFileOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdateFileOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdateFileOptions.listFromJson(value);
       });
     }
     return map;
  }
}

