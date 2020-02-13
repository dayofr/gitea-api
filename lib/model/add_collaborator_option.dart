part of openapi.api;

class AddCollaboratorOption {
  
  String permission = null;
  AddCollaboratorOption();

  @override
  String toString() {
    return 'AddCollaboratorOption[permission=$permission, ]';
  }

  AddCollaboratorOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (permission != null)
      json['permission'] = permission;
    return json;
  }

  static List<AddCollaboratorOption> listFromJson(List<dynamic> json) {
    return json == null ? List<AddCollaboratorOption>() : json.map((value) => AddCollaboratorOption.fromJson(value)).toList();
  }

  static Map<String, AddCollaboratorOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AddCollaboratorOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AddCollaboratorOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddCollaboratorOption-objects as value to a dart map
  static Map<String, List<AddCollaboratorOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AddCollaboratorOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AddCollaboratorOption.listFromJson(value);
       });
     }
     return map;
  }
}

