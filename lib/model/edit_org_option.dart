part of gitea_openapi;

class EditOrgOption {
  
  String description = null;
  
  String fullName = null;
  
  String location = null;
  
  bool repoAdminChangeTeamAccess = null;
  /* possible values are `public`, `limited` or `private` */
  String visibility = null;
  //enum visibilityEnum {  public,  limited,  private,  };{
  
  String website = null;
  EditOrgOption();

  @override
  String toString() {
    return 'EditOrgOption[description=$description, fullName=$fullName, location=$location, repoAdminChangeTeamAccess=$repoAdminChangeTeamAccess, visibility=$visibility, website=$website, ]';
  }

  EditOrgOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    fullName = json['full_name'];
    location = json['location'];
    repoAdminChangeTeamAccess = json['repo_admin_change_team_access'];
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
    if (visibility != null)
      json['visibility'] = visibility;
    if (website != null)
      json['website'] = website;
    return json;
  }

  static List<EditOrgOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditOrgOption>() : json.map((value) => EditOrgOption.fromJson(value)).toList();
  }

  static Map<String, EditOrgOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditOrgOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditOrgOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditOrgOption-objects as value to a dart map
  static Map<String, List<EditOrgOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditOrgOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditOrgOption.listFromJson(value);
       });
     }
     return map;
  }
}

