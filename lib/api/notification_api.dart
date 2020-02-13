part of gitea_openapi;



class NotificationApi {
  final ApiClient apiClient;

  NotificationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List users&#39;s notification threads with HTTP info returned
  ///
  /// 
  Future<Response> notifyGetListWithHttpInfo({ String all, DateTime since, DateTime before, int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/notifications".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
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

  /// List users&#39;s notification threads
  ///
  /// 
  Future<List<NotificationThread>> notifyGetList({ String all, DateTime since, DateTime before, int page, int limit }) async {
    Response response = await notifyGetListWithHttpInfo( all: all, since: since, before: before, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<NotificationThread>') as List).map((item) => item as NotificationThread).toList();
    } else {
      return null;
    }
  }

  /// List users&#39;s notification threads on a specific repo with HTTP info returned
  ///
  /// 
  Future<Response> notifyGetRepoListWithHttpInfo(String owner, String repo, { String all, DateTime since, DateTime before, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/notifications".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
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

  /// List users&#39;s notification threads on a specific repo
  ///
  /// 
  Future<List<NotificationThread>> notifyGetRepoList(String owner, String repo, { String all, DateTime since, DateTime before, int page, int limit }) async {
    Response response = await notifyGetRepoListWithHttpInfo(owner, repo,  all: all, since: since, before: before, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<NotificationThread>') as List).map((item) => item as NotificationThread).toList();
    } else {
      return null;
    }
  }

  /// Get notification thread by ID with HTTP info returned
  ///
  /// 
  Future<Response> notifyGetThreadWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/notifications/threads/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get notification thread by ID
  ///
  /// 
  Future<NotificationThread> notifyGetThread(String id) async {
    Response response = await notifyGetThreadWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NotificationThread') as NotificationThread;
    } else {
      return null;
    }
  }

  /// Check if unread notifications exist with HTTP info returned
  ///
  /// 
  Future<Response> notifyNewAvailableWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/notifications/new".replaceAll("{format}","json");

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

  /// Check if unread notifications exist
  ///
  /// 
  Future<NotificationCount> notifyNewAvailable() async {
    Response response = await notifyNewAvailableWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NotificationCount') as NotificationCount;
    } else {
      return null;
    }
  }

  /// Mark notification threads as read with HTTP info returned
  ///
  /// 
  Future notifyReadListWithHttpInfo({ DateTime lastReadAt }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/notifications".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(lastReadAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "last_read_at", lastReadAt));
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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Mark notification threads as read
  ///
  /// 
  Future notifyReadList({ DateTime lastReadAt }) async {
    Response response = await notifyReadListWithHttpInfo( lastReadAt: lastReadAt );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Mark notification threads as read on a specific repo with HTTP info returned
  ///
  /// 
  Future notifyReadRepoListWithHttpInfo(String owner, String repo, { DateTime lastReadAt }) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/notifications".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(lastReadAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "last_read_at", lastReadAt));
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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Mark notification threads as read on a specific repo
  ///
  /// 
  Future notifyReadRepoList(String owner, String repo, { DateTime lastReadAt }) async {
    Response response = await notifyReadRepoListWithHttpInfo(owner, repo,  lastReadAt: lastReadAt );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Mark notification thread as read by ID with HTTP info returned
  ///
  /// 
  Future notifyReadThreadWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/notifications/threads/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Mark notification thread as read by ID
  ///
  /// 
  Future notifyReadThread(String id) async {
    Response response = await notifyReadThreadWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
