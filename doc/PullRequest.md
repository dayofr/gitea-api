# openapi.model.PullRequest

## Load the model package
```dart
import 'package:gitea_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignee** | [**User**](User.md) |  | [optional] [default to null]
**assignees** | [**List&lt;User&gt;**](User.md) |  | [optional] [default to []]
**base** | [**PRBranchInfo**](PRBranchInfo.md) |  | [optional] [default to null]
**body** | **String** |  | [optional] [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**comments** | **int** |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**diffUrl** | **String** |  | [optional] [default to null]
**dueDate** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**head** | [**PRBranchInfo**](PRBranchInfo.md) |  | [optional] [default to null]
**htmlUrl** | **String** |  | [optional] [default to null]
**id** | **int** |  | [optional] [default to null]
**labels** | [**List&lt;Label&gt;**](Label.md) |  | [optional] [default to []]
**mergeBase** | **String** |  | [optional] [default to null]
**mergeCommitSha** | **String** |  | [optional] [default to null]
**mergeable** | **bool** |  | [optional] [default to null]
**merged** | **bool** |  | [optional] [default to null]
**mergedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**mergedBy** | [**User**](User.md) |  | [optional] [default to null]
**milestone** | [**Milestone**](Milestone.md) |  | [optional] [default to null]
**number** | **int** |  | [optional] [default to null]
**patchUrl** | **String** |  | [optional] [default to null]
**state** | **String** | StateType issue state type | [optional] [default to null]
**title** | **String** |  | [optional] [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**user** | [**User**](User.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


