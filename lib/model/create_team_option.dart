part of openapi.api;

class CreateTeamOption {
  
  bool canCreateOrgRepo = null;
  
  String description = null;
  
  bool includesAllRepositories = null;
  
  String name = null;
  
  String permission = null;
  //enum permissionEnum {  read,  write,  admin,  };{
  
  List<String> units = [];
  CreateTeamOption();

  @override
  String toString() {
    return 'CreateTeamOption[canCreateOrgRepo=$canCreateOrgRepo, description=$description, includesAllRepositories=$includesAllRepositories, name=$name, permission=$permission, units=$units, ]';
  }

  CreateTeamOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canCreateOrgRepo = json['can_create_org_repo'];
    description = json['description'];
    includesAllRepositories = json['includes_all_repositories'];
    name = json['name'];
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
    if (includesAllRepositories != null)
      json['includes_all_repositories'] = includesAllRepositories;
    if (name != null)
      json['name'] = name;
    if (permission != null)
      json['permission'] = permission;
    if (units != null)
      json['units'] = units;
    return json;
  }

  static List<CreateTeamOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateTeamOption>() : json.map((value) => CreateTeamOption.fromJson(value)).toList();
  }

  static Map<String, CreateTeamOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateTeamOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateTeamOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateTeamOption-objects as value to a dart map
  static Map<String, List<CreateTeamOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateTeamOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateTeamOption.listFromJson(value);
       });
     }
     return map;
  }
}

