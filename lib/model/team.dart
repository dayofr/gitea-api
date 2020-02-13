part of gitea_openapi;

class Team {
  
  bool canCreateOrgRepo = null;
  
  String description = null;
  
  int id = null;
  
  bool includesAllRepositories = null;
  
  String name = null;
  
  Organization organization = null;
  
  String permission = null;
  //enum permissionEnum {  none,  read,  write,  admin,  owner,  };{
  
  List<String> units = [];
  Team();

  @override
  String toString() {
    return 'Team[canCreateOrgRepo=$canCreateOrgRepo, description=$description, id=$id, includesAllRepositories=$includesAllRepositories, name=$name, organization=$organization, permission=$permission, units=$units, ]';
  }

  Team.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canCreateOrgRepo = json['can_create_org_repo'];
    description = json['description'];
    id = json['id'];
    includesAllRepositories = json['includes_all_repositories'];
    name = json['name'];
    organization = (json['organization'] == null) ?
      null :
      Organization.fromJson(json['organization']);
    permission = json['permission'];
    units = (json['units'] == null) ?
      null :
      (json['units'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canCreateOrgRepo != null)
      json['can_create_org_repo'] = canCreateOrgRepo;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (includesAllRepositories != null)
      json['includes_all_repositories'] = includesAllRepositories;
    if (name != null)
      json['name'] = name;
    if (organization != null)
      json['organization'] = organization;
    if (permission != null)
      json['permission'] = permission;
    if (units != null)
      json['units'] = units;
    return json;
  }

  static List<Team> listFromJson(List<dynamic> json) {
    return json == null ? List<Team>() : json.map((value) => Team.fromJson(value)).toList();
  }

  static Map<String, Team> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Team>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Team.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Team-objects as value to a dart map
  static Map<String, List<Team>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Team>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Team.listFromJson(value);
       });
     }
     return map;
  }
}

