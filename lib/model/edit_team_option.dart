part of openapi.api;

class EditTeamOption {
  
  bool canCreateOrgRepo = null;
  
  String description = null;
  
  bool includesAllRepositories = null;
  
  String name = null;
  
  String permission = null;
  //enum permissionEnum {  read,  write,  admin,  };{
  
  List<String> units = [];
  EditTeamOption();

  @override
  String toString() {
    return 'EditTeamOption[canCreateOrgRepo=$canCreateOrgRepo, description=$description, includesAllRepositories=$includesAllRepositories, name=$name, permission=$permission, units=$units, ]';
  }

  EditTeamOption.fromJson(Map<String, dynamic> json) {
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

  static List<EditTeamOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditTeamOption>() : json.map((value) => EditTeamOption.fromJson(value)).toList();
  }

  static Map<String, EditTeamOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditTeamOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditTeamOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditTeamOption-objects as value to a dart map
  static Map<String, List<EditTeamOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditTeamOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditTeamOption.listFromJson(value);
       });
     }
     return map;
  }
}

