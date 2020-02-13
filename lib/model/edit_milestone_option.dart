part of openapi.api;

class EditMilestoneOption {
  
  String description = null;
  
  DateTime dueOn = null;
  
  String state = null;
  
  String title = null;
  EditMilestoneOption();

  @override
  String toString() {
    return 'EditMilestoneOption[description=$description, dueOn=$dueOn, state=$state, title=$title, ]';
  }

  EditMilestoneOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    dueOn = (json['due_on'] == null) ?
      null :
      DateTime.parse(json['due_on']);
    state = json['state'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (dueOn != null)
      json['due_on'] = dueOn == null ? null : dueOn.toUtc().toIso8601String();
    if (state != null)
      json['state'] = state;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<EditMilestoneOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditMilestoneOption>() : json.map((value) => EditMilestoneOption.fromJson(value)).toList();
  }

  static Map<String, EditMilestoneOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditMilestoneOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditMilestoneOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditMilestoneOption-objects as value to a dart map
  static Map<String, List<EditMilestoneOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditMilestoneOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditMilestoneOption.listFromJson(value);
       });
     }
     return map;
  }
}

