part of gitea_openapi;

class CreateFileOptions {
  
  Identity author = null;
  /* branch (optional) to base this file from. if not given, the default branch is used */
  String branch = null;
  
  Identity committer = null;
  /* content must be base64 encoded */
  String content = null;
  
  CommitDateOptions dates = null;
  /* message (optional) for the commit of this file. if not supplied, a default message will be used */
  String message = null;
  /* new_branch (optional) will make a new branch from `branch` before creating the file */
  String newBranch = null;
  CreateFileOptions();

  @override
  String toString() {
    return 'CreateFileOptions[author=$author, branch=$branch, committer=$committer, content=$content, dates=$dates, message=$message, newBranch=$newBranch, ]';
  }

  CreateFileOptions.fromJson(Map<String, dynamic> json) {
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
    message = json['message'];
    newBranch = json['new_branch'];
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
    if (message != null)
      json['message'] = message;
    if (newBranch != null)
      json['new_branch'] = newBranch;
    return json;
  }

  static List<CreateFileOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateFileOptions>() : json.map((value) => CreateFileOptions.fromJson(value)).toList();
  }

  static Map<String, CreateFileOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateFileOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateFileOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateFileOptions-objects as value to a dart map
  static Map<String, List<CreateFileOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateFileOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateFileOptions.listFromJson(value);
       });
     }
     return map;
  }
}

