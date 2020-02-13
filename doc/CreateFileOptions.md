# openapi.model.CreateFileOptions

## Load the model package
```dart
import 'package:gitea_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**Identity**](Identity.md) |  | [optional] [default to null]
**branch** | **String** | branch (optional) to base this file from. if not given, the default branch is used | [optional] [default to null]
**committer** | [**Identity**](Identity.md) |  | [optional] [default to null]
**content** | **String** | content must be base64 encoded | [default to null]
**dates** | [**CommitDateOptions**](CommitDateOptions.md) |  | [optional] [default to null]
**message** | **String** | message (optional) for the commit of this file. if not supplied, a default message will be used | [optional] [default to null]
**newBranch** | **String** | new_branch (optional) will make a new branch from &#x60;branch&#x60; before creating the file | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


