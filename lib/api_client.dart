part of openapi.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "http://localhost/api/v1"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['AccessToken'] = ApiKeyAuth("query", "access_token");
    _authentications['AuthorizationHeaderToken'] = ApiKeyAuth("header", "Authorization");
    _authentications['BasicAuth'] = HttpBasicAuth();
    _authentications['SudoHeader'] = ApiKeyAuth("header", "Sudo");
    _authentications['SudoParam'] = ApiKeyAuth("query", "sudo");
    _authentications['Token'] = ApiKeyAuth("query", "token");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'APIError':
          return APIError.fromJson(value);
        case 'AccessToken':
          return AccessToken.fromJson(value);
        case 'AddCollaboratorOption':
          return AddCollaboratorOption.fromJson(value);
        case 'AddTimeOption':
          return AddTimeOption.fromJson(value);
        case 'AnnotatedTag':
          return AnnotatedTag.fromJson(value);
        case 'AnnotatedTagObject':
          return AnnotatedTagObject.fromJson(value);
        case 'Attachment':
          return Attachment.fromJson(value);
        case 'Branch':
          return Branch.fromJson(value);
        case 'BranchProtection':
          return BranchProtection.fromJson(value);
        case 'Comment':
          return Comment.fromJson(value);
        case 'Commit':
          return Commit.fromJson(value);
        case 'CommitDateOptions':
          return CommitDateOptions.fromJson(value);
        case 'CommitMeta':
          return CommitMeta.fromJson(value);
        case 'CommitUser':
          return CommitUser.fromJson(value);
        case 'ContentsResponse':
          return ContentsResponse.fromJson(value);
        case 'CreateBranchProtectionOption':
          return CreateBranchProtectionOption.fromJson(value);
        case 'CreateEmailOption':
          return CreateEmailOption.fromJson(value);
        case 'CreateFileOptions':
          return CreateFileOptions.fromJson(value);
        case 'CreateForkOption':
          return CreateForkOption.fromJson(value);
        case 'CreateGPGKeyOption':
          return CreateGPGKeyOption.fromJson(value);
        case 'CreateHookOption':
          return CreateHookOption.fromJson(value);
        case 'CreateIssueCommentOption':
          return CreateIssueCommentOption.fromJson(value);
        case 'CreateIssueOption':
          return CreateIssueOption.fromJson(value);
        case 'CreateKeyOption':
          return CreateKeyOption.fromJson(value);
        case 'CreateLabelOption':
          return CreateLabelOption.fromJson(value);
        case 'CreateMilestoneOption':
          return CreateMilestoneOption.fromJson(value);
        case 'CreateOrgOption':
          return CreateOrgOption.fromJson(value);
        case 'CreatePullRequestOption':
          return CreatePullRequestOption.fromJson(value);
        case 'CreateReleaseOption':
          return CreateReleaseOption.fromJson(value);
        case 'CreateRepoOption':
          return CreateRepoOption.fromJson(value);
        case 'CreateStatusOption':
          return CreateStatusOption.fromJson(value);
        case 'CreateTeamOption':
          return CreateTeamOption.fromJson(value);
        case 'CreateUserOption':
          return CreateUserOption.fromJson(value);
        case 'DeleteEmailOption':
          return DeleteEmailOption.fromJson(value);
        case 'DeleteFileOptions':
          return DeleteFileOptions.fromJson(value);
        case 'DeployKey':
          return DeployKey.fromJson(value);
        case 'EditAttachmentOptions':
          return EditAttachmentOptions.fromJson(value);
        case 'EditBranchProtectionOption':
          return EditBranchProtectionOption.fromJson(value);
        case 'EditDeadlineOption':
          return EditDeadlineOption.fromJson(value);
        case 'EditGitHookOption':
          return EditGitHookOption.fromJson(value);
        case 'EditHookOption':
          return EditHookOption.fromJson(value);
        case 'EditIssueCommentOption':
          return EditIssueCommentOption.fromJson(value);
        case 'EditIssueOption':
          return EditIssueOption.fromJson(value);
        case 'EditLabelOption':
          return EditLabelOption.fromJson(value);
        case 'EditMilestoneOption':
          return EditMilestoneOption.fromJson(value);
        case 'EditOrgOption':
          return EditOrgOption.fromJson(value);
        case 'EditPullRequestOption':
          return EditPullRequestOption.fromJson(value);
        case 'EditReactionOption':
          return EditReactionOption.fromJson(value);
        case 'EditReleaseOption':
          return EditReleaseOption.fromJson(value);
        case 'EditRepoOption':
          return EditRepoOption.fromJson(value);
        case 'EditTeamOption':
          return EditTeamOption.fromJson(value);
        case 'EditUserOption':
          return EditUserOption.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'ExternalTracker':
          return ExternalTracker.fromJson(value);
        case 'ExternalWiki':
          return ExternalWiki.fromJson(value);
        case 'FileCommitResponse':
          return FileCommitResponse.fromJson(value);
        case 'FileDeleteResponse':
          return FileDeleteResponse.fromJson(value);
        case 'FileLinksResponse':
          return FileLinksResponse.fromJson(value);
        case 'FileResponse':
          return FileResponse.fromJson(value);
        case 'GPGKey':
          return GPGKey.fromJson(value);
        case 'GPGKeyEmail':
          return GPGKeyEmail.fromJson(value);
        case 'GitBlobResponse':
          return GitBlobResponse.fromJson(value);
        case 'GitEntry':
          return GitEntry.fromJson(value);
        case 'GitHook':
          return GitHook.fromJson(value);
        case 'GitObject':
          return GitObject.fromJson(value);
        case 'GitTreeResponse':
          return GitTreeResponse.fromJson(value);
        case 'Hook':
          return Hook.fromJson(value);
        case 'Identity':
          return Identity.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineResponse200':
          return InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return InlineResponse2001.fromJson(value);
        case 'InternalTracker':
          return InternalTracker.fromJson(value);
        case 'Issue':
          return Issue.fromJson(value);
        case 'IssueDeadline':
          return IssueDeadline.fromJson(value);
        case 'IssueLabelsOption':
          return IssueLabelsOption.fromJson(value);
        case 'Label':
          return Label.fromJson(value);
        case 'MarkdownOption':
          return MarkdownOption.fromJson(value);
        case 'MergePullRequestOption':
          return MergePullRequestOption.fromJson(value);
        case 'MigrateRepoForm':
          return MigrateRepoForm.fromJson(value);
        case 'Milestone':
          return Milestone.fromJson(value);
        case 'NotificationCount':
          return NotificationCount.fromJson(value);
        case 'NotificationSubject':
          return NotificationSubject.fromJson(value);
        case 'NotificationThread':
          return NotificationThread.fromJson(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'PRBranchInfo':
          return PRBranchInfo.fromJson(value);
        case 'PayloadCommit':
          return PayloadCommit.fromJson(value);
        case 'PayloadCommitVerification':
          return PayloadCommitVerification.fromJson(value);
        case 'PayloadUser':
          return PayloadUser.fromJson(value);
        case 'Permission':
          return Permission.fromJson(value);
        case 'PublicKey':
          return PublicKey.fromJson(value);
        case 'PullRequest':
          return PullRequest.fromJson(value);
        case 'PullRequestMeta':
          return PullRequestMeta.fromJson(value);
        case 'Reaction':
          return Reaction.fromJson(value);
        case 'Reference':
          return Reference.fromJson(value);
        case 'Release':
          return Release.fromJson(value);
        case 'RepoCommit':
          return RepoCommit.fromJson(value);
        case 'RepoTopicOptions':
          return RepoTopicOptions.fromJson(value);
        case 'Repository':
          return Repository.fromJson(value);
        case 'RepositoryMeta':
          return RepositoryMeta.fromJson(value);
        case 'SearchResults':
          return SearchResults.fromJson(value);
        case 'ServerVersion':
          return ServerVersion.fromJson(value);
        case 'Status':
          return Status.fromJson(value);
        case 'StopWatch':
          return StopWatch.fromJson(value);
        case 'Tag':
          return Tag.fromJson(value);
        case 'Team':
          return Team.fromJson(value);
        case 'TopicName':
          return TopicName.fromJson(value);
        case 'TopicResponse':
          return TopicResponse.fromJson(value);
        case 'TrackedTime':
          return TrackedTime.fromJson(value);
        case 'TransferRepoOption':
          return TransferRepoOption.fromJson(value);
        case 'UpdateFileOptions':
          return UpdateFileOptions.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserHeatmapData':
          return UserHeatmapData.fromJson(value);
        case 'WatchInfo':
          return WatchInfo.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: headerParams);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
