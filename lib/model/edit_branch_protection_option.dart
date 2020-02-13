part of openapi.api;

class EditBranchProtectionOption {
  
  List<String> approvalsWhitelistTeams = [];
  
  List<String> approvalsWhitelistUsername = [];
  
  bool blockOnRejectedReviews = null;
  
  bool dismissStaleApprovals = null;
  
  bool enableApprovalsWhitelist = null;
  
  bool enableMergeWhitelist = null;
  
  bool enablePush = null;
  
  bool enablePushWhitelist = null;
  
  bool enableStatusCheck = null;
  
  List<String> mergeWhitelistTeams = [];
  
  List<String> mergeWhitelistUsernames = [];
  
  bool pushWhitelistDeployKeys = null;
  
  List<String> pushWhitelistTeams = [];
  
  List<String> pushWhitelistUsernames = [];
  
  bool requireSignedCommits = null;
  
  int requiredApprovals = null;
  
  List<String> statusCheckContexts = [];
  EditBranchProtectionOption();

  @override
  String toString() {
    return 'EditBranchProtectionOption[approvalsWhitelistTeams=$approvalsWhitelistTeams, approvalsWhitelistUsername=$approvalsWhitelistUsername, blockOnRejectedReviews=$blockOnRejectedReviews, dismissStaleApprovals=$dismissStaleApprovals, enableApprovalsWhitelist=$enableApprovalsWhitelist, enableMergeWhitelist=$enableMergeWhitelist, enablePush=$enablePush, enablePushWhitelist=$enablePushWhitelist, enableStatusCheck=$enableStatusCheck, mergeWhitelistTeams=$mergeWhitelistTeams, mergeWhitelistUsernames=$mergeWhitelistUsernames, pushWhitelistDeployKeys=$pushWhitelistDeployKeys, pushWhitelistTeams=$pushWhitelistTeams, pushWhitelistUsernames=$pushWhitelistUsernames, requireSignedCommits=$requireSignedCommits, requiredApprovals=$requiredApprovals, statusCheckContexts=$statusCheckContexts, ]';
  }

  EditBranchProtectionOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    approvalsWhitelistTeams = (json['approvals_whitelist_teams'] == null) ?
      null :
      (json['approvals_whitelist_teams'] as List).cast<String>();
    approvalsWhitelistUsername = (json['approvals_whitelist_username'] == null) ?
      null :
      (json['approvals_whitelist_username'] as List).cast<String>();
    blockOnRejectedReviews = json['block_on_rejected_reviews'];
    dismissStaleApprovals = json['dismiss_stale_approvals'];
    enableApprovalsWhitelist = json['enable_approvals_whitelist'];
    enableMergeWhitelist = json['enable_merge_whitelist'];
    enablePush = json['enable_push'];
    enablePushWhitelist = json['enable_push_whitelist'];
    enableStatusCheck = json['enable_status_check'];
    mergeWhitelistTeams = (json['merge_whitelist_teams'] == null) ?
      null :
      (json['merge_whitelist_teams'] as List).cast<String>();
    mergeWhitelistUsernames = (json['merge_whitelist_usernames'] == null) ?
      null :
      (json['merge_whitelist_usernames'] as List).cast<String>();
    pushWhitelistDeployKeys = json['push_whitelist_deploy_keys'];
    pushWhitelistTeams = (json['push_whitelist_teams'] == null) ?
      null :
      (json['push_whitelist_teams'] as List).cast<String>();
    pushWhitelistUsernames = (json['push_whitelist_usernames'] == null) ?
      null :
      (json['push_whitelist_usernames'] as List).cast<String>();
    requireSignedCommits = json['require_signed_commits'];
    requiredApprovals = json['required_approvals'];
    statusCheckContexts = (json['status_check_contexts'] == null) ?
      null :
      (json['status_check_contexts'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (approvalsWhitelistTeams != null)
      json['approvals_whitelist_teams'] = approvalsWhitelistTeams;
    if (approvalsWhitelistUsername != null)
      json['approvals_whitelist_username'] = approvalsWhitelistUsername;
    if (blockOnRejectedReviews != null)
      json['block_on_rejected_reviews'] = blockOnRejectedReviews;
    if (dismissStaleApprovals != null)
      json['dismiss_stale_approvals'] = dismissStaleApprovals;
    if (enableApprovalsWhitelist != null)
      json['enable_approvals_whitelist'] = enableApprovalsWhitelist;
    if (enableMergeWhitelist != null)
      json['enable_merge_whitelist'] = enableMergeWhitelist;
    if (enablePush != null)
      json['enable_push'] = enablePush;
    if (enablePushWhitelist != null)
      json['enable_push_whitelist'] = enablePushWhitelist;
    if (enableStatusCheck != null)
      json['enable_status_check'] = enableStatusCheck;
    if (mergeWhitelistTeams != null)
      json['merge_whitelist_teams'] = mergeWhitelistTeams;
    if (mergeWhitelistUsernames != null)
      json['merge_whitelist_usernames'] = mergeWhitelistUsernames;
    if (pushWhitelistDeployKeys != null)
      json['push_whitelist_deploy_keys'] = pushWhitelistDeployKeys;
    if (pushWhitelistTeams != null)
      json['push_whitelist_teams'] = pushWhitelistTeams;
    if (pushWhitelistUsernames != null)
      json['push_whitelist_usernames'] = pushWhitelistUsernames;
    if (requireSignedCommits != null)
      json['require_signed_commits'] = requireSignedCommits;
    if (requiredApprovals != null)
      json['required_approvals'] = requiredApprovals;
    if (statusCheckContexts != null)
      json['status_check_contexts'] = statusCheckContexts;
    return json;
  }

  static List<EditBranchProtectionOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditBranchProtectionOption>() : json.map((value) => EditBranchProtectionOption.fromJson(value)).toList();
  }

  static Map<String, EditBranchProtectionOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditBranchProtectionOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditBranchProtectionOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditBranchProtectionOption-objects as value to a dart map
  static Map<String, List<EditBranchProtectionOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditBranchProtectionOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditBranchProtectionOption.listFromJson(value);
       });
     }
     return map;
  }
}

