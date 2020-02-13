part of gitea_openapi;

class CreateMilestoneOption {
  
  String description = null;
  
  DateTime dueOn = null;
  
  String title = null;
  CreateMilestoneOption();

  @override
  String toString() {
    return 'CreateMilestoneOption[description=$description, dueOn=$dueOn, title=$title, ]';
  }

  CreateMilestoneOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    dueOn = (json['due_on'] == null) ?
      null :
      DateTime.parse(json['due_on']);
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (dueOn != null)
      json['due_on'] = dueOn == null ? null : dueOn.toUtc().toIso8601String();
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<CreateMilestoneOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateMilestoneOption>() : json.map((value) => CreateMilestoneOption.fromJson(value)).toList();
  }

  static Map<String, CreateMilestoneOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateMilestoneOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateMilestoneOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateMilestoneOption-objects as value to a dart map
  static Map<String, List<CreateMilestoneOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateMilestoneOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateMilestoneOption.listFromJson(value);
       });
     }
     return map;
  }
}

