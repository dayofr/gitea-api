# gitea_openapi.MiscellaneousApi

## Load the API package
```dart
import 'package:gitea_openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSigningKey**](MiscellaneousApi.md#getSigningKey) | **GET** /signing-key.gpg | Get default signing-key.gpg
[**getVersion**](MiscellaneousApi.md#getVersion) | **GET** /version | Returns the version of the Gitea application
[**renderMarkdown**](MiscellaneousApi.md#renderMarkdown) | **POST** /markdown | Render a markdown document as HTML
[**renderMarkdownRaw**](MiscellaneousApi.md#renderMarkdownRaw) | **POST** /markdown/raw | Render raw markdown as HTML


# **getSigningKey**
> String getSigningKey()

Get default signing-key.gpg

### Example 
```dart
import 'package:gitea_openapi/api.dart';
// TODO Configure API key authorization: AccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: AuthorizationHeaderToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: SudoHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: SudoParam
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKeyPrefix = 'Bearer';

var api_instance = MiscellaneousApi();

try { 
    var result = api_instance.getSigningKey();
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getSigningKey: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersion**
> ServerVersion getVersion()

Returns the version of the Gitea application

### Example 
```dart
import 'package:gitea_openapi/api.dart';
// TODO Configure API key authorization: AccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: AuthorizationHeaderToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: SudoHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: SudoParam
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKeyPrefix = 'Bearer';

var api_instance = MiscellaneousApi();

try { 
    var result = api_instance.getVersion();
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getVersion: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerVersion**](ServerVersion.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renderMarkdown**
> String renderMarkdown(body)

Render a markdown document as HTML

### Example 
```dart
import 'package:gitea_openapi/api.dart';
// TODO Configure API key authorization: AccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: AuthorizationHeaderToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: SudoHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: SudoParam
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKeyPrefix = 'Bearer';

var api_instance = MiscellaneousApi();
var body = MarkdownOption(); // MarkdownOption | 

try { 
    var result = api_instance.renderMarkdown(body);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->renderMarkdown: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MarkdownOption**](MarkdownOption.md)|  | [optional] 

### Return type

**String**

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renderMarkdownRaw**
> String renderMarkdownRaw(body)

Render raw markdown as HTML

### Example 
```dart
import 'package:gitea_openapi/api.dart';
// TODO Configure API key authorization: AccessToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AccessToken').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: AuthorizationHeaderToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AuthorizationHeaderToken').apiKeyPrefix = 'Bearer';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';
// TODO Configure API key authorization: SudoHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoHeader').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: SudoParam
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('SudoParam').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: Token
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Token').apiKeyPrefix = 'Bearer';

var api_instance = MiscellaneousApi();
var body = String(); // String | Request body to render

try { 
    var result = api_instance.renderMarkdownRaw(body);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->renderMarkdownRaw: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| Request body to render | 

### Return type

**String**

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

