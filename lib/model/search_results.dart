part of gitea_openapi;

class SearchResults {
  
  List<Repository> data = [];
  
  bool ok = null;
  SearchResults();

  @override
  String toString() {
    return 'SearchResults[data=$data, ok=$ok, ]';
  }

  SearchResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      Repository.listFromJson(json['data']);
    ok = json['ok'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    if (ok != null)
      json['ok'] = ok;
    return json;
  }

  static List<SearchResults> listFromJson(List<dynamic> json) {
    return json == null ? List<SearchResults>() : json.map((value) => SearchResults.fromJson(value)).toList();
  }

  static Map<String, SearchResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SearchResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SearchResults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SearchResults-objects as value to a dart map
  static Map<String, List<SearchResults>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SearchResults>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SearchResults.listFromJson(value);
       });
     }
     return map;
  }
}

