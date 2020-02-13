part of openapi.api;

class EditRepoOption {
  /* either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits. `has_pull_requests` must be `true`. */
  bool allowMergeCommits = null;
  /* either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging. `has_pull_requests` must be `true`. */
  bool allowRebase = null;
  /* either `true` to allow rebase with explicit merge commits (--no-ff), or `false` to prevent rebase with explicit merge commits. `has_pull_requests` must be `true`. */
  bool allowRebaseExplicit = null;
  /* either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging. `has_pull_requests` must be `true`. */
  bool allowSquashMerge = null;
  /* set to `true` to archive this repository. */
  bool archived = null;
  /* sets the default branch for this repository. */
  String defaultBranch = null;
  /* a short description of the repository. */
  String description = null;
  
  ExternalTracker externalTracker = null;
  
  ExternalWiki externalWiki = null;
  /* either `true` to enable issues for this repository or `false` to disable them. */
  bool hasIssues = null;
  /* either `true` to allow pull requests, or `false` to prevent pull request. */
  bool hasPullRequests = null;
  /* either `true` to enable the wiki for this repository or `false` to disable it. */
  bool hasWiki = null;
  /* either `true` to ignore whitespace for conflicts, or `false` to not ignore whitespace. `has_pull_requests` must be `true`. */
  bool ignoreWhitespaceConflicts = null;
  
  InternalTracker internalTracker = null;
  /* name of the repository */
  String name = null;
  /* either `true` to make the repository private or `false` to make it public. Note: you will get a 422 error if the organization restricts changing repository visibility to organization owners and a non-owner tries to change the value of private. */
  bool private = null;
  /* either `true` to make this repository a template or `false` to make it a normal repository */
  bool template = null;
  /* a URL with more information about the repository. */
  String website = null;
  EditRepoOption();

  @override
  String toString() {
    return 'EditRepoOption[allowMergeCommits=$allowMergeCommits, allowRebase=$allowRebase, allowRebaseExplicit=$allowRebaseExplicit, allowSquashMerge=$allowSquashMerge, archived=$archived, defaultBranch=$defaultBranch, description=$description, externalTracker=$externalTracker, externalWiki=$externalWiki, hasIssues=$hasIssues, hasPullRequests=$hasPullRequests, hasWiki=$hasWiki, ignoreWhitespaceConflicts=$ignoreWhitespaceConflicts, internalTracker=$internalTracker, name=$name, private=$private, template=$template, website=$website, ]';
  }

  EditRepoOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowMergeCommits = json['allow_merge_commits'];
    allowRebase = json['allow_rebase'];
    allowRebaseExplicit = json['allow_rebase_explicit'];
    allowSquashMerge = json['allow_squash_merge'];
    archived = json['archived'];
    defaultBranch = json['default_branch'];
    description = json['description'];
    externalTracker = (json['external_tracker'] == null) ?
      null :
      ExternalTracker.fromJson(json['external_tracker']);
    externalWiki = (json['external_wiki'] == null) ?
      null :
      ExternalWiki.fromJson(json['external_wiki']);
    hasIssues = json['has_issues'];
    hasPullRequests = json['has_pull_requests'];
    hasWiki = json['has_wiki'];
    ignoreWhitespaceConflicts = json['ignore_whitespace_conflicts'];
    internalTracker = (json['internal_tracker'] == null) ?
      null :
      InternalTracker.fromJson(json['internal_tracker']);
    name = json['name'];
    private = json['private'];
    template = json['template'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (allowMergeCommits != null)
      json['allow_merge_commits'] = allowMergeCommits;
    if (allowRebase != null)
      json['allow_rebase'] = allowRebase;
    if (allowRebaseExplicit != null)
      json['allow_rebase_explicit'] = allowRebaseExplicit;
    if (allowSquashMerge != null)
      json['allow_squash_merge'] = allowSquashMerge;
    if (archived != null)
      json['archived'] = archived;
    if (defaultBranch != null)
      json['default_branch'] = defaultBranch;
    if (description != null)
      json['description'] = description;
    if (externalTracker != null)
      json['external_tracker'] = externalTracker;
    if (externalWiki != null)
      json['external_wiki'] = externalWiki;
    if (hasIssues != null)
      json['has_issues'] = hasIssues;
    if (hasPullRequests != null)
      json['has_pull_requests'] = hasPullRequests;
    if (hasWiki != null)
      json['has_wiki'] = hasWiki;
    if (ignoreWhitespaceConflicts != null)
      json['ignore_whitespace_conflicts'] = ignoreWhitespaceConflicts;
    if (internalTracker != null)
      json['internal_tracker'] = internalTracker;
    if (name != null)
      json['name'] = name;
    if (private != null)
      json['private'] = private;
    if (template != null)
      json['template'] = template;
    if (website != null)
      json['website'] = website;
    return json;
  }

  static List<EditRepoOption> listFromJson(List<dynamic> json) {
    return json == null ? List<EditRepoOption>() : json.map((value) => EditRepoOption.fromJson(value)).toList();
  }

  static Map<String, EditRepoOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EditRepoOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EditRepoOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EditRepoOption-objects as value to a dart map
  static Map<String, List<EditRepoOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EditRepoOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EditRepoOption.listFromJson(value);
       });
     }
     return map;
  }
}

