part of openapi.api;

class MigrateRepoForm {
  
  String authPassword = null;
  
  String authUsername = null;
  
  String cloneAddr = null;
  
  String description = null;
  
  bool issues = null;
  
  bool labels = null;
  
  bool milestones = null;
  
  bool mirror = null;
  
  bool private = null;
  
  bool pullRequests = null;
  
  bool releases = null;
  
  String repoName = null;
  
  int uid = null;
  
  bool wiki = null;
  MigrateRepoForm();

  @override
  String toString() {
    return 'MigrateRepoForm[authPassword=$authPassword, authUsername=$authUsername, cloneAddr=$cloneAddr, description=$description, issues=$issues, labels=$labels, milestones=$milestones, mirror=$mirror, private=$private, pullRequests=$pullRequests, releases=$releases, repoName=$repoName, uid=$uid, wiki=$wiki, ]';
  }

  MigrateRepoForm.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    authPassword = json['auth_password'];
    authUsername = json['auth_username'];
    cloneAddr = json['clone_addr'];
    description = json['description'];
    issues = json['issues'];
    labels = json['labels'];
    milestones = json['milestones'];
    mirror = json['mirror'];
    private = json['private'];
    pullRequests = json['pull_requests'];
    releases = json['releases'];
    repoName = json['repo_name'];
    uid = json['uid'];
    wiki = json['wiki'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (authPassword != null)
      json['auth_password'] = authPassword;
    if (authUsername != null)
      json['auth_username'] = authUsername;
    if (cloneAddr != null)
      json['clone_addr'] = cloneAddr;
    if (description != null)
      json['description'] = description;
    if (issues != null)
      json['issues'] = issues;
    if (labels != null)
      json['labels'] = labels;
    if (milestones != null)
      json['milestones'] = milestones;
    if (mirror != null)
      json['mirror'] = mirror;
    if (private != null)
      json['private'] = private;
    if (pullRequests != null)
      json['pull_requests'] = pullRequests;
    if (releases != null)
      json['releases'] = releases;
    if (repoName != null)
      json['repo_name'] = repoName;
    if (uid != null)
      json['uid'] = uid;
    if (wiki != null)
      json['wiki'] = wiki;
    return json;
  }

  static List<MigrateRepoForm> listFromJson(List<dynamic> json) {
    return json == null ? List<MigrateRepoForm>() : json.map((value) => MigrateRepoForm.fromJson(value)).toList();
  }

  static Map<String, MigrateRepoForm> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MigrateRepoForm>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MigrateRepoForm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MigrateRepoForm-objects as value to a dart map
  static Map<String, List<MigrateRepoForm>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MigrateRepoForm>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MigrateRepoForm.listFromJson(value);
       });
     }
     return map;
  }
}

