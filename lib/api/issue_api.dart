part of openapi.api;



class IssueApi {
  final ApiClient apiClient;

  IssueApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a label to an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueAddLabelWithHttpInfo(String owner, String repo, int index, { IssueLabelsOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a label to an issue
  ///
  /// 
  Future<List<Label>> issueAddLabel(String owner, String repo, int index, { IssueLabelsOption body }) async {
    Response response = await issueAddLabelWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Label>') as List).map((item) => item as Label).toList();
    } else {
      return null;
    }
  }

  /// Subscribe user to issue with HTTP info returned
  ///
  /// 
  Future issueAddSubscriptionWithHttpInfo(String owner, String repo, int index, String user) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(user == null) {
     throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/subscriptions/{user}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "user" + "}", user.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Subscribe user to issue
  ///
  /// 
  Future issueAddSubscription(String owner, String repo, int index, String user) async {
    Response response = await issueAddSubscriptionWithHttpInfo(owner, repo, index, user);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Add tracked time to a issue with HTTP info returned
  ///
  /// 
  Future<Response> issueAddTimeWithHttpInfo(String owner, String repo, int index, { AddTimeOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/times".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add tracked time to a issue
  ///
  /// 
  Future<TrackedTime> issueAddTime(String owner, String repo, int index, { AddTimeOption body }) async {
    Response response = await issueAddTimeWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TrackedTime') as TrackedTime;
    } else {
      return null;
    }
  }

  /// Remove all labels from an issue with HTTP info returned
  ///
  /// 
  Future issueClearLabelsWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Remove all labels from an issue
  ///
  /// 
  Future issueClearLabels(String owner, String repo, int index) async {
    Response response = await issueClearLabelsWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Add a comment to an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueCreateCommentWithHttpInfo(String owner, String repo, int index, { CreateIssueCommentOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/comments".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a comment to an issue
  ///
  /// 
  Future<Comment> issueCreateComment(String owner, String repo, int index, { CreateIssueCommentOption body }) async {
    Response response = await issueCreateCommentWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Comment') as Comment;
    } else {
      return null;
    }
  }

  /// Create an issue. If using deadline only the date will be taken into account, and time of day ignored. with HTTP info returned
  ///
  /// 
  Future<Response> issueCreateIssueWithHttpInfo(String owner, String repo, { CreateIssueOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create an issue. If using deadline only the date will be taken into account, and time of day ignored.
  ///
  /// 
  Future<Issue> issueCreateIssue(String owner, String repo, { CreateIssueOption body }) async {
    Response response = await issueCreateIssueWithHttpInfo(owner, repo,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Issue') as Issue;
    } else {
      return null;
    }
  }

  /// Create a label with HTTP info returned
  ///
  /// 
  Future<Response> issueCreateLabelWithHttpInfo(String owner, String repo, { CreateLabelOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create a label
  ///
  /// 
  Future<Label> issueCreateLabel(String owner, String repo, { CreateLabelOption body }) async {
    Response response = await issueCreateLabelWithHttpInfo(owner, repo,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Label') as Label;
    } else {
      return null;
    }
  }

  /// Create a milestone with HTTP info returned
  ///
  /// 
  Future<Response> issueCreateMilestoneWithHttpInfo(String owner, String repo, { CreateMilestoneOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/milestones".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create a milestone
  ///
  /// 
  Future<Milestone> issueCreateMilestone(String owner, String repo, { CreateMilestoneOption body }) async {
    Response response = await issueCreateMilestoneWithHttpInfo(owner, repo,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Milestone') as Milestone;
    } else {
      return null;
    }
  }

  /// Delete a comment with HTTP info returned
  ///
  /// 
  Future issueDeleteCommentWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a comment
  ///
  /// 
  Future issueDeleteComment(String owner, String repo, int id) async {
    Response response = await issueDeleteCommentWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a comment with HTTP info returned
  ///
  /// 
  Future issueDeleteCommentDeprecatedWithHttpInfo(String owner, String repo, int index, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a comment
  ///
  /// 
  Future issueDeleteCommentDeprecated(String owner, String repo, int index, int id) async {
    Response response = await issueDeleteCommentDeprecatedWithHttpInfo(owner, repo, index, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Remove a reaction from a comment of an issue with HTTP info returned
  ///
  /// 
  Future issueDeleteCommentReactionWithHttpInfo(String owner, String repo, int id, { EditReactionOption content }) async {
    Object postBody = content;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Remove a reaction from a comment of an issue
  ///
  /// 
  Future issueDeleteCommentReaction(String owner, String repo, int id, { EditReactionOption content }) async {
    Response response = await issueDeleteCommentReactionWithHttpInfo(owner, repo, id,  content: content );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Remove a reaction from an issue with HTTP info returned
  ///
  /// 
  Future issueDeleteIssueReactionWithHttpInfo(String owner, String repo, int index, { EditReactionOption content }) async {
    Object postBody = content;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Remove a reaction from an issue
  ///
  /// 
  Future issueDeleteIssueReaction(String owner, String repo, int index, { EditReactionOption content }) async {
    Response response = await issueDeleteIssueReactionWithHttpInfo(owner, repo, index,  content: content );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a label with HTTP info returned
  ///
  /// 
  Future issueDeleteLabelWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/labels/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a label
  ///
  /// 
  Future issueDeleteLabel(String owner, String repo, int id) async {
    Response response = await issueDeleteLabelWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a milestone with HTTP info returned
  ///
  /// 
  Future issueDeleteMilestoneWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/milestones/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a milestone
  ///
  /// 
  Future issueDeleteMilestone(String owner, String repo, int id) async {
    Response response = await issueDeleteMilestoneWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete an issue&#39;s existing stopwatch. with HTTP info returned
  ///
  /// 
  Future issueDeleteStopWatchWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/stopwatch/delete".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete an issue&#39;s existing stopwatch.
  ///
  /// 
  Future issueDeleteStopWatch(String owner, String repo, int index) async {
    Response response = await issueDeleteStopWatchWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Unsubscribe user from issue with HTTP info returned
  ///
  /// 
  Future issueDeleteSubscriptionWithHttpInfo(String owner, String repo, int index, String user) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(user == null) {
     throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/subscriptions/{user}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "user" + "}", user.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Unsubscribe user from issue
  ///
  /// 
  Future issueDeleteSubscription(String owner, String repo, int index, String user) async {
    Response response = await issueDeleteSubscriptionWithHttpInfo(owner, repo, index, user);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete specific tracked time with HTTP info returned
  ///
  /// 
  Future issueDeleteTimeWithHttpInfo(String owner, String repo, int index, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/times/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete specific tracked time
  ///
  /// 
  Future issueDeleteTime(String owner, String repo, int index, int id) async {
    Response response = await issueDeleteTimeWithHttpInfo(owner, repo, index, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Edit a comment with HTTP info returned
  ///
  /// 
  Future<Response> issueEditCommentWithHttpInfo(String owner, String repo, int id, { EditIssueCommentOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Edit a comment
  ///
  /// 
  Future<Comment> issueEditComment(String owner, String repo, int id, { EditIssueCommentOption body }) async {
    Response response = await issueEditCommentWithHttpInfo(owner, repo, id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Comment') as Comment;
    } else {
      return null;
    }
  }

  /// Edit a comment with HTTP info returned
  ///
  /// 
  Future<Response> issueEditCommentDeprecatedWithHttpInfo(String owner, String repo, int index, int id, { EditIssueCommentOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Edit a comment
  ///
  /// 
  Future<Comment> issueEditCommentDeprecated(String owner, String repo, int index, int id, { EditIssueCommentOption body }) async {
    Response response = await issueEditCommentDeprecatedWithHttpInfo(owner, repo, index, id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Comment') as Comment;
    } else {
      return null;
    }
  }

  /// Edit an issue. If using deadline only the date will be taken into account, and time of day ignored. with HTTP info returned
  ///
  /// 
  Future<Response> issueEditIssueWithHttpInfo(String owner, String repo, int index, { EditIssueOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Edit an issue. If using deadline only the date will be taken into account, and time of day ignored.
  ///
  /// 
  Future<Issue> issueEditIssue(String owner, String repo, int index, { EditIssueOption body }) async {
    Response response = await issueEditIssueWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Issue') as Issue;
    } else {
      return null;
    }
  }

  /// Set an issue deadline. If set to null, the deadline is deleted. If using deadline only the date will be taken into account, and time of day ignored. with HTTP info returned
  ///
  /// 
  Future<Response> issueEditIssueDeadlineWithHttpInfo(String owner, String repo, int index, { EditDeadlineOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/deadline".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Set an issue deadline. If set to null, the deadline is deleted. If using deadline only the date will be taken into account, and time of day ignored.
  ///
  /// 
  Future<IssueDeadline> issueEditIssueDeadline(String owner, String repo, int index, { EditDeadlineOption body }) async {
    Response response = await issueEditIssueDeadlineWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'IssueDeadline') as IssueDeadline;
    } else {
      return null;
    }
  }

  /// Update a label with HTTP info returned
  ///
  /// 
  Future<Response> issueEditLabelWithHttpInfo(String owner, String repo, int id, { EditLabelOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/labels/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Update a label
  ///
  /// 
  Future<Label> issueEditLabel(String owner, String repo, int id, { EditLabelOption body }) async {
    Response response = await issueEditLabelWithHttpInfo(owner, repo, id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Label') as Label;
    } else {
      return null;
    }
  }

  /// Update a milestone with HTTP info returned
  ///
  /// 
  Future<Response> issueEditMilestoneWithHttpInfo(String owner, String repo, int id, { EditMilestoneOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/milestones/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Update a milestone
  ///
  /// 
  Future<Milestone> issueEditMilestone(String owner, String repo, int id, { EditMilestoneOption body }) async {
    Response response = await issueEditMilestoneWithHttpInfo(owner, repo, id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Milestone') as Milestone;
    } else {
      return null;
    }
  }

  /// Get a comment with HTTP info returned
  ///
  /// 
  Future<Response> issueGetCommentWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a comment
  ///
  /// 
  Future<Comment> issueGetComment(String owner, String repo, int id) async {
    Response response = await issueGetCommentWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Comment') as Comment;
    } else {
      return null;
    }
  }

  /// Get a list of reactions from a comment of an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueGetCommentReactionsWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a list of reactions from a comment of an issue
  ///
  /// 
  Future<List<Reaction>> issueGetCommentReactions(String owner, String repo, int id) async {
    Response response = await issueGetCommentReactionsWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }

  /// List all comments on an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueGetCommentsWithHttpInfo(String owner, String repo, int index, { DateTime since, DateTime before }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/comments".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// List all comments on an issue
  ///
  /// 
  Future<List<Comment>> issueGetComments(String owner, String repo, int index, { DateTime since, DateTime before }) async {
    Response response = await issueGetCommentsWithHttpInfo(owner, repo, index,  since: since, before: before );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Comment>') as List).map((item) => item as Comment).toList();
    } else {
      return null;
    }
  }

  /// Get an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueGetIssueWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get an issue
  ///
  /// 
  Future<Issue> issueGetIssue(String owner, String repo, int index) async {
    Response response = await issueGetIssueWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Issue') as Issue;
    } else {
      return null;
    }
  }

  /// Get a list reactions of an issue with HTTP info returned
  ///
  /// 
  Future<Response> issueGetIssueReactionsWithHttpInfo(String owner, String repo, int index, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a list reactions of an issue
  ///
  /// 
  Future<List<Reaction>> issueGetIssueReactions(String owner, String repo, int index, { int page, int limit }) async {
    Response response = await issueGetIssueReactionsWithHttpInfo(owner, repo, index,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }

  /// Get a single label with HTTP info returned
  ///
  /// 
  Future<Response> issueGetLabelWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/labels/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a single label
  ///
  /// 
  Future<Label> issueGetLabel(String owner, String repo, int id) async {
    Response response = await issueGetLabelWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Label') as Label;
    } else {
      return null;
    }
  }

  /// Get an issue&#39;s labels with HTTP info returned
  ///
  /// 
  Future<Response> issueGetLabelsWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get an issue&#39;s labels
  ///
  /// 
  Future<List<Label>> issueGetLabels(String owner, String repo, int index) async {
    Response response = await issueGetLabelsWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Label>') as List).map((item) => item as Label).toList();
    } else {
      return null;
    }
  }

  /// Get a milestone with HTTP info returned
  ///
  /// 
  Future<Response> issueGetMilestoneWithHttpInfo(String owner, String repo, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/milestones/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a milestone
  ///
  /// 
  Future<Milestone> issueGetMilestone(String owner, String repo, int id) async {
    Response response = await issueGetMilestoneWithHttpInfo(owner, repo, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Milestone') as Milestone;
    } else {
      return null;
    }
  }

  /// Get all of a repository&#39;s opened milestones with HTTP info returned
  ///
  /// 
  Future<Response> issueGetMilestonesListWithHttpInfo(String owner, String repo, { String state, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/milestones".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get all of a repository&#39;s opened milestones
  ///
  /// 
  Future<List<Milestone>> issueGetMilestonesList(String owner, String repo, { String state, int page, int limit }) async {
    Response response = await issueGetMilestonesListWithHttpInfo(owner, repo,  state: state, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Milestone>') as List).map((item) => item as Milestone).toList();
    } else {
      return null;
    }
  }

  /// List all comments in a repository with HTTP info returned
  ///
  /// 
  Future<Response> issueGetRepoCommentsWithHttpInfo(String owner, String repo, { DateTime since, DateTime before, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// List all comments in a repository
  ///
  /// 
  Future<List<Comment>> issueGetRepoComments(String owner, String repo, { DateTime since, DateTime before, int page, int limit }) async {
    Response response = await issueGetRepoCommentsWithHttpInfo(owner, repo,  since: since, before: before, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Comment>') as List).map((item) => item as Comment).toList();
    } else {
      return null;
    }
  }

  /// List a repository&#39;s issues with HTTP info returned
  ///
  /// 
  Future<Response> issueListIssuesWithHttpInfo(String owner, String repo, { String state, String labels, String q, String type, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(labels != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "labels", labels));
    }
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// List a repository&#39;s issues
  ///
  /// 
  Future<List<Issue>> issueListIssues(String owner, String repo, { String state, String labels, String q, String type, int page, int limit }) async {
    Response response = await issueListIssuesWithHttpInfo(owner, repo,  state: state, labels: labels, q: q, type: type, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Issue>') as List).map((item) => item as Issue).toList();
    } else {
      return null;
    }
  }

  /// Get all of a repository&#39;s labels with HTTP info returned
  ///
  /// 
  Future<Response> issueListLabelsWithHttpInfo(String owner, String repo, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get all of a repository&#39;s labels
  ///
  /// 
  Future<List<Label>> issueListLabels(String owner, String repo, { int page, int limit }) async {
    Response response = await issueListLabelsWithHttpInfo(owner, repo,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Label>') as List).map((item) => item as Label).toList();
    } else {
      return null;
    }
  }

  /// Add a reaction to a comment of an issue with HTTP info returned
  ///
  /// 
  Future<Response> issuePostCommentReactionWithHttpInfo(String owner, String repo, int id, { EditReactionOption content }) async {
    Object postBody = content;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a reaction to a comment of an issue
  ///
  /// 
  Future<Reaction> issuePostCommentReaction(String owner, String repo, int id, { EditReactionOption content }) async {
    Response response = await issuePostCommentReactionWithHttpInfo(owner, repo, id,  content: content );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Reaction') as Reaction;
    } else {
      return null;
    }
  }

  /// Add a reaction to an issue with HTTP info returned
  ///
  /// 
  Future<Response> issuePostIssueReactionWithHttpInfo(String owner, String repo, int index, { EditReactionOption content }) async {
    Object postBody = content;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a reaction to an issue
  ///
  /// 
  Future<Reaction> issuePostIssueReaction(String owner, String repo, int index, { EditReactionOption content }) async {
    Response response = await issuePostIssueReactionWithHttpInfo(owner, repo, index,  content: content );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Reaction') as Reaction;
    } else {
      return null;
    }
  }

  /// Remove a label from an issue with HTTP info returned
  ///
  /// 
  Future issueRemoveLabelWithHttpInfo(String owner, String repo, int index, int id) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/labels/{id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString()).replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Remove a label from an issue
  ///
  /// 
  Future issueRemoveLabel(String owner, String repo, int index, int id) async {
    Response response = await issueRemoveLabelWithHttpInfo(owner, repo, index, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Replace an issue&#39;s labels with HTTP info returned
  ///
  /// 
  Future<Response> issueReplaceLabelsWithHttpInfo(String owner, String repo, int index, { IssueLabelsOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/labels".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Replace an issue&#39;s labels
  ///
  /// 
  Future<List<Label>> issueReplaceLabels(String owner, String repo, int index, { IssueLabelsOption body }) async {
    Response response = await issueReplaceLabelsWithHttpInfo(owner, repo, index,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Label>') as List).map((item) => item as Label).toList();
    } else {
      return null;
    }
  }

  /// Reset a tracked time of an issue with HTTP info returned
  ///
  /// 
  Future issueResetTimeWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/times".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Reset a tracked time of an issue
  ///
  /// 
  Future issueResetTime(String owner, String repo, int index) async {
    Response response = await issueResetTimeWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Search for issues across the repositories that the user has access to with HTTP info returned
  ///
  /// 
  Future<Response> issueSearchIssuesWithHttpInfo({ String state, String labels, String q, int priorityRepoId, String type, int page }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/repos/issues/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(labels != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "labels", labels));
    }
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(priorityRepoId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "priority_repo_id", priorityRepoId));
    }
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Search for issues across the repositories that the user has access to
  ///
  /// 
  Future<List<Issue>> issueSearchIssues({ String state, String labels, String q, int priorityRepoId, String type, int page }) async {
    Response response = await issueSearchIssuesWithHttpInfo( state: state, labels: labels, q: q, priorityRepoId: priorityRepoId, type: type, page: page );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Issue>') as List).map((item) => item as Issue).toList();
    } else {
      return null;
    }
  }

  /// Start stopwatch on an issue. with HTTP info returned
  ///
  /// 
  Future issueStartStopWatchWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/stopwatch/start".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Start stopwatch on an issue.
  ///
  /// 
  Future issueStartStopWatch(String owner, String repo, int index) async {
    Response response = await issueStartStopWatchWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Stop an issue&#39;s existing stopwatch. with HTTP info returned
  ///
  /// 
  Future issueStopStopWatchWithHttpInfo(String owner, String repo, int index) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/stopwatch/stop".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Stop an issue&#39;s existing stopwatch.
  ///
  /// 
  Future issueStopStopWatch(String owner, String repo, int index) async {
    Response response = await issueStopStopWatchWithHttpInfo(owner, repo, index);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get users who subscribed on an issue. with HTTP info returned
  ///
  /// 
  Future<Response> issueSubscriptionsWithHttpInfo(String owner, String repo, int index, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/subscriptions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get users who subscribed on an issue.
  ///
  /// 
  Future<List<User>> issueSubscriptions(String owner, String repo, int index, { int page, int limit }) async {
    Response response = await issueSubscriptionsWithHttpInfo(owner, repo, index,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// List an issue&#39;s tracked times with HTTP info returned
  ///
  /// 
  Future<Response> issueTrackedTimesWithHttpInfo(String owner, String repo, int index, { DateTime since, DateTime before, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }
    if(index == null) {
     throw ApiException(400, "Missing required param: index");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{index}/times".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "index" + "}", index.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["AccessToken", "AuthorizationHeaderToken", "BasicAuth", "SudoHeader", "SudoParam", "Token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// List an issue&#39;s tracked times
  ///
  /// 
  Future<List<TrackedTime>> issueTrackedTimes(String owner, String repo, int index, { DateTime since, DateTime before, int page, int limit }) async {
    Response response = await issueTrackedTimesWithHttpInfo(owner, repo, index,  since: since, before: before, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TrackedTime>') as List).map((item) => item as TrackedTime).toList();
    } else {
      return null;
    }
  }

}
