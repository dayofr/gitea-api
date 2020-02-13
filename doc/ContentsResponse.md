# openapi.model.ContentsResponse

## Load the model package
```dart
import 'package:gitea_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**FileLinksResponse**](FileLinksResponse.md) |  | [optional] [default to null]
**content** | **String** | &#x60;content&#x60; is populated when &#x60;type&#x60; is &#x60;file&#x60;, otherwise null | [optional] [default to null]
**downloadUrl** | **String** |  | [optional] [default to null]
**encoding** | **String** | &#x60;encoding&#x60; is populated when &#x60;type&#x60; is &#x60;file&#x60;, otherwise null | [optional] [default to null]
**gitUrl** | **String** |  | [optional] [default to null]
**htmlUrl** | **String** |  | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**path** | **String** |  | [optional] [default to null]
**sha** | **String** |  | [optional] [default to null]
**size** | **int** |  | [optional] [default to null]
**submoduleGitUrl** | **String** | &#x60;submodule_git_url&#x60; is populated when &#x60;type&#x60; is &#x60;submodule&#x60;, otherwise null | [optional] [default to null]
**target** | **String** | &#x60;target&#x60; is populated when &#x60;type&#x60; is &#x60;symlink&#x60;, otherwise null | [optional] [default to null]
**type** | **String** | &#x60;type&#x60; will be &#x60;file&#x60;, &#x60;dir&#x60;, &#x60;symlink&#x60;, or &#x60;submodule&#x60; | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


