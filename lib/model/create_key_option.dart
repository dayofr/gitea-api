part of gitea_openapi;

class CreateKeyOption {
  /* An armored SSH key to add */
  String key = null;
  /* Describe if the key has only read access or read/write */
  bool readOnly = null;
  /* Title of the key to add */
  String title = null;
  CreateKeyOption();

  @override
  String toString() {
    return 'CreateKeyOption[key=$key, readOnly=$readOnly, title=$title, ]';
  }

  CreateKeyOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    readOnly = json['read_only'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (key != null)
      json['key'] = key;
    if (readOnly != null)
      json['read_only'] = readOnly;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<CreateKeyOption> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateKeyOption>() : json.map((value) => CreateKeyOption.fromJson(value)).toList();
  }

  static Map<String, CreateKeyOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateKeyOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateKeyOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateKeyOption-objects as value to a dart map
  static Map<String, List<CreateKeyOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateKeyOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateKeyOption.listFromJson(value);
       });
     }
     return map;
  }
}

