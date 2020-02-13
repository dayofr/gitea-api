part of openapi.api;

class CommitDateOptions {
  
  DateTime author = null;
  
  DateTime committer = null;
  CommitDateOptions();

  @override
  String toString() {
    return 'CommitDateOptions[author=$author, committer=$committer, ]';
  }

  CommitDateOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = (json['author'] == null) ?
      null :
      DateTime.parse(json['author']);
    committer = (json['committer'] == null) ?
      null :
      DateTime.parse(json['committer']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (author != null)
      json['author'] = author == null ? null : author.toUtc().toIso8601String();
    if (committer != null)
      json['committer'] = committer == null ? null : committer.toUtc().toIso8601String();
    return json;
  }

  static List<CommitDateOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CommitDateOptions>() : json.map((value) => CommitDateOptions.fromJson(value)).toList();
  }

  static Map<String, CommitDateOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CommitDateOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CommitDateOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommitDateOptions-objects as value to a dart map
  static Map<String, List<CommitDateOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CommitDateOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CommitDateOptions.listFromJson(value);
       });
     }
     return map;
  }
}

