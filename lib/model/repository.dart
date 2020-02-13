part of openapi.api;

class Repository {
  
  bool allowMergeCommits = null;
  
  bool allowRebase = null;
  
  bool allowRebaseExplicit = null;
  
  bool allowSquashMerge = null;
  
  bool archived = null;
  
  String avatarUrl = null;
  
  String cloneUrl = null;
  
  DateTime createdAt = null;
  
  String defaultBranch = null;
  
  String description = null;
  
  bool empty = null;
  
  ExternalTracker externalTracker = null;
  
  ExternalWiki externalWiki = null;
  
  bool fork = null;
  
  int forksCount = null;
  
  String fullName = null;
  
  bool hasIssues = null;
  
  bool hasPullRequests = null;
  
  bool hasWiki = null;
  
  String htmlUrl = null;
  
  int id = null;
  
  bool ignoreWhitespaceConflicts = null;
  
  InternalTracker internalTracker = null;
  
  bool mirror = null;
  
  String name = null;
  
  int openIssuesCount = null;
  
  int openPrCounter = null;
  
  String originalUrl = null;
  
  User owner = null;
  
  Repository parent = null;
  
  Permission permissions = null;
  
  bool private = null;
  
  int releaseCounter = null;
  
  int size = null;
  
  String sshUrl = null;
  
  int starsCount = null;
  
  bool template = null;
  
  DateTime updatedAt = null;
  
  int watchersCount = null;
  
  String website = null;
  Repository();

  @override
  String toString() {
    return 'Repository[allowMergeCommits=$allowMergeCommits, allowRebase=$allowRebase, allowRebaseExplicit=$allowRebaseExplicit, allowSquashMerge=$allowSquashMerge, archived=$archived, avatarUrl=$avatarUrl, cloneUrl=$cloneUrl, createdAt=$createdAt, defaultBranch=$defaultBranch, description=$description, empty=$empty, externalTracker=$externalTracker, externalWiki=$externalWiki, fork=$fork, forksCount=$forksCount, fullName=$fullName, hasIssues=$hasIssues, hasPullRequests=$hasPullRequests, hasWiki=$hasWiki, htmlUrl=$htmlUrl, id=$id, ignoreWhitespaceConflicts=$ignoreWhitespaceConflicts, internalTracker=$internalTracker, mirror=$mirror, name=$name, openIssuesCount=$openIssuesCount, openPrCounter=$openPrCounter, originalUrl=$originalUrl, owner=$owner, parent=$parent, permissions=$permissions, private=$private, releaseCounter=$releaseCounter, size=$size, sshUrl=$sshUrl, starsCount=$starsCount, template=$template, updatedAt=$updatedAt, watchersCount=$watchersCount, website=$website, ]';
  }

  Repository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowMergeCommits = json['allow_merge_commits'];
    allowRebase = json['allow_rebase'];
    allowRebaseExplicit = json['allow_rebase_explicit'];
    allowSquashMerge = json['allow_squash_merge'];
    archived = json['archived'];
    avatarUrl = json['avatar_url'];
    cloneUrl = json['clone_url'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    defaultBranch = json['default_branch'];
    description = json['description'];
    empty = json['empty'];
    externalTracker = (json['external_tracker'] == null) ?
      null :
      ExternalTracker.fromJson(json['external_tracker']);
    externalWiki = (json['external_wiki'] == null) ?
      null :
      ExternalWiki.fromJson(json['external_wiki']);
    fork = json['fork'];
    forksCount = json['forks_count'];
    fullName = json['full_name'];
    hasIssues = json['has_issues'];
    hasPullRequests = json['has_pull_requests'];
    hasWiki = json['has_wiki'];
    htmlUrl = json['html_url'];
    id = json['id'];
    ignoreWhitespaceConflicts = json['ignore_whitespace_conflicts'];
    internalTracker = (json['internal_tracker'] == null) ?
      null :
      InternalTracker.fromJson(json['internal_tracker']);
    mirror = json['mirror'];
    name = json['name'];
    openIssuesCount = json['open_issues_count'];
    openPrCounter = json['open_pr_counter'];
    originalUrl = json['original_url'];
    owner = (json['owner'] == null) ?
      null :
      User.fromJson(json['owner']);
    parent = (json['parent'] == null) ?
      null :
      Repository.fromJson(json['parent']);
    permissions = (json['permissions'] == null) ?
      null :
      Permission.fromJson(json['permissions']);
    private = json['private'];
    releaseCounter = json['release_counter'];
    size = json['size'];
    sshUrl = json['ssh_url'];
    starsCount = json['stars_count'];
    template = json['template'];
    updatedAt = (json['updated_at'] == null) ?
      null :
      DateTime.parse(json['updated_at']);
    watchersCount = json['watchers_count'];
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
    if (avatarUrl != null)
      json['avatar_url'] = avatarUrl;
    if (cloneUrl != null)
      json['clone_url'] = cloneUrl;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (defaultBranch != null)
      json['default_branch'] = defaultBranch;
    if (description != null)
      json['description'] = description;
    if (empty != null)
      json['empty'] = empty;
    if (externalTracker != null)
      json['external_tracker'] = externalTracker;
    if (externalWiki != null)
      json['external_wiki'] = externalWiki;
    if (fork != null)
      json['fork'] = fork;
    if (forksCount != null)
      json['forks_count'] = forksCount;
    if (fullName != null)
      json['full_name'] = fullName;
    if (hasIssues != null)
      json['has_issues'] = hasIssues;
    if (hasPullRequests != null)
      json['has_pull_requests'] = hasPullRequests;
    if (hasWiki != null)
      json['has_wiki'] = hasWiki;
    if (htmlUrl != null)
      json['html_url'] = htmlUrl;
    if (id != null)
      json['id'] = id;
    if (ignoreWhitespaceConflicts != null)
      json['ignore_whitespace_conflicts'] = ignoreWhitespaceConflicts;
    if (internalTracker != null)
      json['internal_tracker'] = internalTracker;
    if (mirror != null)
      json['mirror'] = mirror;
    if (name != null)
      json['name'] = name;
    if (openIssuesCount != null)
      json['open_issues_count'] = openIssuesCount;
    if (openPrCounter != null)
      json['open_pr_counter'] = openPrCounter;
    if (originalUrl != null)
      json['original_url'] = originalUrl;
    if (owner != null)
      json['owner'] = owner;
    if (parent != null)
      json['parent'] = parent;
    if (permissions != null)
      json['permissions'] = permissions;
    if (private != null)
      json['private'] = private;
    if (releaseCounter != null)
      json['release_counter'] = releaseCounter;
    if (size != null)
      json['size'] = size;
    if (sshUrl != null)
      json['ssh_url'] = sshUrl;
    if (starsCount != null)
      json['stars_count'] = starsCount;
    if (template != null)
      json['template'] = template;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (watchersCount != null)
      json['watchers_count'] = watchersCount;
    if (website != null)
      json['website'] = website;
    return json;
  }

  static List<Repository> listFromJson(List<dynamic> json) {
    return json == null ? List<Repository>() : json.map((value) => Repository.fromJson(value)).toList();
  }

  static Map<String, Repository> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Repository>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Repository.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Repository-objects as value to a dart map
  static Map<String, List<Repository>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Repository>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Repository.listFromJson(value);
       });
     }
     return map;
  }
}

