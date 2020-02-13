part of openapi.api;

class MarkdownOption {
  /* Context to render  in: body */
  String context = null;
  /* Mode to render  in: body */
  String mode = null;
  /* Text markdown to render  in: body */
  String text = null;
  /* Is it a wiki page ?  in: body */
  bool wiki = null;
  MarkdownOption();

  @override
  String toString() {
    return 'MarkdownOption[context=$context, mode=$mode, text=$text, wiki=$wiki, ]';
  }

  MarkdownOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context = json['Context'];
    mode = json['Mode'];
    text = json['Text'];
    wiki = json['Wiki'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (context != null)
      json['Context'] = context;
    if (mode != null)
      json['Mode'] = mode;
    if (text != null)
      json['Text'] = text;
    if (wiki != null)
      json['Wiki'] = wiki;
    return json;
  }

  static List<MarkdownOption> listFromJson(List<dynamic> json) {
    return json == null ? List<MarkdownOption>() : json.map((value) => MarkdownOption.fromJson(value)).toList();
  }

  static Map<String, MarkdownOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MarkdownOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MarkdownOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MarkdownOption-objects as value to a dart map
  static Map<String, List<MarkdownOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MarkdownOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MarkdownOption.listFromJson(value);
       });
     }
     return map;
  }
}

