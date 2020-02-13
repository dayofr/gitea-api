# gitea_openapi.NotificationApi

## Load the API package
```dart
import 'package:gitea_openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifyGetList**](NotificationApi.md#notifyGetList) | **GET** /notifications | List users&#39;s notification threads
[**notifyGetRepoList**](NotificationApi.md#notifyGetRepoList) | **GET** /repos/{owner}/{repo}/notifications | List users&#39;s notification threads on a specific repo
[**notifyGetThread**](NotificationApi.md#notifyGetThread) | **GET** /notifications/threads/{id} | Get notification thread by ID
[**notifyNewAvailable**](NotificationApi.md#notifyNewAvailable) | **GET** /notifications/new | Check if unread notifications exist
[**notifyReadList**](NotificationApi.md#notifyReadList) | **PUT** /notifications | Mark notification threads as read
[**notifyReadRepoList**](NotificationApi.md#notifyReadRepoList) | **PUT** /repos/{owner}/{repo}/notifications | Mark notification threads as read on a specific repo
[**notifyReadThread**](NotificationApi.md#notifyReadThread) | **PATCH** /notifications/threads/{id} | Mark notification thread as read by ID


# **notifyGetList**
> List<NotificationThread> notifyGetList(all, since, before, page, limit)

List users's notification threads

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

var api_instance = NotificationApi();
var all = all_example; // String | If true, show notifications marked as read. Default value is false
var since = 2013-10-20T19:20:30+01:00; // DateTime | Only show notifications updated after the given time. This is a timestamp in RFC 3339 format
var before = 2013-10-20T19:20:30+01:00; // DateTime | Only show notifications updated before the given time. This is a timestamp in RFC 3339 format
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.notifyGetList(all, since, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->notifyGetList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | **String**| If true, show notifications marked as read. Default value is false | [optional] [default to null]
 **since** | **DateTime**| Only show notifications updated after the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **before** | **DateTime**| Only show notifications updated before the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<NotificationThread>**](NotificationThread.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyGetRepoList**
> List<NotificationThread> notifyGetRepoList(owner, repo, all, since, before, page, limit)

List users's notification threads on a specific repo

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

var api_instance = NotificationApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var all = all_example; // String | If true, show notifications marked as read. Default value is false
var since = 2013-10-20T19:20:30+01:00; // DateTime | Only show notifications updated after the given time. This is a timestamp in RFC 3339 format
var before = 2013-10-20T19:20:30+01:00; // DateTime | Only show notifications updated before the given time. This is a timestamp in RFC 3339 format
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.notifyGetRepoList(owner, repo, all, since, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->notifyGetRepoList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **all** | **String**| If true, show notifications marked as read. Default value is false | [optional] [default to null]
 **since** | **DateTime**| Only show notifications updated after the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **before** | **DateTime**| Only show notifications updated before the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<NotificationThread>**](NotificationThread.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyGetThread**
> NotificationThread notifyGetThread(id)

Get notification thread by ID

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

var api_instance = NotificationApi();
var id = id_example; // String | id of notification thread

try { 
    var result = api_instance.notifyGetThread(id);
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->notifyGetThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of notification thread | [default to null]

### Return type

[**NotificationThread**](NotificationThread.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyNewAvailable**
> NotificationCount notifyNewAvailable()

Check if unread notifications exist

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

var api_instance = NotificationApi();

try { 
    var result = api_instance.notifyNewAvailable();
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->notifyNewAvailable: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationCount**](NotificationCount.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyReadList**
> notifyReadList(lastReadAt)

Mark notification threads as read

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

var api_instance = NotificationApi();
var lastReadAt = 2013-10-20T19:20:30+01:00; // DateTime | Describes the last point that notifications were checked. Anything updated since this time will not be updated.

try { 
    api_instance.notifyReadList(lastReadAt);
} catch (e) {
    print("Exception when calling NotificationApi->notifyReadList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lastReadAt** | **DateTime**| Describes the last point that notifications were checked. Anything updated since this time will not be updated. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyReadRepoList**
> notifyReadRepoList(owner, repo, lastReadAt)

Mark notification threads as read on a specific repo

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

var api_instance = NotificationApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var lastReadAt = 2013-10-20T19:20:30+01:00; // DateTime | Describes the last point that notifications were checked. Anything updated since this time will not be updated.

try { 
    api_instance.notifyReadRepoList(owner, repo, lastReadAt);
} catch (e) {
    print("Exception when calling NotificationApi->notifyReadRepoList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **lastReadAt** | **DateTime**| Describes the last point that notifications were checked. Anything updated since this time will not be updated. | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notifyReadThread**
> notifyReadThread(id)

Mark notification thread as read by ID

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

var api_instance = NotificationApi();
var id = id_example; // String | id of notification thread

try { 
    api_instance.notifyReadThread(id);
} catch (e) {
    print("Exception when calling NotificationApi->notifyReadThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of notification thread | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

