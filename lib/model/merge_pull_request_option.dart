part of openapi.api;

class MergePullRequestOption {
  
  String do_ = null;
  //enum do_Enum {  merge,  rebase,  rebase-merge,  squash,  };{
  
  String mergeMessageField = null;
  
  String mergeTitleField = null;
  
  bool forceMerge = null;
  MergePullRequestOption();

  @override
  String toString() {
    return 'MergePullRequestOption[do_=$do_, mergeMessageField=$mergeMessageField, mergeTitleField=$mergeTitleField, forceMerge=$forceMerge, ]';
  }

  MergePullRequestOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    do_ = json['Do'];
    mergeMessageField = json['MergeMessageField'];
    mergeTitleField = json['MergeTitleField'];
    forceMerge = json['force_merge'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (do_ != null)
      json['Do'] = do_;
    if (mergeMessageField != null)
      json['MergeMessageField'] = mergeMessageField;
    if (mergeTitleField != null)
      json['MergeTitleField'] = mergeTitleField;
    if (forceMerge != null)
      json['force_merge'] = forceMerge;
    return json;
  }

  static List<MergePullRequestOption> listFromJson(List<dynamic> json) {
    return json == null ? List<MergePullRequestOption>() : json.map((value) => MergePullRequestOption.fromJson(value)).toList();
  }

  static Map<String, MergePullRequestOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MergePullRequestOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MergePullRequestOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MergePullRequestOption-objects as value to a dart map
  static Map<String, List<MergePullRequestOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MergePullRequestOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MergePullRequestOption.listFromJson(value);
       });
     }
     return map;
  }
}

