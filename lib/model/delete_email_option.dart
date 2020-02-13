part of openapi.api;

class DeleteEmailOption {
  /* email addresses to delete */
  List<String> emails = [];
  DeleteEmailOption();

  @override
  String toString() {
    return 'DeleteEmailOption[emails=$emails, ]';
  }

  DeleteEmailOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emails = (json['emails'] == null) ?
      null :
      (json['emails'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emails != null)
      json['emails'] = emails;
    return json;
  }

  static List<DeleteEmailOption> listFromJson(List<dynamic> json) {
    return json == null ? List<DeleteEmailOption>() : json.map((value) => DeleteEmailOption.fromJson(value)).toList();
  }

  static Map<String, DeleteEmailOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeleteEmailOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeleteEmailOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeleteEmailOption-objects as value to a dart map
  static Map<String, List<DeleteEmailOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeleteEmailOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeleteEmailOption.listFromJson(value);
       });
     }
     return map;
  }
}

