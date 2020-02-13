part of openapi.api;

class EditHookOption {
  
  bool active = null;
  
  String branchFilter = null;
  
  Map<String, String> config = {};
  
  List<String> events = [];
  EditHookOption();

  @override
  String toString() {
    return 'EditHookOption[active=$active, branchFilter=$branchFilter, config=$config, events=$events, ]';
  }

  EditHookOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active = json['active'];
    branchFilter = json['branch_filter'];
    config = (json['config'] == null) ?
      null :
      (json['config'] as Map).cast<String, String>();
    events = (json['events'] == null) ?
      null :
      (json['events'] as List).cast<String>();
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
    return json;
  }

  static List<EditHookOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditHookOption>() : json.map((value) => EditHookOption.fromJson(value)).toList();
  }

  static Map<String, EditHookOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditHookOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditHookOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditHookOption-objects as value to a dart map
  static Map<String, List<EditHookOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditHookOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditHookOption.listFromJson(value);
       });
     }
     return map;
  }
}

