part of openapi.api;

class Organization {
  
  String avatarUrl = null;
  
  String description = null;
  
  String fullName = null;
  
  int id = null;
  
  String location = null;
  
  bool repoAdminChangeTeamAccess = null;
  
  String username = null;
  
  String visibility = null;
  
  String website = null;
  Organization();

  @override
  String toString() {
    return 'Organization[avatarUrl=$avatarUrl, description=$description, fullName=$fullName, id=$id, location=$location, repoAdminChangeTeamAccess=$repoAdminChangeTeamAccess, username=$username, visibility=$visibility, website=$website, ]';
  }

  Organization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    avatarUrl = json['avatar_url'];
    description = json['description'];
    fullName = json['full_name'];
    id = json['id'];
    location = json['location'];
    repoAdminChangeTeamAccess = json['repo_admin_change_team_access'];
    username = json['username'];
    visibility = json['visibility'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (avatarUrl != null)
      json['avatar_url'] = avatarUrl;
    if (description != null)
      json['description'] = description;
    if (fullName != null)
      json['full_name'] = fullName;
    if (id != null)
      json['id'] = id;
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

  static List<Organization> listFromJson(List<dynamic> json) {
    return json == null ? List<Organization>() : json.map((value) => Organization.fromJson(value)).toList();
  }

  static Map<String, Organization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Organization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Organization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Organization>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Organization.listFromJson(value);
       });
     }
     return map;
  }
}

