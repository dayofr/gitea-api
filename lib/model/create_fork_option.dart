part of gitea_openapi;

class CreateForkOption {
  /* organization name, if forking into an organization */
  String organization = null;
  CreateForkOption();

  @override
  String toString() {
    return 'CreateForkOption[organization=$organization, ]';
  }

  CreateForkOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    organization = json['organization'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (organization != null)
      json['organization'] = organization;
    return json;
  }

  static List<CreateForkOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateForkOption>() : json.map((value) => CreateForkOption.fromJson(value)).toList();
  }

  static Map<String, CreateForkOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateForkOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateForkOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateForkOption-objects as value to a dart map
  static Map<String, List<CreateForkOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateForkOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateForkOption.listFromJson(value);
       });
     }
     return map;
  }
}

