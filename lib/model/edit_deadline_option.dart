part of openapi.api;

class EditDeadlineOption {
  
  DateTime dueDate = null;
  EditDeadlineOption();

  @override
  String toString() {
    return 'EditDeadlineOption[dueDate=$dueDate, ]';
  }

  EditDeadlineOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dueDate = (json['due_date'] == null) ?
      null :
      DateTime.parse(json['due_date']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dueDate != null)
      json['due_date'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    return json;
  }

  static List<EditDeadlineOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditDeadlineOption>() : json.map((value) => EditDeadlineOption.fromJson(value)).toList();
  }

  static Map<String, EditDeadlineOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditDeadlineOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditDeadlineOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditDeadlineOption-objects as value to a dart map
  static Map<String, List<EditDeadlineOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditDeadlineOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditDeadlineOption.listFromJson(value);
       });
     }
     return map;
  }
}

