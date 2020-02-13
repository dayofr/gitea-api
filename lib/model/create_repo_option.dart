part of gitea_openapi;

class CreateRepoOption {
  /* Whether the repository should be auto-intialized? */
  bool autoInit = null;
  /* Description of the repository to create */
  String description = null;
  /* Gitignores to use */
  String gitignores = null;
  /* Issue Label set to use */
  String issueLabels = null;
  /* License to use */
  String license = null;
  /* Name of the repository to create */
  String name = null;
  /* Whether the repository is private */
  bool private = null;
  /* Readme of the repository to create */
  String readme = null;
  CreateRepoOption();

  @override
  String toString() {
    return 'CreateRepoOption[autoInit=$autoInit, description=$description, gitignores=$gitignores, issueLabels=$issueLabels, license=$license, name=$name, private=$private, readme=$readme, ]';
  }

  CreateRepoOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    autoInit = json['auto_init'];
    description = json['description'];
    gitignores = json['gitignores'];
    issueLabels = json['issue_labels'];
    license = json['license'];
    name = json['name'];
    private = json['private'];
    readme = json['readme'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (autoInit != null)
      json['auto_init'] = autoInit;
    if (description != null)
      json['description'] = description;
    if (gitignores != null)
      json['gitignores'] = gitignores;
    if (issueLabels != null)
      json['issue_labels'] = issueLabels;
    if (license != null)
      json['license'] = license;
    if (name != null)
      json['name'] = name;
    if (private != null)
      json['private'] = private;
    if (readme != null)
      json['readme'] = readme;
    return json;
  }

  static List<CreateRepoOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateRepoOption>() : json.map((value) => CreateRepoOption.fromJson(value)).toList();
  }

  static Map<String, CreateRepoOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateRepoOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateRepoOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateRepoOption-objects as value to a dart map
  static Map<String, List<CreateRepoOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateRepoOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateRepoOption.listFromJson(value);
       });
     }
     return map;
  }
}

