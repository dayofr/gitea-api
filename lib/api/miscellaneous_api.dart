part of gitea_openapi;



class MiscellaneousApi {
  final ApiClient apiClient;

  MiscellaneousApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get default signing-key.gpg with HTTP info returned
  ///
  /// 
  Future<Response> getSigningKeyWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/signing-key.gpg".replaceAll("{format}","json");

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

  /// Get default signing-key.gpg
  ///
  /// 
  Future<String> getSigningKey() async {
    Response response = await getSigningKeyWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

  /// Returns the version of the Gitea application with HTTP info returned
  ///
  /// 
  Future<Response> getVersionWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/version".replaceAll("{format}","json");

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

  /// Returns the version of the Gitea application
  ///
  /// 
  Future<ServerVersion> getVersion() async {
    Response response = await getVersionWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ServerVersion') as ServerVersion;
    } else {
      return null;
    }
  }

  /// Render a markdown document as HTML with HTTP info returned
  ///
  /// 
  Future<Response> renderMarkdownWithHttpInfo({ MarkdownOption body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/markdown".replaceAll("{format}","json");

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

  /// Render a markdown document as HTML
  ///
  /// 
  Future<String> renderMarkdown({ MarkdownOption body }) async {
    Response response = await renderMarkdownWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

  /// Render raw markdown as HTML with HTTP info returned
  ///
  /// 
  Future<Response> renderMarkdownRawWithHttpInfo(String body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/markdown/raw".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["text/plain"];

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

  /// Render raw markdown as HTML
  ///
  /// 
  Future<String> renderMarkdownRaw(String body) async {
    Response response = await renderMarkdownRawWithHttpInfo(body);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

}
