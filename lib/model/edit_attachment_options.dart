part of openapi.api;

class EditAttachmentOptions {
  
  String name = null;
  EditAttachmentOptions();

  @override
  String toString() {
    return 'EditAttachmentOptions[name=$name, ]';
  }

  EditAttachmentOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<EditAttachmentOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<EditAttachmentOptions>() : json.map((value) => EditAttachmentOptions.fromJson(value)).toList();
  }

  static Map<String, EditAttachmentOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditAttachmentOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditAttachmentOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditAttachmentOptions-objects as value to a dart map
  static Map<String, List<EditAttachmentOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditAttachmentOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditAttachmentOptions.listFromJson(value);
       });
     }
     return map;
  }
}

