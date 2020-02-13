part of openapi.api;

class CreateEmailOption {
  /* email addresses to add */
  List<String> emails = [];
  CreateEmailOption();

  @override
  String toString() {
    return 'CreateEmailOption[emails=$emails, ]';
  }

  CreateEmailOption.fromJson(Map<String, dynamic> json) {
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

  static List<CreateEmailOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateEmailOption>() : json.map((value) => CreateEmailOption.fromJson(value)).toList();
  }

  static Map<String, CreateEmailOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateEmailOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateEmailOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateEmailOption-objects as value to a dart map
  static Map<String, List<CreateEmailOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateEmailOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateEmailOption.listFromJson(value);
       });
     }
     return map;
  }
}

