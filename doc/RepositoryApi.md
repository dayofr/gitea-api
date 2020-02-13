# openapi.api.RepositoryApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurrentUserRepo**](RepositoryApi.md#createCurrentUserRepo) | **POST** /user/repos | Create a repository
[**createFork**](RepositoryApi.md#createFork) | **POST** /repos/{owner}/{repo}/forks | Fork a repository
[**getBlob**](RepositoryApi.md#getBlob) | **GET** /repos/{owner}/{repo}/git/blobs/{sha} | Gets the blob of a repository.
[**getTag**](RepositoryApi.md#getTag) | **GET** /repos/{owner}/{repo}/git/tags/{sha} | Gets the tag object of an annotated tag (not lightweight tags)
[**getTree**](RepositoryApi.md#getTree) | **GET** /repos/{owner}/{repo}/git/trees/{sha} | Gets the tree of a repository.
[**listForks**](RepositoryApi.md#listForks) | **GET** /repos/{owner}/{repo}/forks | List a repository&#39;s forks
[**repoAddCollaborator**](RepositoryApi.md#repoAddCollaborator) | **PUT** /repos/{owner}/{repo}/collaborators/{collaborator} | Add a collaborator to a repository
[**repoAddTopíc**](RepositoryApi.md#repoAddTopíc) | **PUT** /repos/{owner}/{repo}/topics/{topic} | Add a topic to a repository
[**repoCheckCollaborator**](RepositoryApi.md#repoCheckCollaborator) | **GET** /repos/{owner}/{repo}/collaborators/{collaborator} | Check if a user is a collaborator of a repository
[**repoCreateBranchProtection**](RepositoryApi.md#repoCreateBranchProtection) | **POST** /repos/{owner}/{repo}/branch_protections | Create a branch protections for a repository
[**repoCreateFile**](RepositoryApi.md#repoCreateFile) | **POST** /repos/{owner}/{repo}/contents/{filepath} | Create a file in a repository
[**repoCreateHook**](RepositoryApi.md#repoCreateHook) | **POST** /repos/{owner}/{repo}/hooks | Create a hook
[**repoCreateKey**](RepositoryApi.md#repoCreateKey) | **POST** /repos/{owner}/{repo}/keys | Add a key to a repository
[**repoCreatePullRequest**](RepositoryApi.md#repoCreatePullRequest) | **POST** /repos/{owner}/{repo}/pulls | Create a pull request
[**repoCreateRelease**](RepositoryApi.md#repoCreateRelease) | **POST** /repos/{owner}/{repo}/releases | Create a release
[**repoCreateReleaseAttachment**](RepositoryApi.md#repoCreateReleaseAttachment) | **POST** /repos/{owner}/{repo}/releases/{id}/assets | Create a release attachment
[**repoCreateStatus**](RepositoryApi.md#repoCreateStatus) | **POST** /repos/{owner}/{repo}/statuses/{sha} | Create a commit status
[**repoDelete**](RepositoryApi.md#repoDelete) | **DELETE** /repos/{owner}/{repo} | Delete a repository
[**repoDeleteBranchProtection**](RepositoryApi.md#repoDeleteBranchProtection) | **DELETE** /repos/{owner}/{repo}/branch_protections/{name} | Delete a specific branch protection for the repository
[**repoDeleteCollaborator**](RepositoryApi.md#repoDeleteCollaborator) | **DELETE** /repos/{owner}/{repo}/collaborators/{collaborator} | Delete a collaborator from a repository
[**repoDeleteFile**](RepositoryApi.md#repoDeleteFile) | **DELETE** /repos/{owner}/{repo}/contents/{filepath} | Delete a file in a repository
[**repoDeleteGitHook**](RepositoryApi.md#repoDeleteGitHook) | **DELETE** /repos/{owner}/{repo}/hooks/git/{id} | Delete a Git hook in a repository
[**repoDeleteHook**](RepositoryApi.md#repoDeleteHook) | **DELETE** /repos/{owner}/{repo}/hooks/{id} | Delete a hook in a repository
[**repoDeleteKey**](RepositoryApi.md#repoDeleteKey) | **DELETE** /repos/{owner}/{repo}/keys/{id} | Delete a key from a repository
[**repoDeleteRelease**](RepositoryApi.md#repoDeleteRelease) | **DELETE** /repos/{owner}/{repo}/releases/{id} | Delete a release
[**repoDeleteReleaseAttachment**](RepositoryApi.md#repoDeleteReleaseAttachment) | **DELETE** /repos/{owner}/{repo}/releases/{id}/assets/{attachment_id} | Delete a release attachment
[**repoDeleteTopic**](RepositoryApi.md#repoDeleteTopic) | **DELETE** /repos/{owner}/{repo}/topics/{topic} | Delete a topic from a repository
[**repoEdit**](RepositoryApi.md#repoEdit) | **PATCH** /repos/{owner}/{repo} | Edit a repository&#39;s properties. Only fields that are set will be changed.
[**repoEditBranchProtection**](RepositoryApi.md#repoEditBranchProtection) | **PATCH** /repos/{owner}/{repo}/branch_protections/{name} | Edit a branch protections for a repository. Only fields that are set will be changed
[**repoEditGitHook**](RepositoryApi.md#repoEditGitHook) | **PATCH** /repos/{owner}/{repo}/hooks/git/{id} | Edit a Git hook in a repository
[**repoEditHook**](RepositoryApi.md#repoEditHook) | **PATCH** /repos/{owner}/{repo}/hooks/{id} | Edit a hook in a repository
[**repoEditPullRequest**](RepositoryApi.md#repoEditPullRequest) | **PATCH** /repos/{owner}/{repo}/pulls/{index} | Update a pull request. If using deadline only the date will be taken into account, and time of day ignored.
[**repoEditRelease**](RepositoryApi.md#repoEditRelease) | **PATCH** /repos/{owner}/{repo}/releases/{id} | Update a release
[**repoEditReleaseAttachment**](RepositoryApi.md#repoEditReleaseAttachment) | **PATCH** /repos/{owner}/{repo}/releases/{id}/assets/{attachment_id} | Edit a release attachment
[**repoGet**](RepositoryApi.md#repoGet) | **GET** /repos/{owner}/{repo} | Get a repository
[**repoGetAllCommits**](RepositoryApi.md#repoGetAllCommits) | **GET** /repos/{owner}/{repo}/commits | Get a list of all commits from a repository
[**repoGetArchive**](RepositoryApi.md#repoGetArchive) | **GET** /repos/{owner}/{repo}/archive/{archive} | Get an archive of a repository
[**repoGetBranch**](RepositoryApi.md#repoGetBranch) | **GET** /repos/{owner}/{repo}/branches/{branch} | Retrieve a specific branch from a repository, including its effective branch protection
[**repoGetBranchProtection**](RepositoryApi.md#repoGetBranchProtection) | **GET** /repos/{owner}/{repo}/branch_protections/{name} | Get a specific branch protection for the repository
[**repoGetByID**](RepositoryApi.md#repoGetByID) | **GET** /repositories/{id} | Get a repository by id
[**repoGetCombinedStatusByRef**](RepositoryApi.md#repoGetCombinedStatusByRef) | **GET** /repos/{owner}/{repo}/commits/{ref}/statuses | Get a commit&#39;s combined status, by branch/tag/commit reference
[**repoGetContents**](RepositoryApi.md#repoGetContents) | **GET** /repos/{owner}/{repo}/contents/{filepath} | Gets the metadata and contents (if a file) of an entry in a repository, or a list of entries if a dir
[**repoGetContentsList**](RepositoryApi.md#repoGetContentsList) | **GET** /repos/{owner}/{repo}/contents | Gets the metadata of all the entries of the root dir
[**repoGetEditorConfig**](RepositoryApi.md#repoGetEditorConfig) | **GET** /repos/{owner}/{repo}/editorconfig/{filepath} | Get the EditorConfig definitions of a file in a repository
[**repoGetGitHook**](RepositoryApi.md#repoGetGitHook) | **GET** /repos/{owner}/{repo}/hooks/git/{id} | Get a Git hook
[**repoGetHook**](RepositoryApi.md#repoGetHook) | **GET** /repos/{owner}/{repo}/hooks/{id} | Get a hook
[**repoGetKey**](RepositoryApi.md#repoGetKey) | **GET** /repos/{owner}/{repo}/keys/{id} | Get a repository&#39;s key by id
[**repoGetPullRequest**](RepositoryApi.md#repoGetPullRequest) | **GET** /repos/{owner}/{repo}/pulls/{index} | Get a pull request
[**repoGetRawFile**](RepositoryApi.md#repoGetRawFile) | **GET** /repos/{owner}/{repo}/raw/{filepath} | Get a file from a repository
[**repoGetRelease**](RepositoryApi.md#repoGetRelease) | **GET** /repos/{owner}/{repo}/releases/{id} | Get a release
[**repoGetReleaseAttachment**](RepositoryApi.md#repoGetReleaseAttachment) | **GET** /repos/{owner}/{repo}/releases/{id}/assets/{attachment_id} | Get a release attachment
[**repoGetSingleCommit**](RepositoryApi.md#repoGetSingleCommit) | **GET** /repos/{owner}/{repo}/git/commits/{sha} | Get a single commit from a repository
[**repoListAllGitRefs**](RepositoryApi.md#repoListAllGitRefs) | **GET** /repos/{owner}/{repo}/git/refs | Get specified ref or filtered repository&#39;s refs
[**repoListBranchProtection**](RepositoryApi.md#repoListBranchProtection) | **GET** /repos/{owner}/{repo}/branch_protections | List branch protections for a repository
[**repoListBranches**](RepositoryApi.md#repoListBranches) | **GET** /repos/{owner}/{repo}/branches | List a repository&#39;s branches
[**repoListCollaborators**](RepositoryApi.md#repoListCollaborators) | **GET** /repos/{owner}/{repo}/collaborators | List a repository&#39;s collaborators
[**repoListGitHooks**](RepositoryApi.md#repoListGitHooks) | **GET** /repos/{owner}/{repo}/hooks/git | List the Git hooks in a repository
[**repoListGitRefs**](RepositoryApi.md#repoListGitRefs) | **GET** /repos/{owner}/{repo}/git/refs/{ref} | Get specified ref or filtered repository&#39;s refs
[**repoListHooks**](RepositoryApi.md#repoListHooks) | **GET** /repos/{owner}/{repo}/hooks | List the hooks in a repository
[**repoListKeys**](RepositoryApi.md#repoListKeys) | **GET** /repos/{owner}/{repo}/keys | List a repository&#39;s keys
[**repoListPullRequests**](RepositoryApi.md#repoListPullRequests) | **GET** /repos/{owner}/{repo}/pulls | List a repo&#39;s pull requests
[**repoListReleaseAttachments**](RepositoryApi.md#repoListReleaseAttachments) | **GET** /repos/{owner}/{repo}/releases/{id}/assets | List release&#39;s attachments
[**repoListReleases**](RepositoryApi.md#repoListReleases) | **GET** /repos/{owner}/{repo}/releases | List a repo&#39;s releases
[**repoListStargazers**](RepositoryApi.md#repoListStargazers) | **GET** /repos/{owner}/{repo}/stargazers | List a repo&#39;s stargazers
[**repoListStatuses**](RepositoryApi.md#repoListStatuses) | **GET** /repos/{owner}/{repo}/statuses/{sha} | Get a commit&#39;s statuses
[**repoListSubscribers**](RepositoryApi.md#repoListSubscribers) | **GET** /repos/{owner}/{repo}/subscribers | List a repo&#39;s watchers
[**repoListTags**](RepositoryApi.md#repoListTags) | **GET** /repos/{owner}/{repo}/tags | List a repository&#39;s tags
[**repoListTopics**](RepositoryApi.md#repoListTopics) | **GET** /repos/{owner}/{repo}/topics | Get list of topics that a repository has
[**repoMergePullRequest**](RepositoryApi.md#repoMergePullRequest) | **POST** /repos/{owner}/{repo}/pulls/{index}/merge | Merge a pull request
[**repoMigrate**](RepositoryApi.md#repoMigrate) | **POST** /repos/migrate | Migrate a remote git repository
[**repoMirrorSync**](RepositoryApi.md#repoMirrorSync) | **POST** /repos/{owner}/{repo}/mirror-sync | Sync a mirrored repository
[**repoPullRequestIsMerged**](RepositoryApi.md#repoPullRequestIsMerged) | **GET** /repos/{owner}/{repo}/pulls/{index}/merge | Check if a pull request has been merged
[**repoSearch**](RepositoryApi.md#repoSearch) | **GET** /repos/search | Search for repositories
[**repoSigningKey**](RepositoryApi.md#repoSigningKey) | **GET** /repos/{owner}/{repo}/signing-key.gpg | Get signing-key.gpg for given repository
[**repoTestHook**](RepositoryApi.md#repoTestHook) | **POST** /repos/{owner}/{repo}/hooks/{id}/tests | Test a push webhook
[**repoTrackedTimes**](RepositoryApi.md#repoTrackedTimes) | **GET** /repos/{owner}/{repo}/times | List a repo&#39;s tracked times
[**repoTransfer**](RepositoryApi.md#repoTransfer) | **POST** /repos/{owner}/{repo}/transfer | Transfer a repo ownership
[**repoUpdateFile**](RepositoryApi.md#repoUpdateFile) | **PUT** /repos/{owner}/{repo}/contents/{filepath} | Update a file in a repository
[**repoUpdateTopics**](RepositoryApi.md#repoUpdateTopics) | **PUT** /repos/{owner}/{repo}/topics | Replace list of topics for a repository
[**topicSearch**](RepositoryApi.md#topicSearch) | **GET** /topics/search | search topics via keyword
[**userCurrentCheckSubscription**](RepositoryApi.md#userCurrentCheckSubscription) | **GET** /repos/{owner}/{repo}/subscription | Check if the current user is watching a repo
[**userCurrentDeleteSubscription**](RepositoryApi.md#userCurrentDeleteSubscription) | **DELETE** /repos/{owner}/{repo}/subscription | Unwatch a repo
[**userCurrentPutSubscription**](RepositoryApi.md#userCurrentPutSubscription) | **PUT** /repos/{owner}/{repo}/subscription | Watch a repo
[**userTrackedTimes**](RepositoryApi.md#userTrackedTimes) | **GET** /repos/{owner}/{repo}/times/{user} | List a user&#39;s tracked times in a repo


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

var api_instance = RepositoryApi();
var body = CreateRepoOption(); // CreateRepoOption | 

try { 
    var result = api_instance.createCurrentUserRepo(body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->createCurrentUserRepo: $e\n");
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

# **createFork**
> Repository createFork(owner, repo, body)

Fork a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo to fork
var repo = repo_example; // String | name of the repo to fork
var body = CreateForkOption(); // CreateForkOption | 

try { 
    var result = api_instance.createFork(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->createFork: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to fork | [default to null]
 **repo** | **String**| name of the repo to fork | [default to null]
 **body** | [**CreateForkOption**](CreateForkOption.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlob**
> GitBlobResponse getBlob(owner, repo, sha)

Gets the blob of a repository.

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | sha of the commit

try { 
    var result = api_instance.getBlob(owner, repo, sha);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->getBlob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| sha of the commit | [default to null]

### Return type

[**GitBlobResponse**](GitBlobResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTag**
> AnnotatedTag getTag(owner, repo, sha)

Gets the tag object of an annotated tag (not lightweight tags)

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | sha of the tag. The Git tags API only supports annotated tag objects, not lightweight tags.

try { 
    var result = api_instance.getTag(owner, repo, sha);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->getTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| sha of the tag. The Git tags API only supports annotated tag objects, not lightweight tags. | [default to null]

### Return type

[**AnnotatedTag**](AnnotatedTag.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTree**
> GitTreeResponse getTree(owner, repo, sha, recursive, page, perPage)

Gets the tree of a repository.

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | sha of the commit
var recursive = true; // bool | show all directories and files
var page = 56; // int | page number; the 'truncated' field in the response will be true if there are still more items after this page, false if the last page
var perPage = 56; // int | number of items per page; default is 1000 or what is set in app.ini as DEFAULT_GIT_TREES_PER_PAGE

try { 
    var result = api_instance.getTree(owner, repo, sha, recursive, page, perPage);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->getTree: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| sha of the commit | [default to null]
 **recursive** | **bool**| show all directories and files | [optional] [default to null]
 **page** | **int**| page number; the &#39;truncated&#39; field in the response will be true if there are still more items after this page, false if the last page | [optional] [default to null]
 **perPage** | **int**| number of items per page; default is 1000 or what is set in app.ini as DEFAULT_GIT_TREES_PER_PAGE | [optional] [default to null]

### Return type

[**GitTreeResponse**](GitTreeResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listForks**
> List<Repository> listForks(owner, repo, page, limit)

List a repository's forks

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.listForks(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->listForks: $e\n");
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

[**List<Repository>**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoAddCollaborator**
> repoAddCollaborator(owner, repo, collaborator, body)

Add a collaborator to a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var collaborator = collaborator_example; // String | username of the collaborator to add
var body = AddCollaboratorOption(); // AddCollaboratorOption | 

try { 
    api_instance.repoAddCollaborator(owner, repo, collaborator, body);
} catch (e) {
    print("Exception when calling RepositoryApi->repoAddCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **collaborator** | **String**| username of the collaborator to add | [default to null]
 **body** | [**AddCollaboratorOption**](AddCollaboratorOption.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoAddTopíc**
> repoAddTopíc(owner, repo, topic)

Add a topic to a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var topic = topic_example; // String | name of the topic to add

try { 
    api_instance.repoAddTopíc(owner, repo, topic);
} catch (e) {
    print("Exception when calling RepositoryApi->repoAddTopíc: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **topic** | **String**| name of the topic to add | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCheckCollaborator**
> repoCheckCollaborator(owner, repo, collaborator)

Check if a user is a collaborator of a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var collaborator = collaborator_example; // String | username of the collaborator

try { 
    api_instance.repoCheckCollaborator(owner, repo, collaborator);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCheckCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **collaborator** | **String**| username of the collaborator | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateBranchProtection**
> BranchProtection repoCreateBranchProtection(owner, repo, body)

Create a branch protections for a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateBranchProtectionOption(); // CreateBranchProtectionOption | 

try { 
    var result = api_instance.repoCreateBranchProtection(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateBranchProtectionOption**](CreateBranchProtectionOption.md)|  | [optional] 

### Return type

[**BranchProtection**](BranchProtection.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateFile**
> FileResponse repoCreateFile(owner, repo, filepath, body)

Create a file in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | path of the file to create
var body = CreateFileOptions(); // CreateFileOptions | 

try { 
    var result = api_instance.repoCreateFile(owner, repo, filepath, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| path of the file to create | [default to null]
 **body** | [**CreateFileOptions**](CreateFileOptions.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateHook**
> Hook repoCreateHook(owner, repo, body)

Create a hook

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateHookOption(); // CreateHookOption | 

try { 
    var result = api_instance.repoCreateHook(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateHookOption**](CreateHookOption.md)|  | [optional] 

### Return type

[**Hook**](Hook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateKey**
> DeployKey repoCreateKey(owner, repo, body)

Add a key to a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateKeyOption(); // CreateKeyOption | 

try { 
    var result = api_instance.repoCreateKey(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateKeyOption**](CreateKeyOption.md)|  | [optional] 

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreatePullRequest**
> PullRequest repoCreatePullRequest(owner, repo, body)

Create a pull request

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreatePullRequestOption(); // CreatePullRequestOption | 

try { 
    var result = api_instance.repoCreatePullRequest(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreatePullRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreatePullRequestOption**](CreatePullRequestOption.md)|  | [optional] 

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateRelease**
> Release repoCreateRelease(owner, repo, body)

Create a release

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = CreateReleaseOption(); // CreateReleaseOption | 

try { 
    var result = api_instance.repoCreateRelease(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**CreateReleaseOption**](CreateReleaseOption.md)|  | [optional] 

### Return type

[**Release**](Release.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateReleaseAttachment**
> Attachment repoCreateReleaseAttachment(owner, repo, id, attachment, name)

Create a release attachment

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release
var attachment = BINARY_DATA_HERE; // MultipartFile | attachment to upload
var name = name_example; // String | name of the attachment

try { 
    var result = api_instance.repoCreateReleaseAttachment(owner, repo, id, attachment, name);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateReleaseAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release | [default to null]
 **attachment** | **MultipartFile**| attachment to upload | [default to null]
 **name** | **String**| name of the attachment | [optional] [default to null]

### Return type

[**Attachment**](Attachment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoCreateStatus**
> Status repoCreateStatus(owner, repo, sha, body)

Create a commit status

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | sha of the commit
var body = CreateStatusOption(); // CreateStatusOption | 

try { 
    var result = api_instance.repoCreateStatus(owner, repo, sha, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoCreateStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| sha of the commit | [default to null]
 **body** | [**CreateStatusOption**](CreateStatusOption.md)|  | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDelete**
> repoDelete(owner, repo)

Delete a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo to delete
var repo = repo_example; // String | name of the repo to delete

try { 
    api_instance.repoDelete(owner, repo);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to delete | [default to null]
 **repo** | **String**| name of the repo to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteBranchProtection**
> repoDeleteBranchProtection(owner, repo, name)

Delete a specific branch protection for the repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var name = name_example; // String | name of protected branch

try { 
    api_instance.repoDeleteBranchProtection(owner, repo, name);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **name** | **String**| name of protected branch | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteCollaborator**
> repoDeleteCollaborator(owner, repo, collaborator)

Delete a collaborator from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var collaborator = collaborator_example; // String | username of the collaborator to delete

try { 
    api_instance.repoDeleteCollaborator(owner, repo, collaborator);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **collaborator** | **String**| username of the collaborator to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteFile**
> FileDeleteResponse repoDeleteFile(owner, repo, filepath, body)

Delete a file in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | path of the file to delete
var body = DeleteFileOptions(); // DeleteFileOptions | 

try { 
    var result = api_instance.repoDeleteFile(owner, repo, filepath, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| path of the file to delete | [default to null]
 **body** | [**DeleteFileOptions**](DeleteFileOptions.md)|  | 

### Return type

[**FileDeleteResponse**](FileDeleteResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteGitHook**
> repoDeleteGitHook(owner, repo, id)

Delete a Git hook in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = id_example; // String | id of the hook to get

try { 
    api_instance.repoDeleteGitHook(owner, repo, id);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteGitHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **String**| id of the hook to get | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteHook**
> repoDeleteHook(owner, repo, id)

Delete a hook in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the hook to delete

try { 
    api_instance.repoDeleteHook(owner, repo, id);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the hook to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteKey**
> repoDeleteKey(owner, repo, id)

Delete a key from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the key to delete

try { 
    api_instance.repoDeleteKey(owner, repo, id);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the key to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteRelease**
> repoDeleteRelease(owner, repo, id)

Delete a release

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release to delete

try { 
    api_instance.repoDeleteRelease(owner, repo, id);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteReleaseAttachment**
> repoDeleteReleaseAttachment(owner, repo, id, attachmentId)

Delete a release attachment

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release
var attachmentId = 789; // int | id of the attachment to delete

try { 
    api_instance.repoDeleteReleaseAttachment(owner, repo, id, attachmentId);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteReleaseAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release | [default to null]
 **attachmentId** | **int**| id of the attachment to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoDeleteTopic**
> repoDeleteTopic(owner, repo, topic)

Delete a topic from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var topic = topic_example; // String | name of the topic to delete

try { 
    api_instance.repoDeleteTopic(owner, repo, topic);
} catch (e) {
    print("Exception when calling RepositoryApi->repoDeleteTopic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **topic** | **String**| name of the topic to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEdit**
> Repository repoEdit(owner, repo, body)

Edit a repository's properties. Only fields that are set will be changed.

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo to edit
var repo = repo_example; // String | name of the repo to edit
var body = EditRepoOption(); // EditRepoOption | Properties of a repo that you can edit

try { 
    var result = api_instance.repoEdit(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEdit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to edit | [default to null]
 **repo** | **String**| name of the repo to edit | [default to null]
 **body** | [**EditRepoOption**](EditRepoOption.md)| Properties of a repo that you can edit | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditBranchProtection**
> BranchProtection repoEditBranchProtection(owner, repo, name, body)

Edit a branch protections for a repository. Only fields that are set will be changed

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var name = name_example; // String | name of protected branch
var body = EditBranchProtectionOption(); // EditBranchProtectionOption | 

try { 
    var result = api_instance.repoEditBranchProtection(owner, repo, name, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **name** | **String**| name of protected branch | [default to null]
 **body** | [**EditBranchProtectionOption**](EditBranchProtectionOption.md)|  | [optional] 

### Return type

[**BranchProtection**](BranchProtection.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditGitHook**
> GitHook repoEditGitHook(owner, repo, id, body)

Edit a Git hook in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = id_example; // String | id of the hook to get
var body = EditGitHookOption(); // EditGitHookOption | 

try { 
    var result = api_instance.repoEditGitHook(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditGitHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **String**| id of the hook to get | [default to null]
 **body** | [**EditGitHookOption**](EditGitHookOption.md)|  | [optional] 

### Return type

[**GitHook**](GitHook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditHook**
> Hook repoEditHook(owner, repo, id, body)

Edit a hook in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | index of the hook
var body = EditHookOption(); // EditHookOption | 

try { 
    var result = api_instance.repoEditHook(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| index of the hook | [default to null]
 **body** | [**EditHookOption**](EditHookOption.md)|  | [optional] 

### Return type

[**Hook**](Hook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditPullRequest**
> PullRequest repoEditPullRequest(owner, repo, index, body)

Update a pull request. If using deadline only the date will be taken into account, and time of day ignored.

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the pull request to edit
var body = EditPullRequestOption(); // EditPullRequestOption | 

try { 
    var result = api_instance.repoEditPullRequest(owner, repo, index, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditPullRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the pull request to edit | [default to null]
 **body** | [**EditPullRequestOption**](EditPullRequestOption.md)|  | [optional] 

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditRelease**
> Release repoEditRelease(owner, repo, id, body)

Update a release

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release to edit
var body = EditReleaseOption(); // EditReleaseOption | 

try { 
    var result = api_instance.repoEditRelease(owner, repo, id, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release to edit | [default to null]
 **body** | [**EditReleaseOption**](EditReleaseOption.md)|  | [optional] 

### Return type

[**Release**](Release.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoEditReleaseAttachment**
> Attachment repoEditReleaseAttachment(owner, repo, id, attachmentId, body)

Edit a release attachment

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release
var attachmentId = 789; // int | id of the attachment to edit
var body = EditAttachmentOptions(); // EditAttachmentOptions | 

try { 
    var result = api_instance.repoEditReleaseAttachment(owner, repo, id, attachmentId, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoEditReleaseAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release | [default to null]
 **attachmentId** | **int**| id of the attachment to edit | [default to null]
 **body** | [**EditAttachmentOptions**](EditAttachmentOptions.md)|  | [optional] 

### Return type

[**Attachment**](Attachment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGet**
> Repository repoGet(owner, repo)

Get a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoGet(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetAllCommits**
> List<Commit> repoGetAllCommits(owner, repo, sha, page, limit)

Get a list of all commits from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | SHA or branch to start listing commits from (usually 'master')
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoGetAllCommits(owner, repo, sha, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetAllCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| SHA or branch to start listing commits from (usually &#39;master&#39;) | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Commit>**](Commit.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetArchive**
> repoGetArchive(owner, repo, archive)

Get an archive of a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var archive = archive_example; // String | archive to download, consisting of a git reference and archive

try { 
    api_instance.repoGetArchive(owner, repo, archive);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetArchive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **archive** | **String**| archive to download, consisting of a git reference and archive | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetBranch**
> Branch repoGetBranch(owner, repo, branch)

Retrieve a specific branch from a repository, including its effective branch protection

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var branch = branch_example; // String | branch to get

try { 
    var result = api_instance.repoGetBranch(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **branch** | **String**| branch to get | [default to null]

### Return type

[**Branch**](Branch.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetBranchProtection**
> BranchProtection repoGetBranchProtection(owner, repo, name)

Get a specific branch protection for the repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var name = name_example; // String | name of protected branch

try { 
    var result = api_instance.repoGetBranchProtection(owner, repo, name);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **name** | **String**| name of protected branch | [default to null]

### Return type

[**BranchProtection**](BranchProtection.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetByID**
> Repository repoGetByID(id)

Get a repository by id

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

var api_instance = RepositoryApi();
var id = 789; // int | id of the repo to get

try { 
    var result = api_instance.repoGetByID(id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetByID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of the repo to get | [default to null]

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetCombinedStatusByRef**
> Status repoGetCombinedStatusByRef(owner, repo, ref, page)

Get a commit's combined status, by branch/tag/commit reference

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var ref = ref_example; // String | name of branch/tag/commit
var page = 56; // int | page number of results

try { 
    var result = api_instance.repoGetCombinedStatusByRef(owner, repo, ref, page);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetCombinedStatusByRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **ref** | **String**| name of branch/tag/commit | [default to null]
 **page** | **int**| page number of results | [optional] [default to null]

### Return type

[**Status**](Status.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetContents**
> ContentsResponse repoGetContents(owner, repo, filepath, ref)

Gets the metadata and contents (if a file) of an entry in a repository, or a list of entries if a dir

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | path of the dir, file, symlink or submodule in the repo
var ref = ref_example; // String | The name of the commit/branch/tag. Default the repository’s default branch (usually master)

try { 
    var result = api_instance.repoGetContents(owner, repo, filepath, ref);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetContents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| path of the dir, file, symlink or submodule in the repo | [default to null]
 **ref** | **String**| The name of the commit/branch/tag. Default the repository’s default branch (usually master) | [optional] [default to null]

### Return type

[**ContentsResponse**](ContentsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetContentsList**
> List<ContentsResponse> repoGetContentsList(owner, repo, ref)

Gets the metadata of all the entries of the root dir

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var ref = ref_example; // String | The name of the commit/branch/tag. Default the repository’s default branch (usually master)

try { 
    var result = api_instance.repoGetContentsList(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetContentsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **ref** | **String**| The name of the commit/branch/tag. Default the repository’s default branch (usually master) | [optional] [default to null]

### Return type

[**List<ContentsResponse>**](ContentsResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetEditorConfig**
> repoGetEditorConfig(owner, repo, filepath)

Get the EditorConfig definitions of a file in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | filepath of file to get

try { 
    api_instance.repoGetEditorConfig(owner, repo, filepath);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetEditorConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| filepath of file to get | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetGitHook**
> GitHook repoGetGitHook(owner, repo, id)

Get a Git hook

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = id_example; // String | id of the hook to get

try { 
    var result = api_instance.repoGetGitHook(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetGitHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **String**| id of the hook to get | [default to null]

### Return type

[**GitHook**](GitHook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetHook**
> Hook repoGetHook(owner, repo, id)

Get a hook

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the hook to get

try { 
    var result = api_instance.repoGetHook(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the hook to get | [default to null]

### Return type

[**Hook**](Hook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetKey**
> DeployKey repoGetKey(owner, repo, id)

Get a repository's key by id

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the key to get

try { 
    var result = api_instance.repoGetKey(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the key to get | [default to null]

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetPullRequest**
> PullRequest repoGetPullRequest(owner, repo, index)

Get a pull request

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the pull request to get

try { 
    var result = api_instance.repoGetPullRequest(owner, repo, index);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetPullRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the pull request to get | [default to null]

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetRawFile**
> repoGetRawFile(owner, repo, filepath)

Get a file from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | filepath of the file to get

try { 
    api_instance.repoGetRawFile(owner, repo, filepath);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetRawFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| filepath of the file to get | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetRelease**
> Release repoGetRelease(owner, repo, id)

Get a release

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release to get

try { 
    var result = api_instance.repoGetRelease(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release to get | [default to null]

### Return type

[**Release**](Release.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetReleaseAttachment**
> Attachment repoGetReleaseAttachment(owner, repo, id, attachmentId)

Get a release attachment

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release
var attachmentId = 789; // int | id of the attachment to get

try { 
    var result = api_instance.repoGetReleaseAttachment(owner, repo, id, attachmentId);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetReleaseAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release | [default to null]
 **attachmentId** | **int**| id of the attachment to get | [default to null]

### Return type

[**Attachment**](Attachment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoGetSingleCommit**
> Commit repoGetSingleCommit(owner, repo, sha)

Get a single commit from a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | the commit hash

try { 
    var result = api_instance.repoGetSingleCommit(owner, repo, sha);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoGetSingleCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| the commit hash | [default to null]

### Return type

[**Commit**](Commit.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListAllGitRefs**
> List<Reference> repoListAllGitRefs(owner, repo)

Get specified ref or filtered repository's refs

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoListAllGitRefs(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListAllGitRefs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**List<Reference>**](Reference.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListBranchProtection**
> List<BranchProtection> repoListBranchProtection(owner, repo)

List branch protections for a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoListBranchProtection(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**List<BranchProtection>**](BranchProtection.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListBranches**
> List<Branch> repoListBranches(owner, repo)

List a repository's branches

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoListBranches(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListBranches: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**List<Branch>**](Branch.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListCollaborators**
> List<User> repoListCollaborators(owner, repo, page, limit)

List a repository's collaborators

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListCollaborators(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListCollaborators: $e\n");
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

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListGitHooks**
> List<GitHook> repoListGitHooks(owner, repo)

List the Git hooks in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoListGitHooks(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListGitHooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**List<GitHook>**](GitHook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListGitRefs**
> List<Reference> repoListGitRefs(owner, repo, ref)

Get specified ref or filtered repository's refs

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var ref = ref_example; // String | part or full name of the ref

try { 
    var result = api_instance.repoListGitRefs(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListGitRefs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **ref** | **String**| part or full name of the ref | [default to null]

### Return type

[**List<Reference>**](Reference.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListHooks**
> List<Hook> repoListHooks(owner, repo, page, limit)

List the hooks in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListHooks(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListHooks: $e\n");
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

[**List<Hook>**](Hook.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListKeys**
> List<DeployKey> repoListKeys(owner, repo, keyId, fingerprint, page, limit)

List a repository's keys

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var keyId = 56; // int | the key_id to search for
var fingerprint = fingerprint_example; // String | fingerprint of the key
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListKeys(owner, repo, keyId, fingerprint, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **keyId** | **int**| the key_id to search for | [optional] [default to null]
 **fingerprint** | **String**| fingerprint of the key | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<DeployKey>**](DeployKey.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListPullRequests**
> List<PullRequest> repoListPullRequests(owner, repo, state, sort, milestone, labels, page, limit)

List a repo's pull requests

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var state = state_example; // String | State of pull request: open or closed (optional)
var sort = sort_example; // String | Type of sort
var milestone = 789; // int | ID of the milestone
var labels = []; // List<int> | Label IDs
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListPullRequests(owner, repo, state, sort, milestone, labels, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListPullRequests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **state** | **String**| State of pull request: open or closed (optional) | [optional] [default to null]
 **sort** | **String**| Type of sort | [optional] [default to null]
 **milestone** | **int**| ID of the milestone | [optional] [default to null]
 **labels** | [**List&lt;int&gt;**](int.md)| Label IDs | [optional] [default to []]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<PullRequest>**](PullRequest.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListReleaseAttachments**
> List<Attachment> repoListReleaseAttachments(owner, repo, id)

List release's attachments

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the release

try { 
    var result = api_instance.repoListReleaseAttachments(owner, repo, id);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListReleaseAttachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the release | [default to null]

### Return type

[**List<Attachment>**](Attachment.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListReleases**
> List<Release> repoListReleases(owner, repo, perPage, page, limit)

List a repo's releases

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var perPage = 56; // int | items count every page wants to load
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListReleases(owner, repo, perPage, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListReleases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **perPage** | **int**| items count every page wants to load | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Release>**](Release.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListStargazers**
> List<User> repoListStargazers(owner, repo, page, limit)

List a repo's stargazers

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListStargazers(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListStargazers: $e\n");
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

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListStatuses**
> List<Status> repoListStatuses(owner, repo, sha, sort, state, page, limit)

Get a commit's statuses

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var sha = sha_example; // String | sha of the commit
var sort = sort_example; // String | type of sort
var state = state_example; // String | type of state
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListStatuses(owner, repo, sha, sort, state, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListStatuses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **sha** | **String**| sha of the commit | [default to null]
 **sort** | **String**| type of sort | [optional] [default to null]
 **state** | **String**| type of state | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<Status>**](Status.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListSubscribers**
> List<User> repoListSubscribers(owner, repo, page, limit)

List a repo's watchers

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListSubscribers(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListSubscribers: $e\n");
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

[**List<User>**](User.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListTags**
> List<Tag> repoListTags(owner, repo)

List a repository's tags

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoListTags(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**List<Tag>**](Tag.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoListTopics**
> TopicName repoListTopics(owner, repo, page, limit)

Get list of topics that a repository has

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoListTopics(owner, repo, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoListTopics: $e\n");
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

[**TopicName**](TopicName.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoMergePullRequest**
> repoMergePullRequest(owner, repo, index, body)

Merge a pull request

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the pull request to merge
var body = MergePullRequestOption(); // MergePullRequestOption | 

try { 
    api_instance.repoMergePullRequest(owner, repo, index, body);
} catch (e) {
    print("Exception when calling RepositoryApi->repoMergePullRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the pull request to merge | [default to null]
 **body** | [**MergePullRequestOption**](MergePullRequestOption.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoMigrate**
> Repository repoMigrate(body)

Migrate a remote git repository

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

var api_instance = RepositoryApi();
var body = MigrateRepoForm(); // MigrateRepoForm | 

try { 
    var result = api_instance.repoMigrate(body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoMigrate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MigrateRepoForm**](MigrateRepoForm.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoMirrorSync**
> repoMirrorSync(owner, repo)

Sync a mirrored repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo to sync
var repo = repo_example; // String | name of the repo to sync

try { 
    api_instance.repoMirrorSync(owner, repo);
} catch (e) {
    print("Exception when calling RepositoryApi->repoMirrorSync: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to sync | [default to null]
 **repo** | **String**| name of the repo to sync | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoPullRequestIsMerged**
> repoPullRequestIsMerged(owner, repo, index)

Check if a pull request has been merged

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var index = 789; // int | index of the pull request

try { 
    api_instance.repoPullRequestIsMerged(owner, repo, index);
} catch (e) {
    print("Exception when calling RepositoryApi->repoPullRequestIsMerged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **index** | **int**| index of the pull request | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoSearch**
> SearchResults repoSearch(q, topic, includeDesc, uid, priorityOwnerId, starredBy, private, template, mode, exclusive, sort, order, page, limit)

Search for repositories

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

var api_instance = RepositoryApi();
var q = q_example; // String | keyword
var topic = true; // bool | Limit search to repositories with keyword as topic
var includeDesc = true; // bool | include search of keyword within repository description
var uid = 789; // int | search only for repos that the user with the given id owns or contributes to
var priorityOwnerId = 789; // int | repo owner to prioritize in the results
var starredBy = 789; // int | search only for repos that the user with the given id has starred
var private = true; // bool | include private repositories this user has access to (defaults to true)
var template = true; // bool | include template repositories this user has access to (defaults to true)
var mode = mode_example; // String | type of repository to search for. Supported values are \"fork\", \"source\", \"mirror\" and \"collaborative\"
var exclusive = true; // bool | if `uid` is given, search only for repos that the user owns
var sort = sort_example; // String | sort repos by attribute. Supported values are \"alpha\", \"created\", \"updated\", \"size\", and \"id\". Default is \"alpha\"
var order = order_example; // String | sort order, either \"asc\" (ascending) or \"desc\" (descending). Default is \"asc\", ignored if \"sort\" is not specified.
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoSearch(q, topic, includeDesc, uid, priorityOwnerId, starredBy, private, template, mode, exclusive, sort, order, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| keyword | [optional] [default to null]
 **topic** | **bool**| Limit search to repositories with keyword as topic | [optional] [default to null]
 **includeDesc** | **bool**| include search of keyword within repository description | [optional] [default to null]
 **uid** | **int**| search only for repos that the user with the given id owns or contributes to | [optional] [default to null]
 **priorityOwnerId** | **int**| repo owner to prioritize in the results | [optional] [default to null]
 **starredBy** | **int**| search only for repos that the user with the given id has starred | [optional] [default to null]
 **private** | **bool**| include private repositories this user has access to (defaults to true) | [optional] [default to null]
 **template** | **bool**| include template repositories this user has access to (defaults to true) | [optional] [default to null]
 **mode** | **String**| type of repository to search for. Supported values are \&quot;fork\&quot;, \&quot;source\&quot;, \&quot;mirror\&quot; and \&quot;collaborative\&quot; | [optional] [default to null]
 **exclusive** | **bool**| if &#x60;uid&#x60; is given, search only for repos that the user owns | [optional] [default to null]
 **sort** | **String**| sort repos by attribute. Supported values are \&quot;alpha\&quot;, \&quot;created\&quot;, \&quot;updated\&quot;, \&quot;size\&quot;, and \&quot;id\&quot;. Default is \&quot;alpha\&quot; | [optional] [default to null]
 **order** | **String**| sort order, either \&quot;asc\&quot; (ascending) or \&quot;desc\&quot; (descending). Default is \&quot;asc\&quot;, ignored if \&quot;sort\&quot; is not specified. | [optional] [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**SearchResults**](SearchResults.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoSigningKey**
> String repoSigningKey(owner, repo)

Get signing-key.gpg for given repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.repoSigningKey(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoSigningKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

**String**

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoTestHook**
> repoTestHook(owner, repo, id)

Test a push webhook

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var id = 789; // int | id of the hook to test

try { 
    api_instance.repoTestHook(owner, repo, id);
} catch (e) {
    print("Exception when calling RepositoryApi->repoTestHook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **id** | **int**| id of the hook to test | [default to null]

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoTrackedTimes**
> List<TrackedTime> repoTrackedTimes(owner, repo, user, since, before, page, limit)

List a repo's tracked times

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var user = user_example; // String | optional filter by user
var since = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated after the given time. This is a timestamp in RFC 3339 format
var before = 2013-10-20T19:20:30+01:00; // DateTime | Only show times updated before the given time. This is a timestamp in RFC 3339 format
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.repoTrackedTimes(owner, repo, user, since, before, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoTrackedTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **user** | **String**| optional filter by user | [optional] [default to null]
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

# **repoTransfer**
> Repository repoTransfer(owner, repo, body)

Transfer a repo ownership

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo to transfer
var repo = repo_example; // String | name of the repo to transfer
var body = TransferRepoOption(); // TransferRepoOption | Transfer Options

try { 
    var result = api_instance.repoTransfer(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoTransfer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo to transfer | [default to null]
 **repo** | **String**| name of the repo to transfer | [default to null]
 **body** | [**TransferRepoOption**](TransferRepoOption.md)| Transfer Options | 

### Return type

[**Repository**](Repository.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoUpdateFile**
> FileResponse repoUpdateFile(owner, repo, filepath, body)

Update a file in a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var filepath = filepath_example; // String | path of the file to update
var body = UpdateFileOptions(); // UpdateFileOptions | 

try { 
    var result = api_instance.repoUpdateFile(owner, repo, filepath, body);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->repoUpdateFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **filepath** | **String**| path of the file to update | [default to null]
 **body** | [**UpdateFileOptions**](UpdateFileOptions.md)|  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repoUpdateTopics**
> repoUpdateTopics(owner, repo, body)

Replace list of topics for a repository

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var body = RepoTopicOptions(); // RepoTopicOptions | 

try { 
    api_instance.repoUpdateTopics(owner, repo, body);
} catch (e) {
    print("Exception when calling RepositoryApi->repoUpdateTopics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **body** | [**RepoTopicOptions**](RepoTopicOptions.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **topicSearch**
> List<TopicResponse> topicSearch(q, page, limit)

search topics via keyword

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

var api_instance = RepositoryApi();
var q = q_example; // String | keywords to search
var page = 56; // int | page number of results to return (1-based)
var limit = 56; // int | page size of results, maximum page size is 50

try { 
    var result = api_instance.topicSearch(q, page, limit);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->topicSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| keywords to search | [default to null]
 **page** | **int**| page number of results to return (1-based) | [optional] [default to null]
 **limit** | **int**| page size of results, maximum page size is 50 | [optional] [default to null]

### Return type

[**List<TopicResponse>**](TopicResponse.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentCheckSubscription**
> WatchInfo userCurrentCheckSubscription(owner, repo)

Check if the current user is watching a repo

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.userCurrentCheckSubscription(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->userCurrentCheckSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**WatchInfo**](WatchInfo.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCurrentDeleteSubscription**
> userCurrentDeleteSubscription(owner, repo)

Unwatch a repo

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    api_instance.userCurrentDeleteSubscription(owner, repo);
} catch (e) {
    print("Exception when calling RepositoryApi->userCurrentDeleteSubscription: $e\n");
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

# **userCurrentPutSubscription**
> WatchInfo userCurrentPutSubscription(owner, repo)

Watch a repo

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo

try { 
    var result = api_instance.userCurrentPutSubscription(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->userCurrentPutSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]

### Return type

[**WatchInfo**](WatchInfo.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTrackedTimes**
> List<TrackedTime> userTrackedTimes(owner, repo, user)

List a user's tracked times in a repo

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

var api_instance = RepositoryApi();
var owner = owner_example; // String | owner of the repo
var repo = repo_example; // String | name of the repo
var user = user_example; // String | username of user

try { 
    var result = api_instance.userTrackedTimes(owner, repo, user);
    print(result);
} catch (e) {
    print("Exception when calling RepositoryApi->userTrackedTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**| owner of the repo | [default to null]
 **repo** | **String**| name of the repo | [default to null]
 **user** | **String**| username of user | [default to null]

### Return type

[**List<TrackedTime>**](TrackedTime.md)

### Authorization

[AccessToken](../README.md#AccessToken), [AuthorizationHeaderToken](../README.md#AuthorizationHeaderToken), [BasicAuth](../README.md#BasicAuth), [SudoHeader](../README.md#SudoHeader), [SudoParam](../README.md#SudoParam), [Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

