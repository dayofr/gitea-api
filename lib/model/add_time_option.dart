part of openapi.api;

class AddTimeOption {
  
  DateTime created = null;
  /* time in seconds */
  int time = null;
  /* User who spent the time (optional) */
  String userName = null;
  AddTimeOption();

  @override
  String toString() {
    return 'AddTimeOption[created=$created, time=$time, userName=$userName, ]';
  }

  AddTimeOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = (json['created'] == null) ?
      null :
      DateTime.parse(json['created']);
    time = json['time'];
    userName = json['user_name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (created != null)
      json['created'] = created == null ? null : created.toUtc().toIso8601String();
    if (time != null)
      json['time'] = time;
    if (userName != null)
      json['user_name'] = userName;
    return json;
  }

  static List<AddTimeOption> listFromJson(List<dynamic> json) {
    return json == null ? List<AddTimeOption>() : json.map((value) => AddTimeOption.fromJson(value)).toList();
  }

  static Map<String, AddTimeOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AddTimeOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AddTimeOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AddTimeOption-objects as value to a dart map
  static Map<String, List<AddTimeOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AddTimeOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AddTimeOption.listFromJson(value);
       });
     }
     return map;
  }
}

