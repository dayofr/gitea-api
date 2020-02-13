part of openapi.api;



class UserApi {
  final ApiClient apiClient;

  UserApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a repository with HTTP info returned
  ///
  /// 
  Future<Response> createCurrentUserRepoWithHttpInfo({ CreateRepoOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/user/repos".replaceAll("{format}","json");

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

  /// Create a repository
  ///
  /// 
  Future<Repository> createCurrentUserRepo({ CreateRepoOption body }) async {
    Response response = await createCurrentUserRepoWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Repository') as Repository;
    } else {
      return null;
    }
  }

  /// Add email addresses with HTTP info returned
  ///
  /// 
  Future<Response> userAddEmailWithHttpInfo({ CreateEmailOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/user/emails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","text/plain"];

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

  /// Add email addresses
  ///
  /// 
  Future<List<Email>> userAddEmail({ CreateEmailOption body }) async {
    Response response = await userAddEmailWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Email>') as List).map((item) => item as Email).toList();
    } else {
      return null;
    }
  }

  /// Check if one user is following another user with HTTP info returned
  ///
  /// 
  Future userCheckFollowingWithHttpInfo(String follower, String followee) async {
    Object postBody;

    // verify required params are set
    if(follower == null) {
     throw ApiException(400, "Missing required param: follower");
    }
    if(followee == null) {
     throw ApiException(400, "Missing required param: followee");
    }

    // create path and map variables
    String path = "/users/{follower}/following/{followee}".replaceAll("{format}","json").replaceAll("{" + "follower" + "}", follower.toString()).replaceAll("{" + "followee" + "}", followee.toString());

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

  /// Check if one user is following another user
  ///
  /// 
  Future userCheckFollowing(String follower, String followee) async {
    Response response = await userCheckFollowingWithHttpInfo(follower, followee);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Create an access token with HTTP info returned
  ///
  /// 
  Future userCreateTokenWithHttpInfo(String username, { InlineObject accessToken }) async {
    Object postBody = accessToken;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/tokens".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Create an access token
  ///
  /// 
  Future userCreateToken(String username, { InlineObject accessToken }) async {
    Response response = await userCreateTokenWithHttpInfo(username,  accessToken: accessToken );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Check whether a user is followed by the authenticated user with HTTP info returned
  ///
  /// 
  Future userCurrentCheckFollowingWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/user/following/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Check whether a user is followed by the authenticated user
  ///
  /// 
  Future userCurrentCheckFollowing(String username) async {
    Response response = await userCurrentCheckFollowingWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Whether the authenticated is starring the repo with HTTP info returned
  ///
  /// 
  Future userCurrentCheckStarringWithHttpInfo(String owner, String repo) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/user/starred/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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

  /// Whether the authenticated is starring the repo
  ///
  /// 
  Future userCurrentCheckStarring(String owner, String repo) async {
    Response response = await userCurrentCheckStarringWithHttpInfo(owner, repo);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Unfollow a user with HTTP info returned
  ///
  /// 
  Future userCurrentDeleteFollowWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/user/following/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Unfollow a user
  ///
  /// 
  Future userCurrentDeleteFollow(String username) async {
    Response response = await userCurrentDeleteFollowWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Remove a GPG key with HTTP info returned
  ///
  /// 
  Future userCurrentDeleteGPGKeyWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/user/gpg_keys/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Remove a GPG key
  ///
  /// 
  Future userCurrentDeleteGPGKey(int id) async {
    Response response = await userCurrentDeleteGPGKeyWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a public key with HTTP info returned
  ///
  /// 
  Future userCurrentDeleteKeyWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/user/keys/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Delete a public key
  ///
  /// 
  Future userCurrentDeleteKey(int id) async {
    Response response = await userCurrentDeleteKeyWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Unstar the given repo with HTTP info returned
  ///
  /// 
  Future userCurrentDeleteStarWithHttpInfo(String owner, String repo) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/user/starred/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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

  /// Unstar the given repo
  ///
  /// 
  Future userCurrentDeleteStar(String owner, String repo) async {
    Response response = await userCurrentDeleteStarWithHttpInfo(owner, repo);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get a GPG key with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentGetGPGKeyWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/user/gpg_keys/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get a GPG key
  ///
  /// 
  Future<GPGKey> userCurrentGetGPGKey(int id) async {
    Response response = await userCurrentGetGPGKeyWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GPGKey') as GPGKey;
    } else {
      return null;
    }
  }

  /// Get a public key with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentGetKeyWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/user/keys/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// Get a public key
  ///
  /// 
  Future<PublicKey> userCurrentGetKey(int id) async {
    Response response = await userCurrentGetKeyWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PublicKey') as PublicKey;
    } else {
      return null;
    }
  }

  /// List the authenticated user&#39;s followers with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListFollowersWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/followers".replaceAll("{format}","json");

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

  /// List the authenticated user&#39;s followers
  ///
  /// 
  Future<List<User>> userCurrentListFollowers({ int page, int limit }) async {
    Response response = await userCurrentListFollowersWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// List the users that the authenticated user is following with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListFollowingWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/following".replaceAll("{format}","json");

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

  /// List the users that the authenticated user is following
  ///
  /// 
  Future<List<User>> userCurrentListFollowing({ int page, int limit }) async {
    Response response = await userCurrentListFollowingWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// List the authenticated user&#39;s GPG keys with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListGPGKeysWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/gpg_keys".replaceAll("{format}","json");

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

  /// List the authenticated user&#39;s GPG keys
  ///
  /// 
  Future<List<GPGKey>> userCurrentListGPGKeys({ int page, int limit }) async {
    Response response = await userCurrentListGPGKeysWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GPGKey>') as List).map((item) => item as GPGKey).toList();
    } else {
      return null;
    }
  }

  /// List the authenticated user&#39;s public keys with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListKeysWithHttpInfo({ String fingerprint, int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/keys".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fingerprint != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fingerprint", fingerprint));
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

  /// List the authenticated user&#39;s public keys
  ///
  /// 
  Future<List<PublicKey>> userCurrentListKeys({ String fingerprint, int page, int limit }) async {
    Response response = await userCurrentListKeysWithHttpInfo( fingerprint: fingerprint, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PublicKey>') as List).map((item) => item as PublicKey).toList();
    } else {
      return null;
    }
  }

  /// List the repos that the authenticated user owns or has access to with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListReposWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/repos".replaceAll("{format}","json");

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

  /// List the repos that the authenticated user owns or has access to
  ///
  /// 
  Future<List<Repository>> userCurrentListRepos({ int page, int limit }) async {
    Response response = await userCurrentListReposWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// The repos that the authenticated user has starred with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListStarredWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/starred".replaceAll("{format}","json");

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

  /// The repos that the authenticated user has starred
  ///
  /// 
  Future<List<Repository>> userCurrentListStarred({ int page, int limit }) async {
    Response response = await userCurrentListStarredWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// List repositories watched by the authenticated user with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentListSubscriptionsWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/subscriptions".replaceAll("{format}","json");

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

  /// List repositories watched by the authenticated user
  ///
  /// 
  Future<List<Repository>> userCurrentListSubscriptions({ int page, int limit }) async {
    Response response = await userCurrentListSubscriptionsWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// Create a GPG key with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentPostGPGKeyWithHttpInfo({ CreateGPGKeyOption form }) async {
    Object postBody = form;

    // verify required params are set

    // create path and map variables
    String path = "/user/gpg_keys".replaceAll("{format}","json");

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

  /// Create a GPG key
  ///
  /// 
  Future<GPGKey> userCurrentPostGPGKey({ CreateGPGKeyOption form }) async {
    Response response = await userCurrentPostGPGKeyWithHttpInfo( form: form );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'GPGKey') as GPGKey;
    } else {
      return null;
    }
  }

  /// Create a public key with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentPostKeyWithHttpInfo({ CreateKeyOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/user/keys".replaceAll("{format}","json");

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

  /// Create a public key
  ///
  /// 
  Future<PublicKey> userCurrentPostKey({ CreateKeyOption body }) async {
    Response response = await userCurrentPostKeyWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PublicKey') as PublicKey;
    } else {
      return null;
    }
  }

  /// Follow a user with HTTP info returned
  ///
  /// 
  Future userCurrentPutFollowWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/user/following/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Follow a user
  ///
  /// 
  Future userCurrentPutFollow(String username) async {
    Response response = await userCurrentPutFollowWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Star the given repo with HTTP info returned
  ///
  /// 
  Future userCurrentPutStarWithHttpInfo(String owner, String repo) async {
    Object postBody;

    // verify required params are set
    if(owner == null) {
     throw ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/user/starred/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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

  /// Star the given repo
  ///
  /// 
  Future userCurrentPutStar(String owner, String repo) async {
    Response response = await userCurrentPutStarWithHttpInfo(owner, repo);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List the current user&#39;s tracked times with HTTP info returned
  ///
  /// 
  Future<Response> userCurrentTrackedTimesWithHttpInfo({ DateTime since, DateTime before }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/times".replaceAll("{format}","json");

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

  /// List the current user&#39;s tracked times
  ///
  /// 
  Future<List<TrackedTime>> userCurrentTrackedTimes({ DateTime since, DateTime before }) async {
    Response response = await userCurrentTrackedTimesWithHttpInfo( since: since, before: before );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TrackedTime>') as List).map((item) => item as TrackedTime).toList();
    } else {
      return null;
    }
  }

  /// delete an access token with HTTP info returned
  ///
  /// 
  Future userDeleteAccessTokenWithHttpInfo(String username, int token) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }
    if(token == null) {
     throw ApiException(400, "Missing required param: token");
    }

    // create path and map variables
    String path = "/users/{username}/tokens/{token}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "token" + "}", token.toString());

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

  /// delete an access token
  ///
  /// 
  Future userDeleteAccessToken(String username, int token) async {
    Response response = await userDeleteAccessTokenWithHttpInfo(username, token);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete email addresses with HTTP info returned
  ///
  /// 
  Future userDeleteEmailWithHttpInfo({ DeleteEmailOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/user/emails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json","text/plain"];

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

  /// Delete email addresses
  ///
  /// 
  Future userDeleteEmail({ DeleteEmailOption body }) async {
    Response response = await userDeleteEmailWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get a user with HTTP info returned
  ///
  /// 
  Future<Response> userGetWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Get a user
  ///
  /// 
  Future<User> userGet(String username) async {
    Response response = await userGetWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Get the authenticated user with HTTP info returned
  ///
  /// 
  Future<Response> userGetCurrentWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user".replaceAll("{format}","json");

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

  /// Get the authenticated user
  ///
  /// 
  Future<User> userGetCurrent() async {
    Response response = await userGetCurrentWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Get a user&#39;s heatmap with HTTP info returned
  ///
  /// 
  Future<Response> userGetHeatmapDataWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/heatmap".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Get a user&#39;s heatmap
  ///
  /// 
  Future<List<UserHeatmapData>> userGetHeatmapData(String username) async {
    Response response = await userGetHeatmapDataWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<UserHeatmapData>') as List).map((item) => item as UserHeatmapData).toList();
    } else {
      return null;
    }
  }

  /// Get list of all existing stopwatches with HTTP info returned
  ///
  /// 
  Future<Response> userGetStopWatchesWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/stopwatches".replaceAll("{format}","json");

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

  /// Get list of all existing stopwatches
  ///
  /// 
  Future<List<StopWatch>> userGetStopWatches({ int page, int limit }) async {
    Response response = await userGetStopWatchesWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<StopWatch>') as List).map((item) => item as StopWatch).toList();
    } else {
      return null;
    }
  }

  /// List the authenticated user&#39;s access tokens with HTTP info returned
  ///
  /// 
  Future<Response> userGetTokensWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/tokens".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the authenticated user&#39;s access tokens
  ///
  /// 
  Future<List<AccessToken>> userGetTokens(String username, { int page, int limit }) async {
    Response response = await userGetTokensWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AccessToken>') as List).map((item) => item as AccessToken).toList();
    } else {
      return null;
    }
  }

  /// List the authenticated user&#39;s email addresses with HTTP info returned
  ///
  /// 
  Future<Response> userListEmailsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/emails".replaceAll("{format}","json");

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

  /// List the authenticated user&#39;s email addresses
  ///
  /// 
  Future<List<Email>> userListEmails() async {
    Response response = await userListEmailsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Email>') as List).map((item) => item as Email).toList();
    } else {
      return null;
    }
  }

  /// List the given user&#39;s followers with HTTP info returned
  ///
  /// 
  Future<Response> userListFollowersWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/followers".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the given user&#39;s followers
  ///
  /// 
  Future<List<User>> userListFollowers(String username, { int page, int limit }) async {
    Response response = await userListFollowersWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// List the users that the given user is following with HTTP info returned
  ///
  /// 
  Future<Response> userListFollowingWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/following".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the users that the given user is following
  ///
  /// 
  Future<List<User>> userListFollowing(String username, { int page, int limit }) async {
    Response response = await userListFollowingWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// List the given user&#39;s GPG keys with HTTP info returned
  ///
  /// 
  Future<Response> userListGPGKeysWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/gpg_keys".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the given user&#39;s GPG keys
  ///
  /// 
  Future<List<GPGKey>> userListGPGKeys(String username, { int page, int limit }) async {
    Response response = await userListGPGKeysWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<GPGKey>') as List).map((item) => item as GPGKey).toList();
    } else {
      return null;
    }
  }

  /// List the given user&#39;s public keys with HTTP info returned
  ///
  /// 
  Future<Response> userListKeysWithHttpInfo(String username, { String fingerprint, int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/keys".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fingerprint != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fingerprint", fingerprint));
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

  /// List the given user&#39;s public keys
  ///
  /// 
  Future<List<PublicKey>> userListKeys(String username, { String fingerprint, int page, int limit }) async {
    Response response = await userListKeysWithHttpInfo(username,  fingerprint: fingerprint, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PublicKey>') as List).map((item) => item as PublicKey).toList();
    } else {
      return null;
    }
  }

  /// List the repos owned by the given user with HTTP info returned
  ///
  /// 
  Future<Response> userListReposWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/repos".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the repos owned by the given user
  ///
  /// 
  Future<List<Repository>> userListRepos(String username, { int page, int limit }) async {
    Response response = await userListReposWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// The repos that the given user has starred with HTTP info returned
  ///
  /// 
  Future<Response> userListStarredWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/starred".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// The repos that the given user has starred
  ///
  /// 
  Future<List<Repository>> userListStarred(String username, { int page, int limit }) async {
    Response response = await userListStarredWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// List the repositories watched by a user with HTTP info returned
  ///
  /// 
  Future<Response> userListSubscriptionsWithHttpInfo(String username, { int page, int limit }) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/subscriptions".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// List the repositories watched by a user
  ///
  /// 
  Future<List<Repository>> userListSubscriptions(String username, { int page, int limit }) async {
    Response response = await userListSubscriptionsWithHttpInfo(username,  page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Repository>') as List).map((item) => item as Repository).toList();
    } else {
      return null;
    }
  }

  /// List all the teams a user belongs to with HTTP info returned
  ///
  /// 
  Future<Response> userListTeamsWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user/teams".replaceAll("{format}","json");

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

  /// List all the teams a user belongs to
  ///
  /// 
  Future<List<Team>> userListTeams({ int page, int limit }) async {
    Response response = await userListTeamsWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Team>') as List).map((item) => item as Team).toList();
    } else {
      return null;
    }
  }

  /// Search for users with HTTP info returned
  ///
  /// 
  Future<Response> userSearchWithHttpInfo({ String q, int uid, int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/users/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(uid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "uid", uid));
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

  /// Search for users
  ///
  /// 
  Future<InlineResponse2001> userSearch({ String q, int uid, int page, int limit }) async {
    Response response = await userSearchWithHttpInfo( q: q, uid: uid, page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse2001') as InlineResponse2001;
    } else {
      return null;
    }
  }

}
