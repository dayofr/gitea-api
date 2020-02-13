part of openapi.api;

class EditReactionOption {
  
  String content = null;
  EditReactionOption();

  @override
  String toString() {
    return 'EditReactionOption[content=$content, ]';
  }

  EditReactionOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    return json;
  }

  static List<EditReactionOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditReactionOption>() : json.map((value) => EditReactionOption.fromJson(value)).toList();
  }

  static Map<String, EditReactionOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditReactionOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditReactionOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditReactionOption-objects as value to a dart map
  static Map<String, List<EditReactionOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditReactionOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditReactionOption.listFromJson(value);
       });
     }
     return map;
  }
}

