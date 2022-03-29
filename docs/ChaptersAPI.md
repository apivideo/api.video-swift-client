# ChaptersAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ChaptersAPI.md#deletevideosvideoidchapterslanguage) | **DELETE** /videos/{videoId}/chapters/{language} | Delete a chapter
[**list**](ChaptersAPI.md#getvideosvideoidchapters) | **GET** /videos/{videoId}/chapters | List video chapters
[**get**](ChaptersAPI.md#getvideosvideoidchapterslanguage) | **GET** /videos/{videoId}/chapters/{language} | Retrieve a chapter
[**upload**](ChaptersAPI.md#postvideosvideoidchapterslanguage) | **POST** /videos/{videoId}/chapters/{language} | Upload a chapter


# **delete**
```swift
    open class func delete(videoId: String, language: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a chapter

Delete a chapter in a specific language by providing the video ID for the video you want to delete the chapter from and the language the chapter is in.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to delete a chapter from.
let language = "language_example" // String | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation.

// Delete a chapter
ChaptersAPI.delete(videoId: videoId, language: language) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want to delete a chapter from. | 
 **language** | **String** | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. | 

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
    open class func list(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ChaptersListResponse?, _ error: Error?) -> Void)
```

List video chapters

Retrieve a list of all chapters for a specified video.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to retrieve a list of chapters for.
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List video chapters
ChaptersAPI.list(videoId: videoId, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want to retrieve a list of chapters for. | 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**ChaptersListResponse**](ChaptersListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(videoId: String, language: String, completion: @escaping (_ data: Chapter?, _ error: Error?) -> Void)
```

Retrieve a chapter

Retrieve a chapter for a video in a specific language.  Chapters help your viewers find the sections of the video they are most interested in viewing. Tutorials that use the [chapters endpoint](https://api.video/blog/endpoints/chapters).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to show a chapter for.
let language = "language_example" // String | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation.

// Retrieve a chapter
ChaptersAPI.get(videoId: videoId, language: language) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want to show a chapter for. | 
 **language** | **String** | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. | 

### Return type

[**Chapter**](Chapter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload**
```swift
    open class func upload(videoId: String, language: String, file: URL, completion: @escaping (_ data: Chapter?, _ error: Error?) -> Void)
```

Upload a chapter

Upload a VTT file to add chapters to your video. Chapters help break the video into sections. Read our [tutorial](https://api.video/blog/tutorials/adding-chapters-to-your-videos) for more details.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to upload a chapter for.
let language = "language_example" // String | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation.
let file = URL(string: "https://example.com")! // URL | The VTT file describing the chapters you want to upload.

// Upload a chapter
ChaptersAPI.upload(videoId: videoId, language: language, file: file) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want to upload a chapter for. | 
 **language** | **String** | A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. | 
 **file** | **URL** | The VTT file describing the chapters you want to upload. | 

### Return type

[**Chapter**](Chapter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

