# gitea_openapi.IssueApi

## Load the API package
```dart
import 'package:gitea_openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issueAddLabel**](IssueApi.md#issueAddLabel) | **POST** /repos/{owner}/{repo}/issues/{index}/labels | Add a label to an issue
[**issueAddSubscription**](IssueApi.md#issueAddSubscription) | **PUT** /repos/{owner}/{repo}/issues/{index}/subscriptions/{user} | Subscribe user to issue
[**issueAddTime**](IssueApi.md#issueAddTime) | **POST** /repos/{owner}/{repo}/issues/{index}/times | Add tracked time to a issue
[**issueClearLabels**](IssueApi.md#issueClearLabels) | **DELETE** /repos/{owner}/{repo}/issues/{index}/labels | Remove all labels from an issue
[**issueCreateComment**](IssueApi.md#issueCreateComment) | **POST** /repos/{owner}/{repo}/issues/{index}/comments | Add a comment to an issue
[**issueCreateIssue**](IssueApi.md#issueCreateIssue) | **POST** /repos/{owner}/{repo}/issues | Create an issue. If using deadline only the date will be taken into account, and time of day ignored.
[**issueCreateLabel**](IssueApi.md#issueCreateLabel) | **POST** /repos/{owner}/{repo}/labels | Create a label
[**issueCreateMilestone**](IssueApi.md#issueCreateMilestone) | **POST** /repos/{owner}/{repo}/milestones | Create a milestone
[**issueDeleteComment**](IssueApi.md#issueDeleteComment) | **DELETE** /repos/{owner}/{repo}/issues/comments/{id} | Delete a comment
[**issueDeleteCommentDeprecated**](IssueApi.md#issueDeleteCommentDeprecated) | **DELETE** /repos/{owner}/{repo}/issues/{index}/comments/{id} | Delete a comment
[**issueDeleteCommentReaction**](IssueApi.md#issueDeleteCommentReaction) | **DELETE** /repos/{owner}/{repo}/issues/comments/{id}/reactions | Remove a reaction from a comment of an issue
[**issueDeleteIssueReaction**](IssueApi.md#issueDeleteIssueReaction) | **DELETE** /repos/{owner}/{repo}/issues/{index}/reactions | Remove a reaction from an issue
[**issueDeleteLabel**](IssueApi.md#issueDeleteLabel) | **DELETE** /repos/{owner}/{repo}/labels/{id} | Delete a label
[**issueDeleteMilestone**](IssueApi.md#issueDeleteMilestone) | **DELETE** /repos/{owner}/{repo}/milestones/{id} | Delete a milestone
[**issueDeleteStopWatch**](IssueApi.md#issueDeleteStopWatch) | **DELETE** /repos/{owner}/{repo}/issues/{index}/stopwatch/delete | Delete an issue&#39;s existing stopwatch.
[**issueDeleteSubscription**](IssueApi.md#issueDeleteSubscription) | **DELETE** /repos/{owner}/{repo}/issues/{index}/subscriptions/{user} | Unsubscribe user from issue
[**issueDeleteTime**](IssueApi.md#issueDeleteTime) | **DELETE** /repos/{owner}/{repo}/issues/{index}/times/{id} | Delete specific tracked time
[**issueEditComment**](IssueApi.md#issueEditComment) | **PATCH** /repos/{owner}/{repo}/issues/comments/{id} | Edit a comment
[**issueEditCommentDeprecated**](IssueApi.md#issueEditCommentDeprecated) | **PATCH** /repos/{owner}/{repo}/issues/{index}/comments/{id} | Edit a comment
[**issueEditIssue**](IssueApi.md#issueEditIssue) | **PATCH** /repos/{owner}/{repo}/issues/{index} | Edit an issue. If using deadline only the date will be taken into account, and time of day ignored.
[**issueEditIssueDeadline**](IssueApi.md#issueEditIssueDeadline) | **POST** /repos/{owner}/{repo}/issues/{index}/deadline | Set an issue deadline. If set to null, the deadline is deleted. If using deadline only the date will be taken into account, and time of day ignored.
[**issueEditLabel**](IssueApi.md#issueEditLabel) | **PATCH** /repos/{owner}/{repo}/labels/{id} | Update a label
[**issueEditMilestone**](IssueApi.md#issueEditMilestone) | **PATCH** /repos/{owner}/{repo}/milestones/{id} | Update a milestone
[**issueGetComment**](IssueApi.md#issueGetComment) | **GET** /repos/{owner}/{repo}/issues/comments/{id} | Get a comment
[**issueGetCommentReactions**](IssueApi.md#issueGetCommentReactions) | **GET** /repos/{owner}/{repo}/issues/comments/{id}/reactions | Get a list of reactions from a comment of an issue
[**issueGetComments**](IssueApi.md#issueGetComments) | **GET** /repos/{owner}/{repo}/issues/{index}/comments | List all comments on an issue
[**issueGetIssue**](IssueApi.md#issueGetIssue) | **GET** /repos/{owner}/{repo}/issues/{index} | Get an issue
[**issueGetIssueReactions**](IssueApi.md#issueGetIssueReactions) | **GET** /repos/{owner}/{repo}/issues/{index}/reactions | Get a list reactions of an issue
[**issueGetLabel**](IssueApi.md#issueGetLabel) | **GET** /repos/{owner}/{repo}/labels/{id} | Get a single label
[**issueGetLabels**](IssueApi.md#issueGetLabels) | **GET** /repos/{owner}/{repo}/issues/{index}/labels | Get an issue&#39;s labels
[**issueGetMilestone**](IssueApi.md#issueGetMilestone) | **GET** /repos/{owner}/{repo}/milestones/{id} | Get a milestone
[**issueGetMilestonesList**](IssueApi.md#issueGetMilestonesList) | **GET** /repos/{owner}/{repo}/milestones | Get all of a repository&#39;s opened milestones
[**issueGetRepoComments**](IssueApi.md#issueGetRepoComments) | **GET** /repos/{owner}/{repo}/issues/comments | List all comments in a repository
[**issueListIssues**](IssueApi.md#issueListIssues) | **GET** /repos/{owner}/{repo}/issues | List a repository&#39;s issues
[**issueListLabels**](IssueApi.md#issueListLabels) | **GET** /repos/{owner}/{repo}/labels | Get all of a repository&#39;s labels
[**issuePostCommentReaction**](IssueApi.md#issuePostCommentReaction) | **POST** /repos/{owner}/{repo}/issues/comments/{id}/reactions | Add a reaction to a comment of an issue
[**issuePostIssueReaction**](IssueApi.md#issuePostIssueReaction) | **POST** /repos/{owner}/{repo}/issues/{index}/reactions | Add a reaction to an issue
[**issueRemoveLabel**](IssueApi.md#issueRemoveLabel) | **DELETE** /repos/{owner}/{repo}/issues/{index}/labels/{id} | Remove a label from an issue
[**issueReplaceLabels**](IssueApi.md#issueReplaceLabels) | **PUT** /repos/{owner}/{repo}/issues/{index}/labels | Replace an issue&#39;s labels
[**issueResetTime**](IssueApi.md#issueResetTime) | **DELETE** /repos/{owner}/{repo}/issues/{index}/times | Reset a tracked time of an issue
[**issueSearchIssues**](IssueApi.md#issueSearchIssues) | **GET** /repos/issues/search | Search for issues across the repositories that the user has access to
[**issueStartStopWatch**](IssueApi.md#issueStartStopWatch) | **POST** /repos/{owner}/{repo}/issues/{index}/stopwatch/start | Start stopwatch on an issue.
[**issueStopStopWatch**](IssueApi.md#issueStopStopWatch) | **POST** /repos/{owner}/{repo}/issues/{index}/stopwatch/stop | Stop an issue&#39;s existing stopwatch.
[**issueSubscriptions**](IssueApi.md#issueSubscriptions) | **GET** /repos/{owner}/{repo}/issues/{index}/subscriptions | Get users who subscribed on an issue.
[**issueTrackedTimes**](IssueApi.md#issueTrackedTimes) | **GET** /repos/{owner}/{repo}/issues/{index}/times | List an issue&#39;s tracked times


# **issueAddLabel**
> List<Label> issueAddLabel(owner, repo, index, body)

Add a label to an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var body = IssueLabelsOption(); // IssueLabelsOption | 

try { 
    var result = api_instance.issueAddLabel(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueAddLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **body** | [**IssueLabelsOption**](IssueLabelsOption.md)|  | [optional] 

### Return type

[**List<Label>**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueAddSubscription**
> issueAddSubscription(owner, repo, index, user)

Subscribe user to issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var user = user_example; // String | user to subscribe

try { 
    api_instance.issueAddSubscription(owner, repo, index, user);
} catch (e) {
    print("Exception when calling IssueApi->issueAddSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **user** | **String**| user to subscribe | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueAddTime**
> TrackedTime issueAddTime(owner, repo, index, body)

Add tracked time to a issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var body = AddTimeOption(); // AddTimeOption | 

try { 
    var result = api_instance.issueAddTime(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueAddTime: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **body** | [**AddTimeOption**](AddTimeOption.md)|  | [optional] 

### Return type

[**TrackedTime**](TrackedTime.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueClearLabels**
> issueClearLabels(owner, repo, index)

Remove all labels from an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue

try { 
    api_instance.issueClearLabels(owner, repo, index);
} catch (e) {
    print("Exception when calling IssueApi->issueClearLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueCreateComment**
> Comment issueCreateComment(owner, repo, index, body)

Add a comment to an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var body = CreateIssueCommentOption(); // CreateIssueCommentOption | 

try { 
    var result = api_instance.issueCreateComment(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueCreateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **body** | [**CreateIssueCommentOption**](CreateIssueCommentOption.md)|  | [optional] 

### Return type

[**Comment**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueCreateIssue**
> Issue issueCreateIssue(owner, repo, body)

Create an issue. If using deadline only the date will be taken into account, and time of day ignored.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateIssueOption(); // CreateIssueOption | 

try { 
    var result = api_instance.issueCreateIssue(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueCreateIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateIssueOption**](CreateIssueOption.md)|  | [optional] 

### Return type

[**Issue**](Issue.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueCreateLabel**
> Label issueCreateLabel(owner, repo, body)

Create a label

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateLabelOption(); // CreateLabelOption | 

try { 
    var result = api_instance.issueCreateLabel(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueCreateLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateLabelOption**](CreateLabelOption.md)|  | [optional] 

### Return type

[**Label**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueCreateMilestone**
> Milestone issueCreateMilestone(owner, repo, body)

Create a milestone

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateMilestoneOption(); // CreateMilestoneOption | 

try { 
    var result = api_instance.issueCreateMilestone(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueCreateMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateMilestoneOption**](CreateMilestoneOption.md)|  | [optional] 

### Return type

[**Milestone**](Milestone.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteComment**
> issueDeleteComment(owner, repo, id)

Delete a comment

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of comment to delete

try { 
    api_instance.issueDeleteComment(owner, repo, id);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of comment to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteCommentDeprecated**
> issueDeleteCommentDeprecated(owner, repo, index, id)

Delete a comment

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 56; // int | this parameter is ignored
var id = 789; // int | id of comment to delete

try { 
    api_instance.issueDeleteCommentDeprecated(owner, repo, index, id);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteCommentDeprecated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| this parameter is ignored | [default to null]
 **id** | **int**| id of comment to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteCommentReaction**
> issueDeleteCommentReaction(owner, repo, id, content)

Remove a reaction from a comment of an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the comment to edit
var content = EditReactionOption(); // EditReactionOption | 

try { 
    api_instance.issueDeleteCommentReaction(owner, repo, id, content);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteCommentReaction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the comment to edit | [default to null]
 **content** | [**EditReactionOption**](EditReactionOption.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteIssueReaction**
> issueDeleteIssueReaction(owner, repo, index, content)

Remove a reaction from an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var content = EditReactionOption(); // EditReactionOption | 

try { 
    api_instance.issueDeleteIssueReaction(owner, repo, index, content);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteIssueReaction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **content** | [**EditReactionOption**](EditReactionOption.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteLabel**
> issueDeleteLabel(owner, repo, id)

Delete a label

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the label to delete

try { 
    api_instance.issueDeleteLabel(owner, repo, id);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the label to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteMilestone**
> issueDeleteMilestone(owner, repo, id)

Delete a milestone

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the milestone to delete

try { 
    api_instance.issueDeleteMilestone(owner, repo, id);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the milestone to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteStopWatch**
> issueDeleteStopWatch(owner, repo, index)

Delete an issue's existing stopwatch.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to stop the stopwatch on

try { 
    api_instance.issueDeleteStopWatch(owner, repo, index);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteStopWatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to stop the stopwatch on | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteSubscription**
> issueDeleteSubscription(owner, repo, index, user)

Unsubscribe user from issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var user = user_example; // String | user witch unsubscribe

try { 
    api_instance.issueDeleteSubscription(owner, repo, index, user);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **user** | **String**| user witch unsubscribe | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDeleteTime**
> issueDeleteTime(owner, repo, index, id)

Delete specific tracked time

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var id = 789; // int | id of time to delete

try { 
    api_instance.issueDeleteTime(owner, repo, index, id);
} catch (e) {
    print("Exception when calling IssueApi->issueDeleteTime: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **id** | **int**| id of time to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditComment**
> Comment issueEditComment(owner, repo, id, body)

Edit a comment

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the comment to edit
var body = EditIssueCommentOption(); // EditIssueCommentOption | 

try { 
    var result = api_instance.issueEditComment(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the comment to edit | [default to null]
 **body** | [**EditIssueCommentOption**](EditIssueCommentOption.md)|  | [optional] 

### Return type

[**Comment**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditCommentDeprecated**
> Comment issueEditCommentDeprecated(owner, repo, index, id, body)

Edit a comment

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 56; // int | this parameter is ignored
var id = 789; // int | id of the comment to edit
var body = EditIssueCommentOption(); // EditIssueCommentOption | 

try { 
    var result = api_instance.issueEditCommentDeprecated(owner, repo, index, id, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditCommentDeprecated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| this parameter is ignored | [default to null]
 **id** | **int**| id of the comment to edit | [default to null]
 **body** | [**EditIssueCommentOption**](EditIssueCommentOption.md)|  | [optional] 

### Return type

[**Comment**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditIssue**
> Issue issueEditIssue(owner, repo, index, body)

Edit an issue. If using deadline only the date will be taken into account, and time of day ignored.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to edit
var body = EditIssueOption(); // EditIssueOption | 

try { 
    var result = api_instance.issueEditIssue(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to edit | [default to null]
 **body** | [**EditIssueOption**](EditIssueOption.md)|  | [optional] 

### Return type

[**Issue**](Issue.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditIssueDeadline**
> IssueDeadline issueEditIssueDeadline(owner, repo, index, body)

Set an issue deadline. If set to null, the deadline is deleted. If using deadline only the date will be taken into account, and time of day ignored.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to create or update a deadline on
var body = EditDeadlineOption(); // EditDeadlineOption | 

try { 
    var result = api_instance.issueEditIssueDeadline(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditIssueDeadline: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to create or update a deadline on | [default to null]
 **body** | [**EditDeadlineOption**](EditDeadlineOption.md)|  | [optional] 

### Return type

[**IssueDeadline**](IssueDeadline.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditLabel**
> Label issueEditLabel(owner, repo, id, body)

Update a label

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the label to edit
var body = EditLabelOption(); // EditLabelOption | 

try { 
    var result = api_instance.issueEditLabel(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the label to edit | [default to null]
 **body** | [**EditLabelOption**](EditLabelOption.md)|  | [optional] 

### Return type

[**Label**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueEditMilestone**
> Milestone issueEditMilestone(owner, repo, id, body)

Update a milestone

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the milestone
var body = EditMilestoneOption(); // EditMilestoneOption | 

try { 
    var result = api_instance.issueEditMilestone(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueEditMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the milestone | [default to null]
 **body** | [**EditMilestoneOption**](EditMilestoneOption.md)|  | [optional] 

### Return type

[**Milestone**](Milestone.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetComment**
> Comment issueGetComment(owner, repo, id)

Get a comment

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the comment

try { 
    var result = api_instance.issueGetComment(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the comment | [default to null]

### Return type

[**Comment**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetCommentReactions**
> List<Reaction> issueGetCommentReactions(owner, repo, id)

Get a list of reactions from a comment of an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the comment to edit

try { 
    var result = api_instance.issueGetCommentReactions(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetCommentReactions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the comment to edit | [default to null]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetComments**
> List<Comment> issueGetComments(owner, repo, index, since, before)

List all comments on an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var since = 2013-10-20T19:20:30+01:00; // DateTime | if provided, only comments updated since the specified time are returned.
var before = 2013-10-20T19:20:30+01:00; // DateTime | if provided, only comments updated before the provided time are returned.

try { 
    var result = api_instance.issueGetComments(owner, repo, index, since, before);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **since** | **DateTime**| if provided, only comments updated since the specified time are returned. | [optional] [default to null]
 **before** | **DateTime**| if provided, only comments updated before the provided time are returned. | [optional] [default to null]

### Return type

[**List<Comment>**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetIssue**
> Issue issueGetIssue(owner, repo, index)

Get an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to get

try { 
    var result = api_instance.issueGetIssue(owner, repo, index);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to get | [default to null]

### Return type

[**Issue**](Issue.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetIssueReactions**
> List<Reaction> issueGetIssueReactions(owner, repo, index, page, limit)

Get a list reactions of an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueGetIssueReactions(owner, repo, index, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetIssueReactions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetLabel**
> Label issueGetLabel(owner, repo, id)

Get a single label

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the label to get

try { 
    var result = api_instance.issueGetLabel(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the label to get | [default to null]

### Return type

[**Label**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetLabels**
> List<Label> issueGetLabels(owner, repo, index)

Get an issue's labels

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue

try { 
    var result = api_instance.issueGetLabels(owner, repo, index);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]

### Return type

[**List<Label>**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetMilestone**
> Milestone issueGetMilestone(owner, repo, id)

Get a milestone

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the milestone

try { 
    var result = api_instance.issueGetMilestone(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the milestone | [default to null]

### Return type

[**Milestone**](Milestone.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetMilestonesList**
> List<Milestone> issueGetMilestonesList(owner, repo, state, page, limit)

Get all of a repository's opened milestones

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var state = state_example; // String | Milestone state, Recognised values are open, closed and all. Defaults to \"open\"
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueGetMilestonesList(owner, repo, state, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetMilestonesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **state** | **String**| Milestone state, Recognised values are open, closed and all. Defaults to \&quot;open\&quot; | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Milestone>**](Milestone.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueGetRepoComments**
> List<Comment> issueGetRepoComments(owner, repo, since, before, page, limit)

List all comments in a repository

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var since = 2013-10-20T19:20:30+01:00; // DateTime | if provided, only comments updated since the provided time are returned.
var before = 2013-10-20T19:20:30+01:00; // DateTime | if provided, only comments updated before the provided time are returned.
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueGetRepoComments(owner, repo, since, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueGetRepoComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **since** | **DateTime**| if provided, only comments updated since the provided time are returned. | [optional] [default to null]
 **before** | **DateTime**| if provided, only comments updated before the provided time are returned. | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Comment>**](Comment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueListIssues**
> List<Issue> issueListIssues(owner, repo, state, labels, q, type, page, limit)

List a repository's issues

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var state = state_example; // String | whether issue is open or closed
var labels = labels_example; // String | comma separated list of labels. Fetch only issues that have any of this labels. Non existent labels are discarded
var q = q_example; // String | search string
var type = type_example; // String | filter by type (issues / pulls) if set
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueListIssues(owner, repo, state, labels, q, type, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueListIssues: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **state** | **String**| whether issue is open or closed | [optional] [default to null]
 **labels** | **String**| comma separated list of labels. Fetch only issues that have any of this labels. Non existent labels are discarded | [optional] [default to null]
 **q** | **String**| search string | [optional] [default to null]
 **type** | **String**| filter by type (issues / pulls) if set | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Issue>**](Issue.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueListLabels**
> List<Label> issueListLabels(owner, repo, page, limit)

Get all of a repository's labels

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueListLabels(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueListLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Label>**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuePostCommentReaction**
> Reaction issuePostCommentReaction(owner, repo, id, content)

Add a reaction to a comment of an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the comment to edit
var content = EditReactionOption(); // EditReactionOption | 

try { 
    var result = api_instance.issuePostCommentReaction(owner, repo, id, content);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issuePostCommentReaction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the comment to edit | [default to null]
 **content** | [**EditReactionOption**](EditReactionOption.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuePostIssueReaction**
> Reaction issuePostIssueReaction(owner, repo, index, content)

Add a reaction to an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var content = EditReactionOption(); // EditReactionOption | 

try { 
    var result = api_instance.issuePostIssueReaction(owner, repo, index, content);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issuePostIssueReaction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **content** | [**EditReactionOption**](EditReactionOption.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueRemoveLabel**
> issueRemoveLabel(owner, repo, index, id)

Remove a label from an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var id = 789; // int | id of the label to remove

try { 
    api_instance.issueRemoveLabel(owner, repo, index, id);
} catch (e) {
    print("Exception when calling IssueApi->issueRemoveLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **id** | **int**| id of the label to remove | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueReplaceLabels**
> List<Label> issueReplaceLabels(owner, repo, index, body)

Replace an issue's labels

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var body = IssueLabelsOption(); // IssueLabelsOption | 

try { 
    var result = api_instance.issueReplaceLabels(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueReplaceLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **body** | [**IssueLabelsOption**](IssueLabelsOption.md)|  | [optional] 

### Return type

[**List<Label>**](Label.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueResetTime**
> issueResetTime(owner, repo, index)

Reset a tracked time of an issue

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to add tracked time to

try { 
    api_instance.issueResetTime(owner, repo, index);
} catch (e) {
    print("Exception when calling IssueApi->issueResetTime: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to add tracked time to | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueSearchIssues**
> List<Issue> issueSearchIssues(state, labels, q, priorityRepoId, type, page)

Search for issues across the repositories that the user has access to

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

var api_instance = IssueApi();
var state = state_example; // String | whether issue is open or closed
var labels = labels_example; // String | comma separated list of labels. Fetch only issues that have any of this labels. Non existent labels are discarded
var q = q_example; // String | search string
var priorityRepoId = 789; // int | repository to prioritize in the results
var type = type_example; // String | filter by type (issues / pulls) if set
var page = 56; // int | page number of requested issues

try { 
    var result = api_instance.issueSearchIssues(state, labels, q, priorityRepoId, type, page);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueSearchIssues: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| whether issue is open or closed | [optional] [default to null]
 **labels** | **String**| comma separated list of labels. Fetch only issues that have any of this labels. Non existent labels are discarded | [optional] [default to null]
 **q** | **String**| search string | [optional] [default to null]
 **priorityRepoId** | **int**| repository to prioritize in the results | [optional] [default to null]
 **type** | **String**| filter by type (issues / pulls) if set | [optional] [default to null]
 **page** | **int**| page number of requested issues | [optional] [default to null]

### Return type

[**List<Issue>**](Issue.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueStartStopWatch**
> issueStartStopWatch(owner, repo, index)

Start stopwatch on an issue.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to create the stopwatch on

try { 
    api_instance.issueStartStopWatch(owner, repo, index);
} catch (e) {
    print("Exception when calling IssueApi->issueStartStopWatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to create the stopwatch on | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueStopStopWatch**
> issueStopStopWatch(owner, repo, index)

Stop an issue's existing stopwatch.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue to stop the stopwatch on

try { 
    api_instance.issueStopStopWatch(owner, repo, index);
} catch (e) {
    print("Exception when calling IssueApi->issueStopStopWatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue to stop the stopwatch on | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueSubscriptions**
> List<User> issueSubscriptions(owner, repo, index, page, limit)

Get users who subscribed on an issue.

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueSubscriptions(owner, repo, index, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueSubscriptions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
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

# **issueTrackedTimes**
> List<TrackedTime> issueTrackedTimes(owner, repo, index, since, before, page, limit)

List an issue's tracked times

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

var api_instance = IssueApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the issue
var since = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated after the given time. This is a timestamp in RFC 3339 format
var before = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated before the given time. This is a timestamp in RFC 3339 format
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.issueTrackedTimes(owner, repo, index, since, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->issueTrackedTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the issue | [default to null]
 **since** | **DateTime**| Only show times updated after the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **before** | **DateTime**| Only show times updated before the given time. This is a timestamp in RFC 3339 format | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<TrackedTime>**](TrackedTime.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

