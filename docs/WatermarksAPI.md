# WatermarksAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](WatermarksAPI.md#postwatermark) | **POST** /watermarks | Upload a watermark
[**delete**](WatermarksAPI.md#deletewatermark) | **DELETE** /watermarks/{watermarkId} | Delete a watermark
[**list**](WatermarksAPI.md#listwatermarks) | **GET** /watermarks | List all watermarks


# **upload**
```swift
    open class func upload(file: URL, completion: @escaping (_ data: Watermark?, _ error: Error?) -> Void)
```

Upload a watermark

Create a new watermark by uploading a `JPG` or a `PNG` image. A watermark is a static image, directly burnt into a video. After you have created your watermark, you can define its placement and aspect when you [create a video](https://docs.api.video/reference/post-video).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let file = URL(string: "https://example.com")! // URL | The `.jpg` or `.png` image to be added as a watermark.

// Upload a watermark
WatermarksAPI.upload(file: file) { (response, error) in
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
 **file** | **URL** | The &#x60;.jpg&#x60; or &#x60;.png&#x60; image to be added as a watermark. | 

### Return type

[**Watermark**](Watermark.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(watermarkId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a watermark

Delete a watermark. A watermark is a static image, directly burnt-into a video.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let watermarkId = "watermarkId_example" // String | The watermark ID for the watermark you want to delete.

// Delete a watermark
WatermarksAPI.delete(watermarkId: watermarkId) { (response, error) in
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
 **watermarkId** | **String** | The watermark ID for the watermark you want to delete. | 

### Return type

Void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: WatermarksListResponse?, _ error: Error?) -> Void)
```

List all watermarks

List all watermarks. A watermark is a static image, directly burnt into a video. After you have created your watermark, you can define its placement and aspect when you [create a video](https://docs.api.video/reference/post-video).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let sortBy = "sortBy_example" // String | Allowed: createdAt. You can search by the time watermark were created at. (optional)
let sortOrder = "sortOrder_example" // String | Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all watermarks
WatermarksAPI.list(sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **sortBy** | **String** | Allowed: createdAt. You can search by the time watermark were created at. | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**WatermarksListResponse**](WatermarksListResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

