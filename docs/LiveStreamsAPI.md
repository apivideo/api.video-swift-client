# LiveStreamsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](LiveStreamsAPI.md#deletelivestreamslivestreamid) | **DELETE** /live-streams/{liveStreamId} | Delete a live stream
[**deleteThumbnail**](LiveStreamsAPI.md#deletelivestreamslivestreamidthumbnail) | **DELETE** /live-streams/{liveStreamId}/thumbnail | Delete a thumbnail
[**list**](LiveStreamsAPI.md#getlivestreams) | **GET** /live-streams | List all live streams
[**get**](LiveStreamsAPI.md#getlivestreamslivestreamid) | **GET** /live-streams/{liveStreamId} | Show live stream
[**update**](LiveStreamsAPI.md#patchlivestreamslivestreamid) | **PATCH** /live-streams/{liveStreamId} | Update a live stream
[**create**](LiveStreamsAPI.md#postlivestreams) | **POST** /live-streams | Create live stream
[**uploadThumbnail**](LiveStreamsAPI.md#postlivestreamslivestreamidthumbnail) | **POST** /live-streams/{liveStreamId}/thumbnail | Upload a thumbnail


# **delete**
```swift
    open class func delete(liveStreamId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a live stream

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteThumbnail**
```swift
    open class func deleteThumbnail(liveStreamId: String, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Delete a thumbnail

Send the unique identifier for a live stream to delete it from the system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique identifier for the live stream you want to delete. 

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
 **liveStreamId** | **String** | The unique identifier for the live stream you want to delete.  | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(streamKey: String? = nil, name: String? = nil, sortBy: String? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: LiveStreamListResponse?, _ error: Error?) -> Void)
```

List all live streams

With no parameters added to the url, this will return all livestreams. Query by name or key to limit the list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let streamKey = "streamKey_example" // String | The unique stream key that allows you to stream videos. (optional)
let name = "name_example" // String | You can filter live streams by their name or a part of their name. (optional)
let sortBy = "sortBy_example" // String | Allowed: createdAt, publishedAt, name. createdAt - the time a livestream was created using the specified streamKey. publishedAt - the time a livestream was published using the specified streamKey. name - the name of the livestream. If you choose one of the time based options, the time is presented in ISO-8601 format. (optional)
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
 **sortBy** | **String** | Allowed: createdAt, publishedAt, name. createdAt - the time a livestream was created using the specified streamKey. publishedAt - the time a livestream was published using the specified streamKey. name - the name of the livestream. If you choose one of the time based options, the time is presented in ISO-8601 format. | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**LiveStreamListResponse**](LiveStreamListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(liveStreamId: String, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Show live stream

Supply a LivestreamId, and you'll get all the details for streaming into, and watching the livestream. Tutorials that use the [show livestream endpoint](https://api.video/blog/endpoints/live-stream-status).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream you want to watch.

// Show live stream
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(liveStreamId: String, liveStreamUpdatePayload: LiveStreamUpdatePayload, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Update a live stream

Use this endpoint to update the player, or to turn recording on/off (saving a copy of the livestream). NOTE: If the livestream is actively streaming, changing the recording status will only affect the NEXT stream.    The public=false 'private livestream' is available as a BETA feature, and should be limited to livestreams of 3,000 viewers or fewer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream that you want to update information for such as player details, or whether you want the recording on or off.
let liveStreamUpdatePayload = live-stream-update-payload(name: "name_example", _public: false, record: true, playerId: "playerId_example") // LiveStreamUpdatePayload | 

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
 **liveStreamId** | **String** | The unique ID for the live stream that you want to update information for such as player details, or whether you want the recording on or off. | 
 **liveStreamUpdatePayload** | [**LiveStreamUpdatePayload**](LiveStreamUpdatePayload.md) |  | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```swift
    open class func create(liveStreamCreationPayload: LiveStreamCreationPayload, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Create live stream

A live stream will give you the 'connection point' to RTMP your video stream to api.video. It will also give you the details for viewers to watch the same livestream.  The public=false 'private livestream' is available as a BETA feature, and should be limited to livestreams of 3,000 viewers or fewer. See our [Live Stream Tutorial](https://api.video/blog/tutorials/live-stream-tutorial) for a walkthrough of this API with OBS. Your RTMP endpoint for the livestream is rtmp://broadcast.api.video/s/{streamKey} Tutorials that [create live streams](https://api.video/blog/endpoints/live-create).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamCreationPayload = live-stream-creation-payload(name: "name_example", record: true, _public: false, playerId: "playerId_example") // LiveStreamCreationPayload | 

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadThumbnail**
```swift
    open class func uploadThumbnail(liveStreamId: String, file: URL, completion: @escaping (_ data: LiveStream?, _ error: Error?) -> Void)
```

Upload a thumbnail

Upload an image to use as a backdrop for your livestream. Tutorials that [update live stream thumbnails](https://api.video/blog/endpoints/live-upload-a-thumbnail).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique ID for the live stream you want to upload.
let file = URL(string: "https://example.com")! // URL | The image to be added as a thumbnail.

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
 **file** | **URL** | The image to be added as a thumbnail. | 

### Return type

[**LiveStream**](LiveStream.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

