# openapi.model.PayloadCommit

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**added** | **List&lt;String&gt;** |  | [optional] [default to []]
**author** | [**PayloadUser**](PayloadUser.md) |  | [optional] [default to null]
**committer** | [**PayloadUser**](PayloadUser.md) |  | [optional] [default to null]
**id** | **String** | sha1 hash of the commit | [optional] [default to null]
**message** | **String** |  | [optional] [default to null]
**modified** | **List&lt;String&gt;** |  | [optional] [default to []]
**removed** | **List&lt;String&gt;** |  | [optional] [default to []]
**timestamp** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**verification** | [**PayloadCommitVerification**](PayloadCommitVerification.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


