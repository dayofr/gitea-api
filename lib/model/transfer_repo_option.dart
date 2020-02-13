part of gitea_openapi;

class TransferRepoOption {
  
  String newOwner = null;
  /* ID of the team or teams to add to the repository. Teams can only be added to organization-owned repositories. */
  List<int> teamIds = [];
  TransferRepoOption();

  @override
  String toString() {
    return 'TransferRepoOption[newOwner=$newOwner, teamIds=$teamIds, ]';
  }

  TransferRepoOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    newOwner = json['new_owner'];
    teamIds = (json['team_ids'] == null) ?
      null :
      (json['team_ids'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (newOwner != null)
      json['new_owner'] = newOwner;
    if (teamIds != null)
      json['team_ids'] = teamIds;
    return json;
  }

  static List<TransferRepoOption> listFromJson(List<dynamic> json) {
    return json == null ? List<TransferRepoOption>() : json.map((value) => TransferRepoOption.fromJson(value)).toList();
  }

  static Map<String, TransferRepoOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TransferRepoOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TransferRepoOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransferRepoOption-objects as value to a dart map
  static Map<String, List<TransferRepoOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TransferRepoOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TransferRepoOption.listFromJson(value);
       });
     }
     return map;
  }
}

