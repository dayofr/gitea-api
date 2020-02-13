# openapi.model.EditRepoOption

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowMergeCommits** | **bool** | either &#x60;true&#x60; to allow merging pull requests with a merge commit, or &#x60;false&#x60; to prevent merging pull requests with merge commits. &#x60;has_pull_requests&#x60; must be &#x60;true&#x60;. | [optional] [default to null]
**allowRebase** | **bool** | either &#x60;true&#x60; to allow rebase-merging pull requests, or &#x60;false&#x60; to prevent rebase-merging. &#x60;has_pull_requests&#x60; must be &#x60;true&#x60;. | [optional] [default to null]
**allowRebaseExplicit** | **bool** | either &#x60;true&#x60; to allow rebase with explicit merge commits (--no-ff), or &#x60;false&#x60; to prevent rebase with explicit merge commits. &#x60;has_pull_requests&#x60; must be &#x60;true&#x60;. | [optional] [default to null]
**allowSquashMerge** | **bool** | either &#x60;true&#x60; to allow squash-merging pull requests, or &#x60;false&#x60; to prevent squash-merging. &#x60;has_pull_requests&#x60; must be &#x60;true&#x60;. | [optional] [default to null]
**archived** | **bool** | set to &#x60;true&#x60; to archive this repository. | [optional] [default to null]
**defaultBranch** | **String** | sets the default branch for this repository. | [optional] [default to null]
**description** | **String** | a short description of the repository. | [optional] [default to null]
**externalTracker** | [**ExternalTracker**](ExternalTracker.md) |  | [optional] [default to null]
**externalWiki** | [**ExternalWiki**](ExternalWiki.md) |  | [optional] [default to null]
**hasIssues** | **bool** | either &#x60;true&#x60; to enable issues for this repository or &#x60;false&#x60; to disable them. | [optional] [default to null]
**hasPullRequests** | **bool** | either &#x60;true&#x60; to allow pull requests, or &#x60;false&#x60; to prevent pull request. | [optional] [default to null]
**hasWiki** | **bool** | either &#x60;true&#x60; to enable the wiki for this repository or &#x60;false&#x60; to disable it. | [optional] [default to null]
**ignoreWhitespaceConflicts** | **bool** | either &#x60;true&#x60; to ignore whitespace for conflicts, or &#x60;false&#x60; to not ignore whitespace. &#x60;has_pull_requests&#x60; must be &#x60;true&#x60;. | [optional] [default to null]
**internalTracker** | [**InternalTracker**](InternalTracker.md) |  | [optional] [default to null]
**name** | **String** | name of the repository | [optional] [default to null]
**private** | **bool** | either &#x60;true&#x60; to make the repository private or &#x60;false&#x60; to make it public. Note: you will get a 422 error if the organization restricts changing repository visibility to organization owners and a non-owner tries to change the value of private. | [optional] [default to null]
**template** | **bool** | either &#x60;true&#x60; to make this repository a template or &#x60;false&#x60; to make it a normal repository | [optional] [default to null]
**website** | **String** | a URL with more information about the repository. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


