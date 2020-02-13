# openapi.model.GPGKey

## Load the model package
```dart
import 'package:gitea_openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canCertify** | **bool** |  | [optional] [default to null]
**canEncryptComms** | **bool** |  | [optional] [default to null]
**canEncryptStorage** | **bool** |  | [optional] [default to null]
**canSign** | **bool** |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**emails** | [**List&lt;GPGKeyEmail&gt;**](GPGKeyEmail.md) |  | [optional] [default to []]
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**id** | **int** |  | [optional] [default to null]
**keyId** | **String** |  | [optional] [default to null]
**primaryKeyId** | **String** |  | [optional] [default to null]
**publicKey** | **String** |  | [optional] [default to null]
**subkeys** | [**List&lt;GPGKey&gt;**](GPGKey.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


