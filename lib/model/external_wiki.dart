part of gitea_openapi;

class ExternalWiki {
  /* URL of external wiki. */
  String externalWikiUrl = null;
  ExternalWiki();

  @override
  String toString() {
    return 'ExternalWiki[externalWikiUrl=$externalWikiUrl, ]';
  }

  ExternalWiki.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    externalWikiUrl = json['external_wiki_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (externalWikiUrl != null)
      json['external_wiki_url'] = externalWikiUrl;
    return json;
  }

  static List<ExternalWiki> listFromJson(List<dynamic> json) {
    return json == null ? List<ExternalWiki>() : json.map((value) => ExternalWiki.fromJson(value)).toList();
  }

  static Map<String, ExternalWiki> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExternalWiki>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExternalWiki.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExternalWiki-objects as value to a dart map
  static Map<String, List<ExternalWiki>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExternalWiki>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExternalWiki.listFromJson(value);
       });
     }
     return map;
  }
}

