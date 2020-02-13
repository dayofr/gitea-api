part of gitea_openapi;

class CreateOrgOption {
  
  String description = null;
  
  String fullName = null;
  
  String location = null;
  
  bool repoAdminChangeTeamAccess = null;
  
  String username = null;
  /* possible values are `public` (default), `limited` or `private` */
  String visibility = null;
  //enum visibilityEnum {  public,  limited,  private,  };{
  
  String website = null;
  CreateOrgOption();

  @override
  String toString() {
    return 'CreateOrgOption[description=$description, fullName=$fullName, location=$location, repoAdminChangeTeamAccess=$repoAdminChangeTeamAccess, username=$username, visibility=$visibility, website=$website, ]';
  }

  CreateOrgOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    fullName = json['full_name'];
    location = json['location'];
    repoAdminChangeTeamAccess = json['repo_admin_change_team_access'];
    username = json['username'];
    visibility = json['visibility'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (fullName != null)
      json['full_name'] = fullName;
    if (location != null)
      json['location'] = location;
    if (repoAdminChangeTeamAccess != null)
      json['repo_admin_change_team_access'] = repoAdminChangeTeamAccess;
    if (username != null)
      json['username'] = username;
    if (visibility != null)
      json['visibility'] = visibility;
    if (website != null)
      json['website'] = website;
    return json;
  }

  static List<CreateOrgOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateOrgOption>() : json.map((value) => CreateOrgOption.fromJson(value)).toList();
  }

  static Map<String, CreateOrgOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateOrgOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateOrgOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateOrgOption-objects as value to a dart map
  static Map<String, List<CreateOrgOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateOrgOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateOrgOption.listFromJson(value);
       });
     }
     return map;
  }
}

