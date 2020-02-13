part of gitea_openapi;

class CreateHookOption {
  
  bool active = false;
  
  String branchFilter = null;
  /* CreateHookOptionConfig has all config options in it required are \"content_type\" and \"url\" Required */
  Map<String, String> config = {};
  
  List<String> events = [];
  
  String type = null;
  //enum typeEnum {  dingtalk,  discord,  gitea,  gogs,  msteams,  slack,  telegram,  feishu,  };{
  CreateHookOption();

  @override
  String toString() {
    return 'CreateHookOption[active=$active, branchFilter=$branchFilter, config=$config, events=$events, type=$type, ]';
  }

  CreateHookOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active = json['active'];
    branchFilter = json['branch_filter'];
    config = (json['config'] == null) ?
      null :
      (json['config'] as Map).cast<String, String>();
    events = (json['events'] == null) ?
      null :
      (json['events'] as List).cast<String>();
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (active != null)
      json['active'] = active;
    if (branchFilter != null)
      json['branch_filter'] = branchFilter;
    if (config != null)
      json['config'] = config;
    if (events != null)
      json['events'] = events;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<CreateHookOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateHookOption>() : json.map((value) => CreateHookOption.fromJson(value)).toList();
  }

  static Map<String, CreateHookOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateHookOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateHookOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateHookOption-objects as value to a dart map
  static Map<String, List<CreateHookOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateHookOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateHookOption.listFromJson(value);
       });
     }
     return map;
  }
}

