part of openapi.api;

class APIError {
  
  String message = null;
  
  String url = null;
  APIError();

  @override
  String toString() {
    return 'APIError[message=$message, url=$url, ]';
  }

  APIError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<APIError> listFromJson(List<dynamic> json) {
    return json == null ? List<APIError>() : json.map((value) => APIError.fromJson(value)).toList();
  }

  static Map<String, APIError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, APIError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = APIError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of APIError-objects as value to a dart map
  static Map<String, List<APIError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<APIError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = APIError.listFromJson(value);
       });
     }
     return map;
  }
}

