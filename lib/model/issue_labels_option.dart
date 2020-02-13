part of openapi.api;

class IssueLabelsOption {
  /* list of label IDs */
  List<int> labels = [];
  IssueLabelsOption();

  @override
  String toString() {
    return 'IssueLabelsOption[labels=$labels, ]';
  }

  IssueLabelsOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    labels = (json['labels'] == null) ?
      null :
      (json['labels'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (labels != null)
      json['labels'] = labels;
    return json;
  }

  static List<IssueLabelsOption> listFromJson(List<dynamic> json) {
    return json == null ? List<IssueLabelsOption>() : json.map((value) => IssueLabelsOption.fromJson(value)).toList();
  }

  static Map<String, IssueLabelsOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IssueLabelsOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IssueLabelsOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IssueLabelsOption-objects as value to a dart map
  static Map<String, List<IssueLabelsOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IssueLabelsOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = IssueLabelsOption.listFromJson(value);
       });
     }
     return map;
  }
}

