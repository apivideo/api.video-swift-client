# LiveStreamsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LiveStreamsAPI.md#postlivestreams) | **POST** /live-streams | Create live stream
[**get**](LiveStreamsAPI.md#getlivestreamslivestreamid) | **GET** /live-streams/{liveStreamId} | Retrieve live stream
[**update**](LiveStreamsAPI.md#patchlivestreamslivestreamid) | **PATCH** /live-streams/{liveStreamId} | Update a live stream
[**delete**](LiveStreamsAPI.md#deletelivestreamslivestreamid) | **DELETE** /live-streams/{liveStreamId} | Delete a live stream
[**list**](LiveStreamsAPI.md#getlivestreams) | **GET** /live-streams | List all live streams
[**uploadThumbnail**](LiveStreamsAPI.md#postlivestreamslivestreamidthumbnail) | **POST** /live-streams/{liveStreamId}/thumbnail | Upload a thumbnail
[**deleteThumbnail**](LiveStreamsAPI.md#deletelivestreamslivestreamidthumbnail) | **DELETE** /live-streams/{liveStreamId}/thumbnail | Delete a thumbnail


# **create**
```swift
    open class func create(liveStreamCreationPayload: LiveStreamCreationPayload, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Create live stream

Creates a livestream object.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamCreationPayload = LiveStreamCreationPayload(name: "name_example", _public: false, playerId: "playerId_example", restreams: [RestreamsRequestObject(name: "name_example", serverUrl: "serverUrl_example", streamKey: "streamKey_example")]) // LiveStreamCreationPayload | 

// Create live stream
LiveStreamsAPI.create(liveStreamCreationPayload: liveStreamCreationPayload) { (response, error) in
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
 **liveStreamCreationPayload** | [**LiveStreamCreationPayload**](LiveStreamCreationPayload.md) |  | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(liveStreamId: String, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Retrieve live stream

Get a livestream by id.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream you want to watch.

// Retrieve live stream
LiveStreamsAPI.get(liveStreamId: liveStreamId) { (response, error) in
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
 **liveStreamId** | **String** | The unique ID for the live stream you want to watch. | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(liveStreamId: String, liveStreamUpdatePayload: LiveStreamUpdatePayload, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Update a live stream

Updates the livestream object.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream that you want to update information for such as player details.
let liveStreamUpdatePayload = LiveStreamUpdatePayload(name: "name_example", _public: false, playerId: "playerId_example", restreams: [RestreamsRequestObject(name: "name_example", serverUrl: "serverUrl_example", streamKey: "streamKey_example")]) // LiveStreamUpdatePayload | 

// Update a live stream
LiveStreamsAPI.update(liveStreamId: liveStreamId, liveStreamUpdatePayload: liveStreamUpdatePayload) { (response, error) in
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
 **liveStreamId** | **String** | The unique ID for the live stream that you want to update information for such as player details. | 
 **liveStreamUpdatePayload** | [**LiveStreamUpdatePayload**](LiveStreamUpdatePayload.md) |  | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(liveStreamId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a live stream

If you do not need a live stream any longer, you can send a request to delete it. All you need is the liveStreamId.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream that you want to remove.

// Delete a live stream
LiveStreamsAPI.delete(liveStreamId: liveStreamId) { (response, error) in
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
 **liveStreamId** | **String** | The unique ID for the live stream that you want to remove. | 

### Return type

Void (empty response body)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(streamKey: String? = nil, name: String? = nil, sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: LiveStreamListResponse?, _ error: Error?) -> Void)
```

List all live streams

Get the list of livestreams on the workspace.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let streamKey = "streamKey_example" // String | The unique stream key that allows you to stream videos. (optional)
let name = "name_example" // String | You can filter live streams by their name or a part of their name. (optional)
let sortBy = "sortBy_example" // String | Enables you to sort live stream results. Allowed attributes: `name`, `createdAt`, `updatedAt`. `name` - the name of the live stream. `createdAt` - the time a live stream was created. `updatedAt` - the time a live stream was last updated.  When using `createdAt` or `updatedAt`, the API sorts the results based on the ISO-8601 time format.  (optional)
let sortOrder = "sortOrder_example" // String | Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all live streams
LiveStreamsAPI.list(streamKey: streamKey, name: name, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **streamKey** | **String** | The unique stream key that allows you to stream videos. | [optional] 
 **name** | **String** | You can filter live streams by their name or a part of their name. | [optional] 
 **sortBy** | **String** | Enables you to sort live stream results. Allowed attributes: &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;. &#x60;name&#x60; - the name of the live stream. &#x60;createdAt&#x60; - the time a live stream was created. &#x60;updatedAt&#x60; - the time a live stream was last updated.  When using &#x60;createdAt&#x60; or &#x60;updatedAt&#x60;, the API sorts the results based on the ISO-8601 time format.  | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**LiveStreamListResponse**](LiveStreamListResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadThumbnail**
```swift
    open class func uploadThumbnail(liveStreamId: String, file: URL, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Upload a thumbnail

Upload the thumbnail for the livestream.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream you want to upload.
let file = URL(string: "https://example.com")! // URL | The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB.

// Upload a thumbnail
LiveStreamsAPI.uploadThumbnail(liveStreamId: liveStreamId, file: file) { (response, error) in
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
 **liveStreamId** | **String** | The unique ID for the live stream you want to upload. | 
 **file** | **URL** | The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB. | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteThumbnail**
```swift
    open class func deleteThumbnail(liveStreamId: String, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Delete a thumbnail

Send the unique identifier for a live stream to delete its thumbnail.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique identifier of the live stream whose thumbnail you want to delete.

// Delete a thumbnail
LiveStreamsAPI.deleteThumbnail(liveStreamId: liveStreamId) { (response, error) in
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
 **liveStreamId** | **String** | The unique identifier of the live stream whose thumbnail you want to delete. | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

