part of openapi.api;

class EditUserOption {
  
  bool active = null;
  
  bool admin = null;
  
  bool allowCreateOrganization = null;
  
  bool allowGitHook = null;
  
  bool allowImportLocal = null;
  
  String email = null;
  
  String fullName = null;
  
  String location = null;
  
  String loginName = null;
  
  int maxRepoCreation = null;
  
  bool mustChangePassword = null;
  
  String password = null;
  
  bool prohibitLogin = null;
  
  int sourceId = null;
  
  String website = null;
  EditUserOption();

  @override
  String toString() {
    return 'EditUserOption[active=$active, admin=$admin, allowCreateOrganization=$allowCreateOrganization, allowGitHook=$allowGitHook, allowImportLocal=$allowImportLocal, email=$email, fullName=$fullName, location=$location, loginName=$loginName, maxRepoCreation=$maxRepoCreation, mustChangePassword=$mustChangePassword, password=$password, prohibitLogin=$prohibitLogin, sourceId=$sourceId, website=$website, ]';
  }

  EditUserOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active = json['active'];
    admin = json['admin'];
    allowCreateOrganization = json['allow_create_organization'];
    allowGitHook = json['allow_git_hook'];
    allowImportLocal = json['allow_import_local'];
    email = json['email'];
    fullName = json['full_name'];
    location = json['location'];
    loginName = json['login_name'];
    maxRepoCreation = json['max_repo_creation'];
    mustChangePassword = json['must_change_password'];
    password = json['password'];
    prohibitLogin = json['prohibit_login'];
    sourceId = json['source_id'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (active != null)
      json['active'] = active;
    if (admin != null)
      json['admin'] = admin;
    if (allowCreateOrganization != null)
      json['allow_create_organization'] = allowCreateOrganization;
    if (allowGitHook != null)
      json['allow_git_hook'] = allowGitHook;
    if (allowImportLocal != null)
      json['allow_import_local'] = allowImportLocal;
    if (email != null)
      json['email'] = email;
    if (fullName != null)
      json['full_name'] = fullName;
    if (location != null)
      json['location'] = location;
    if (loginName != null)
      json['login_name'] = loginName;
    if (maxRepoCreation != null)
      json['max_repo_creation'] = maxRepoCreation;
    if (mustChangePassword != null)
      json['must_change_password'] = mustChangePassword;
    if (password != null)
      json['password'] = password;
    if (prohibitLogin != null)
      json['prohibit_login'] = prohibitLogin;
    if (sourceId != null)
      json['source_id'] = sourceId;
    if (website != null)
      json['website'] = website;
    return json;
  }

  static List<EditUserOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditUserOption>() : json.map((value) => EditUserOption.fromJson(value)).toList();
  }

  static Map<String, EditUserOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditUserOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditUserOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditUserOption-objects as value to a dart map
  static Map<String, List<EditUserOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditUserOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditUserOption.listFromJson(value);
       });
     }
     return map;
  }
}

