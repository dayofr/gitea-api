part of openapi.api;

class DeleteFileOptions {
  
  Identity author = null;
  /* branch (optional) to base this file from. if not given, the default branch is used */
  String branch = null;
  
  Identity committer = null;
  
  CommitDateOptions dates = null;
  /* message (optional) for the commit of this file. if not supplied, a default message will be used */
  String message = null;
  /* new_branch (optional) will make a new branch from `branch` before creating the file */
  String newBranch = null;
  /* sha is the SHA for the file that already exists */
  String sha = null;
  DeleteFileOptions();

  @override
  String toString() {
    return 'DeleteFileOptions[author=$author, branch=$branch, committer=$committer, dates=$dates, message=$message, newBranch=$newBranch, sha=$sha, ]';
  }

  DeleteFileOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      Identity.fromJson(json['author']);
    branch = json['branch'];
    committer = (json['committer'] == null) ?
      null :
      Identity.fromJson(json['committer']);
    dates = (json['dates'] == null) ?
      null :
      CommitDateOptions.fromJson(json['dates']);
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
    if (dates != null)
      json['dates'] = dates;
    if (message != null)
      json['message'] = message;
    if (newBranch != null)
      json['new_branch'] = newBranch;
    if (sha != null)
      json['sha'] = sha;
    return json;
  }

  static List<DeleteFileOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<DeleteFileOptions>() : json.map((value) => DeleteFileOptions.fromJson(value)).toList();
  }

  static Map<String, DeleteFileOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeleteFileOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeleteFileOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeleteFileOptions-objects as value to a dart map
  static Map<String, List<DeleteFileOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeleteFileOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeleteFileOptions.listFromJson(value);
       });
     }
     return map;
  }
}

