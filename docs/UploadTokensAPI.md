# UploadTokensAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteToken**](UploadTokensAPI.md#deleteuploadtokensuploadtoken) | **DELETE** /upload-tokens/{uploadToken} | Delete an upload token
[**list**](UploadTokensAPI.md#getuploadtokens) | **GET** /upload-tokens | List all active upload tokens.
[**getToken**](UploadTokensAPI.md#getuploadtokensuploadtoken) | **GET** /upload-tokens/{uploadToken} | Show upload token
[**createToken**](UploadTokensAPI.md#postuploadtokens) | **POST** /upload-tokens | Generate an upload token


# **deleteToken**
```swift
    open class func deleteToken(uploadToken: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an upload token

Delete an existing upload token. This is especially useful for tokens you may have created that do not expire.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let uploadToken = "uploadToken_example" // String | The unique identifier for the upload token you want to delete. Deleting a token will make it so the token can no longer be used for authentication.

// Delete an upload token
UploadTokensAPI.deleteToken(uploadToken: uploadToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadToken** | **String** | The unique identifier for the upload token you want to delete. Deleting a token will make it so the token can no longer be used for authentication. | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: TokenListResponse?, _ error: Error?) -> Void)
```

List all active upload tokens.

A delegated token is used to allow secure uploads without exposing your API key. Use this endpoint to retrieve a list of all currently active delegated tokens. Tutorials using [delegated upload](https://api.video/blog/endpoints/delegated-upload).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let sortBy = "sortBy_example" // String | Allowed: createdAt, ttl. You can use these to sort by when a token was created, or how much longer the token will be active (ttl - time to live). Date and time is presented in ISO-8601 format. (optional)
let sortOrder = "sortOrder_example" // String | Allowed: asc, desc. Ascending is 0-9 or A-Z. Descending is 9-0 or Z-A. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all active upload tokens.
UploadTokensAPI.list(sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String** | Allowed: createdAt, ttl. You can use these to sort by when a token was created, or how much longer the token will be active (ttl - time to live). Date and time is presented in ISO-8601 format. | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. Ascending is 0-9 or A-Z. Descending is 9-0 or Z-A. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**TokenListResponse**](TokenListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToken**
```swift
    open class func getToken(uploadToken: String, completion: @escaping (_ data: UploadToken?, _ error: Error?) -> Void)
```

Show upload token

You can retrieve details about a specific upload token if you have the unique identifier for the upload token. Add it in the path of the endpoint. Details include time-to-live (ttl), when the token was created, and when it will expire.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let uploadToken = "uploadToken_example" // String | The unique identifier for the token you want information about.

// Show upload token
UploadTokensAPI.getToken(uploadToken: uploadToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadToken** | **String** | The unique identifier for the token you want information about. | 

### Return type

[**UploadToken**](UploadToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createToken**
```swift
    open class func createToken(tokenCreationPayload: TokenCreationPayload, completion: @escaping (_ data: UploadToken?, _ error: Error?) -> Void)
```

Generate an upload token

Use this endpoint to generate an upload token. You can use this token to authenticate video uploads while keeping your API key safe. Tutorials using [delegated upload](https://api.video/blog/endpoints/delegated-upload).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let tokenCreationPayload = token-creation-payload(ttl: 123) // TokenCreationPayload | 

// Generate an upload token
UploadTokensAPI.createToken(tokenCreationPayload: tokenCreationPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenCreationPayload** | [**TokenCreationPayload**](TokenCreationPayload.md) |  | 

### Return type

[**UploadToken**](UploadToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

