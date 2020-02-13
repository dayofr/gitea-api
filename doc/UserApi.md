# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurrentUserRepo**](UserApi.md#createCurrentUserRepo) | **POST** /user/repos | Create a repository
[**userAddEmail**](UserApi.md#userAddEmail) | **POST** /user/emails | Add email addresses
[**userCheckFollowing**](UserApi.md#userCheckFollowing) | **GET** /users/{follower}/following/{followee} | Check if one user is following another user
[**userCreateToken**](UserApi.md#userCreateToken) | **POST** /users/{username}/tokens | Create an access token
[**userCurrentCheckFollowing**](UserApi.md#userCurrentCheckFollowing) | **GET** /user/following/{username} | Check whether a user is followed by the authenticated user
[**userCurrentCheckStarring**](UserApi.md#userCurrentCheckStarring) | **GET** /user/starred/{owner}/{repo} | Whether the authenticated is starring the repo
[**userCurrentDeleteFollow**](UserApi.md#userCurrentDeleteFollow) | **DELETE** /user/following/{username} | Unfollow a user
[**userCurrentDeleteGPGKey**](UserApi.md#userCurrentDeleteGPGKey) | **DELETE** /user/gpg_keys/{id} | Remove a GPG key
[**userCurrentDeleteKey**](UserApi.md#userCurrentDeleteKey) | **DELETE** /user/keys/{id} | Delete a public key
[**userCurrentDeleteStar**](UserApi.md#userCurrentDeleteStar) | **DELETE** /user/starred/{owner}/{repo} | Unstar the given repo
[**userCurrentGetGPGKey**](UserApi.md#userCurrentGetGPGKey) | **GET** /user/gpg_keys/{id} | Get a GPG key
[**userCurrentGetKey**](UserApi.md#userCurrentGetKey) | **GET** /user/keys/{id} | Get a public key
[**userCurrentListFollowers**](UserApi.md#userCurrentListFollowers) | **GET** /user/followers | List the authenticated user&#39;s followers
[**userCurrentListFollowing**](UserApi.md#userCurrentListFollowing) | **GET** /user/following | List the users that the authenticated user is following
[**userCurrentListGPGKeys**](UserApi.md#userCurrentListGPGKeys) | **GET** /user/gpg_keys | List the authenticated user&#39;s GPG keys
[**userCurrentListKeys**](UserApi.md#userCurrentListKeys) | **GET** /user/keys | List the authenticated user&#39;s public keys
[**userCurrentListRepos**](UserApi.md#userCurrentListRepos) | **GET** /user/repos | List the repos that the authenticated user owns or has access to
[**userCurrentListStarred**](UserApi.md#userCurrentListStarred) | **GET** /user/starred | The repos that the authenticated user has starred
[**userCurrentListSubscriptions**](UserApi.md#userCurrentListSubscriptions) | **GET** /user/subscriptions | List repositories watched by the authenticated user
[**userCurrentPostGPGKey**](UserApi.md#userCurrentPostGPGKey) | **POST** /user/gpg_keys | Create a GPG key
[**userCurrentPostKey**](UserApi.md#userCurrentPostKey) | **POST** /user/keys | Create a public key
[**userCurrentPutFollow**](UserApi.md#userCurrentPutFollow) | **PUT** /user/following/{username} | Follow a user
[**userCurrentPutStar**](UserApi.md#userCurrentPutStar) | **PUT** /user/starred/{owner}/{repo} | Star the given repo
[**userCurrentTrackedTimes**](UserApi.md#userCurrentTrackedTimes) | **GET** /user/times | List the current user&#39;s tracked times
[**userDeleteAccessToken**](UserApi.md#userDeleteAccessToken) | **DELETE** /users/{username}/tokens/{token} | delete an access token
[**userDeleteEmail**](UserApi.md#userDeleteEmail) | **DELETE** /user/emails | Delete email addresses
[**userGet**](UserApi.md#userGet) | **GET** /users/{username} | Get a user
[**userGetCurrent**](UserApi.md#userGetCurrent) | **GET** /user | Get the authenticated user
[**userGetHeatmapData**](UserApi.md#userGetHeatmapData) | **GET** /users/{username}/heatmap | Get a user&#39;s heatmap
[**userGetStopWatches**](UserApi.md#userGetStopWatches) | **GET** /user/stopwatches | Get list of all existing stopwatches
[**userGetTokens**](UserApi.md#userGetTokens) | **GET** /users/{username}/tokens | List the authenticated user&#39;s access tokens
[**userListEmails**](UserApi.md#userListEmails) | **GET** /user/emails | List the authenticated user&#39;s email addresses
[**userListFollowers**](UserApi.md#userListFollowers) | **GET** /users/{username}/followers | List the given user&#39;s followers
[**userListFollowing**](UserApi.md#userListFollowing) | **GET** /users/{username}/following | List the users that the given user is following
[**userListGPGKeys**](UserApi.md#userListGPGKeys) | **GET** /users/{username}/gpg_keys | List the given user&#39;s GPG keys
[**userListKeys**](UserApi.md#userListKeys) | **GET** /users/{username}/keys | List the given user&#39;s public keys
[**userListRepos**](UserApi.md#userListRepos) | **GET** /users/{username}/repos | List the repos owned by the given user
[**userListStarred**](UserApi.md#userListStarred) | **GET** /users/{username}/starred | The repos that the given user has starred
[**userListSubscriptions**](UserApi.md#userListSubscriptions) | **GET** /users/{username}/subscriptions | List the repositories watched by a user
[**userListTeams**](UserApi.md#userListTeams) | **GET** /user/teams | List all the teams a user belongs to
[**userSearch**](UserApi.md#userSearch) | **GET** /users/search | Search for users


# **createCurrentUserRepo**
> Repository createCurrentUserRepo(body)

Create a repository

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var body = CreateRepoOption(); // CreateRepoOption | 

try { 
    var result = api_instance.createCurrentUserRepo(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->createCurrentUserRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRepoOption**](CreateRepoOption.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userAddEmail**
> List<Email> userAddEmail(body)

Add email addresses

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var body = CreateEmailOption(); // CreateEmailOption | 

try { 
    var result = api_instance.userAddEmail(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userAddEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEmailOption**](CreateEmailOption.md)|  | [optional] 

### Return type

[**List<Email>**](Email.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCheckFollowing**
> userCheckFollowing(follower, followee)

Check if one user is following another user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var follower = follower_example; // String | username of following user
var followee = followee_example; // String | username of followed user

try { 
    api_instance.userCheckFollowing(follower, followee);
} catch (e) {
    print("Exception when calling UserApi->userCheckFollowing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **follower** | **String**| username of following user | [default to null]
 **followee** | **String**| username of followed user | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreateToken**
> userCreateToken(username, accessToken)

Create an access token

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var accessToken = InlineObject(); // InlineObject | 

try { 
    api_instance.userCreateToken(username, accessToken);
} catch (e) {
    print("Exception when calling UserApi->userCreateToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **accessToken** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentCheckFollowing**
> userCurrentCheckFollowing(username)

Check whether a user is followed by the authenticated user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of followed user

try { 
    api_instance.userCurrentCheckFollowing(username);
} catch (e) {
    print("Exception when calling UserApi->userCurrentCheckFollowing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of followed user | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentCheckStarring**
> userCurrentCheckStarring(owner, repo)

Whether the authenticated is starring the repo

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    api_instance.userCurrentCheckStarring(owner, repo);
} catch (e) {
    print("Exception when calling UserApi->userCurrentCheckStarring: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentDeleteFollow**
> userCurrentDeleteFollow(username)

Unfollow a user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user to unfollow

try { 
    api_instance.userCurrentDeleteFollow(username);
} catch (e) {
    print("Exception when calling UserApi->userCurrentDeleteFollow: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user to unfollow | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentDeleteGPGKey**
> userCurrentDeleteGPGKey(id)

Remove a GPG key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var id = 789; // int | id of key to delete

try { 
    api_instance.userCurrentDeleteGPGKey(id);
} catch (e) {
    print("Exception when calling UserApi->userCurrentDeleteGPGKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of key to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentDeleteKey**
> userCurrentDeleteKey(id)

Delete a public key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var id = 789; // int | id of key to delete

try { 
    api_instance.userCurrentDeleteKey(id);
} catch (e) {
    print("Exception when calling UserApi->userCurrentDeleteKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of key to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentDeleteStar**
> userCurrentDeleteStar(owner, repo)

Unstar the given repo

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var owner = owner_example; // String | owner of the repo to unstar
var repo = repo_example; // String | name of the repo to unstar

try { 
    api_instance.userCurrentDeleteStar(owner, repo);
} catch (e) {
    print("Exception when calling UserApi->userCurrentDeleteStar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to unstar | [default to null]
 **repo** | **String**| name of the repo to unstar | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentGetGPGKey**
> GPGKey userCurrentGetGPGKey(id)

Get a GPG key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var id = 789; // int | id of key to get

try { 
    var result = api_instance.userCurrentGetGPGKey(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentGetGPGKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of key to get | [default to null]

### Return type

[**GPGKey**](GPGKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentGetKey**
> PublicKey userCurrentGetKey(id)

Get a public key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var id = 789; // int | id of key to get

try { 
    var result = api_instance.userCurrentGetKey(id);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentGetKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of key to get | [default to null]

### Return type

[**PublicKey**](PublicKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListFollowers**
> List<User> userCurrentListFollowers(page, limit)

List the authenticated user's followers

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListFollowers(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListFollowers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListFollowing**
> List<User> userCurrentListFollowing(page, limit)

List the users that the authenticated user is following

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListFollowing(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListFollowing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListGPGKeys**
> List<GPGKey> userCurrentListGPGKeys(page, limit)

List the authenticated user's GPG keys

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListGPGKeys(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListGPGKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<GPGKey>**](GPGKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListKeys**
> List<PublicKey> userCurrentListKeys(fingerprint, page, limit)

List the authenticated user's public keys

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var fingerprint = fingerprint_example; // String | fingerprint of the key
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListKeys(fingerprint, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fingerprint** | **String**| fingerprint of the key | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<PublicKey>**](PublicKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListRepos**
> List<Repository> userCurrentListRepos(page, limit)

List the repos that the authenticated user owns or has access to

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListRepos(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListRepos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListStarred**
> List<Repository> userCurrentListStarred(page, limit)

The repos that the authenticated user has starred

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListStarred(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListStarred: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentListSubscriptions**
> List<Repository> userCurrentListSubscriptions(page, limit)

List repositories watched by the authenticated user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userCurrentListSubscriptions(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentListSubscriptions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentPostGPGKey**
> GPGKey userCurrentPostGPGKey(form)

Create a GPG key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var form = CreateGPGKeyOption(); // CreateGPGKeyOption | 

try { 
    var result = api_instance.userCurrentPostGPGKey(form);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentPostGPGKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **form** | [**CreateGPGKeyOption**](CreateGPGKeyOption.md)|  | [optional] 

### Return type

[**GPGKey**](GPGKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentPostKey**
> PublicKey userCurrentPostKey(body)

Create a public key

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var body = CreateKeyOption(); // CreateKeyOption | 

try { 
    var result = api_instance.userCurrentPostKey(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentPostKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateKeyOption**](CreateKeyOption.md)|  | [optional] 

### Return type

[**PublicKey**](PublicKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentPutFollow**
> userCurrentPutFollow(username)

Follow a user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user to follow

try { 
    api_instance.userCurrentPutFollow(username);
} catch (e) {
    print("Exception when calling UserApi->userCurrentPutFollow: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user to follow | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentPutStar**
> userCurrentPutStar(owner, repo)

Star the given repo

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var owner = owner_example; // String | owner of the repo to star
var repo = repo_example; // String | name of the repo to star

try { 
    api_instance.userCurrentPutStar(owner, repo);
} catch (e) {
    print("Exception when calling UserApi->userCurrentPutStar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to star | [default to null]
 **repo** | **String**| name of the repo to star | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentTrackedTimes**
> List<TrackedTime> userCurrentTrackedTimes(since, before)

List the current user's tracked times

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var since = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated after the given time. This is a timestamp in RFC 3339 format
var before = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated before the given time. This is a timestamp in RFC 3339 format

try { 
    var result = api_instance.userCurrentTrackedTimes(since, before);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userCurrentTrackedTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **DateTime**| Only show times updated after the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **before** | **DateTime**| Only show times updated before the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]

### Return type

[**List<TrackedTime>**](TrackedTime.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteAccessToken**
> userDeleteAccessToken(username, token)

delete an access token

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var token = 789; // int | token to be deleted

try { 
    api_instance.userDeleteAccessToken(username, token);
} catch (e) {
    print("Exception when calling UserApi->userDeleteAccessToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **token** | **int**| token to be deleted | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteEmail**
> userDeleteEmail(body)

Delete email addresses

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var body = DeleteEmailOption(); // DeleteEmailOption | 

try { 
    api_instance.userDeleteEmail(body);
} catch (e) {
    print("Exception when calling UserApi->userDeleteEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeleteEmailOption**](DeleteEmailOption.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGet**
> User userGet(username)

Get a user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user to get

try { 
    var result = api_instance.userGet(username);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user to get | [default to null]

### Return type

[**User**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetCurrent**
> User userGetCurrent()

Get the authenticated user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();

try { 
    var result = api_instance.userGetCurrent();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetCurrent: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetHeatmapData**
> List<UserHeatmapData> userGetHeatmapData(username)

Get a user's heatmap

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user to get

try { 
    var result = api_instance.userGetHeatmapData(username);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetHeatmapData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user to get | [default to null]

### Return type

[**List<UserHeatmapData>**](UserHeatmapData.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetStopWatches**
> List<StopWatch> userGetStopWatches(page, limit)

Get list of all existing stopwatches

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userGetStopWatches(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetStopWatches: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<StopWatch>**](StopWatch.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGetTokens**
> List<AccessToken> userGetTokens(username, page, limit)

List the authenticated user's access tokens

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userGetTokens(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userGetTokens: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<AccessToken>**](AccessToken.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListEmails**
> List<Email> userListEmails()

List the authenticated user's email addresses

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();

try { 
    var result = api_instance.userListEmails();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListEmails: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Email>**](Email.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListFollowers**
> List<User> userListFollowers(username, page, limit)

List the given user's followers

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListFollowers(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListFollowers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListFollowing**
> List<User> userListFollowing(username, page, limit)

List the users that the given user is following

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListFollowing(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListFollowing: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListGPGKeys**
> List<GPGKey> userListGPGKeys(username, page, limit)

List the given user's GPG keys

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListGPGKeys(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListGPGKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<GPGKey>**](GPGKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListKeys**
> List<PublicKey> userListKeys(username, fingerprint, page, limit)

List the given user's public keys

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var fingerprint = fingerprint_example; // String | fingerprint of the key
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListKeys(username, fingerprint, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **fingerprint** | **String**| fingerprint of the key | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<PublicKey>**](PublicKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListRepos**
> List<Repository> userListRepos(username, page, limit)

List the repos owned by the given user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListRepos(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListRepos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListStarred**
> List<Repository> userListStarred(username, page, limit)

The repos that the given user has starred

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListStarred(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListStarred: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListSubscriptions**
> List<Repository> userListSubscriptions(username, page, limit)

List the repositories watched by a user

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var username = username_example; // String | username of the user
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListSubscriptions(username, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListSubscriptions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username of the user | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListTeams**
> List<Team> userListTeams(page, limit)

List all the teams a user belongs to

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userListTeams(page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userListTeams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Team>**](Team.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSearch**
> InlineResponse2001 userSearch(q, uid, page, limit)

Search for users

### Example 
```dart
import 'package:openapi/api.dart';
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

var api_instance = UserApi();
var q = q_example; // String | keyword
var uid = 789; // int | ID of the user to search for
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.userSearch(q, uid, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| keyword | [optional] [default to null]
 **uid** | **int**| ID of the user to search for | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

