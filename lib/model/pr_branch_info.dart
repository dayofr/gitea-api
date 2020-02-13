part of gitea_openapi;

class PRBranchInfo {
  
  String label = null;
  
  String ref = null;
  
  Repository repo = null;
  
  int repoId = null;
  
  String sha = null;
  PRBranchInfo();

  @override
  String toString() {
    return 'PRBranchInfo[label=$label, ref=$ref, repo=$repo, repoId=$repoId, sha=$sha, ]';
  }

  PRBranchInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    ref = json['ref'];
    repo = (json['repo'] == null) ?
      null :
      Repository.fromJson(json['repo']);
    repoId = json['repo_id'];
    sha = json['sha'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (label != null)
      json['label'] = label;
    if (ref != null)
      json['ref'] = ref;
    if (repo != null)
      json['repo'] = repo;
    if (repoId != null)
      json['repo_id'] = repoId;
    if (sha != null)
      json['sha'] = sha;
    return json;
  }

  static List<PRBranchInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<PRBranchInfo>() : json.map((value) => PRBranchInfo.fromJson(value)).toList();
  }

  static Map<String, PRBranchInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PRBranchInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PRBranchInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PRBranchInfo-objects as value to a dart map
  static Map<String, List<PRBranchInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PRBranchInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PRBranchInfo.listFromJson(value);
       });
     }
     return map;
  }
}

