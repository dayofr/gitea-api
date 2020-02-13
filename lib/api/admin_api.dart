part of openapi.api;



class AdminApi {
  final ApiClient apiClient;

  AdminApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an organization with HTTP info returned
  ///
  /// 
  Future<Response> adminCreateOrgWithHttpInfo(String username, CreateOrgOption organization) async {
    Object postBody = organization;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }
    if(organization == null) {
     throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/admin/users/{username}/orgs".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Create an organization
  ///
  /// 
  Future<Organization> adminCreateOrg(String username, CreateOrgOption organization) async {
    Response response = await adminCreateOrgWithHttpInfo(username, organization);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Organization') as Organization;
    } else {
      return null;
    }
  }

  /// Add a public key on behalf of a user with HTTP info returned
  ///
  /// 
  Future<Response> adminCreatePublicKeyWithHttpInfo(String username, { CreateKeyOption key }) async {
    Object postBody = key;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/admin/users/{username}/keys".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Add a public key on behalf of a user
  ///
  /// 
  Future<PublicKey> adminCreatePublicKey(String username, { CreateKeyOption key }) async {
    Response response = await adminCreatePublicKeyWithHttpInfo(username,  key: key );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PublicKey') as PublicKey;
    } else {
      return null;
    }
  }

  /// Create a repository on behalf of a user with HTTP info returned
  ///
  /// 
  Future<Response> adminCreateRepoWithHttpInfo(String username, CreateRepoOption repository) async {
    Object postBody = repository;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }
    if(repository == null) {
     throw ApiException(400, "Missing required param: repository");
    }

    // create path and map variables
    String path = "/admin/users/{username}/repos".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Create a repository on behalf of a user
  ///
  /// 
  Future<Repository> adminCreateRepo(String username, CreateRepoOption repository) async {
    Response response = await adminCreateRepoWithHttpInfo(username, repository);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Repository') as Repository;
    } else {
      return null;
    }
  }

  /// Create a user with HTTP info returned
  ///
  /// 
  Future<Response> adminCreateUserWithHttpInfo({ CreateUserOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/admin/users".replaceAll("{format}","json");

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

  /// Create a user
  ///
  /// 
  Future<User> adminCreateUser({ CreateUserOption body }) async {
    Response response = await adminCreateUserWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Delete a user with HTTP info returned
  ///
  /// 
  Future adminDeleteUserWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/admin/users/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Delete a user
  ///
  /// 
  Future adminDeleteUser(String username) async {
    Response response = await adminDeleteUserWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete a user&#39;s public key with HTTP info returned
  ///
  /// 
  Future adminDeleteUserPublicKeyWithHttpInfo(String username, int id) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/admin/users/{username}/keys/{id}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString()).replaceAll("{" + "id" + "}", id.toString());

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

  /// Delete a user&#39;s public key
  ///
  /// 
  Future adminDeleteUserPublicKey(String username, int id) async {
    Response response = await adminDeleteUserPublicKeyWithHttpInfo(username, id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Edit an existing user with HTTP info returned
  ///
  /// 
  Future<Response> adminEditUserWithHttpInfo(String username, { EditUserOption body }) async {
    Object postBody = body;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/admin/users/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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

  /// Edit an existing user
  ///
  /// 
  Future<User> adminEditUser(String username, { EditUserOption body }) async {
    Response response = await adminEditUserWithHttpInfo(username,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// List all organizations with HTTP info returned
  ///
  /// 
  Future<Response> adminGetAllOrgsWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/admin/orgs".replaceAll("{format}","json");

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

  /// List all organizations
  ///
  /// 
  Future<List<Organization>> adminGetAllOrgs({ int page, int limit }) async {
    Response response = await adminGetAllOrgsWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Organization>') as List).map((item) => item as Organization).toList();
    } else {
      return null;
    }
  }

  /// List all users with HTTP info returned
  ///
  /// 
  Future<Response> adminGetAllUsersWithHttpInfo({ int page, int limit }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/admin/users".replaceAll("{format}","json");

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

  /// List all users
  ///
  /// 
  Future<List<User>> adminGetAllUsers({ int page, int limit }) async {
    Response response = await adminGetAllUsersWithHttpInfo( page: page, limit: limit );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

}
