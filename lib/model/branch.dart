part of openapi.api;

class Branch {
  
  PayloadCommit commit = null;
  
  String effectiveBranchProtectionName = null;
  
  bool enableStatusCheck = null;
  
  String name = null;
  
  bool protected = null;
  
  int requiredApprovals = null;
  
  List<String> statusCheckContexts = [];
  
  bool userCanMerge = null;
  
  bool userCanPush = null;
  Branch();

  @override
  String toString() {
    return 'Branch[commit=$commit, effectiveBranchProtectionName=$effectiveBranchProtectionName, enableStatusCheck=$enableStatusCheck, name=$name, protected=$protected, requiredApprovals=$requiredApprovals, statusCheckContexts=$statusCheckContexts, userCanMerge=$userCanMerge, userCanPush=$userCanPush, ]';
  }

  Branch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commit = (json['commit'] == null) ?
      null :
      PayloadCommit.fromJson(json['commit']);
    effectiveBranchProtectionName = json['effective_branch_protection_name'];
    enableStatusCheck = json['enable_status_check'];
    name = json['name'];
    protected = json['protected'];
    requiredApprovals = json['required_approvals'];
    statusCheckContexts = (json['status_check_contexts'] == null) ?
      null :
      (json['status_check_contexts'] as List).cast<String>();
    userCanMerge = json['user_can_merge'];
    userCanPush = json['user_can_push'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (commit != null)
      json['commit'] = commit;
    if (effectiveBranchProtectionName != null)
      json['effective_branch_protection_name'] = effectiveBranchProtectionName;
    if (enableStatusCheck != null)
      json['enable_status_check'] = enableStatusCheck;
    if (name != null)
      json['name'] = name;
    if (protected != null)
      json['protected'] = protected;
    if (requiredApprovals != null)
      json['required_approvals'] = requiredApprovals;
    if (statusCheckContexts != null)
      json['status_check_contexts'] = statusCheckContexts;
    if (userCanMerge != null)
      json['user_can_merge'] = userCanMerge;
    if (userCanPush != null)
      json['user_can_push'] = userCanPush;
    return json;
  }

  static List<Branch> listFromJson(List<dynamic> json) {
    return json == null ? List<Branch>() : json.map((value) => Branch.fromJson(value)).toList();
  }

  static Map<String, Branch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Branch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Branch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Branch-objects as value to a dart map
  static Map<String, List<Branch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Branch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Branch.listFromJson(value);
       });
     }
     return map;
  }
}

