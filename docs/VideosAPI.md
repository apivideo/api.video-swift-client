# VideosAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](VideosAPI.md#postvideo) | **POST** /videos | Create a video object
[**upload**](VideosAPI.md#postvideosvideoidsource) | **POST** /videos/{videoId}/source | Upload a video
[**uploadWithUploadToken**](VideosAPI.md#postupload) | **POST** /upload | Upload with an delegated upload token
[**get**](VideosAPI.md#getvideo) | **GET** /videos/{videoId} | Retrieve a video object
[**update**](VideosAPI.md#patchvideo) | **PATCH** /videos/{videoId} | Update a video object
[**delete**](VideosAPI.md#deletevideo) | **DELETE** /videos/{videoId} | Delete a video object
[**list**](VideosAPI.md#listvideos) | **GET** /videos | List all video objects
[**uploadThumbnail**](VideosAPI.md#postvideosvideoidthumbnail) | **POST** /videos/{videoId}/thumbnail | Upload a thumbnail
[**pickThumbnail**](VideosAPI.md#patchvideosvideoidthumbnail) | **PATCH** /videos/{videoId}/thumbnail | Set a thumbnail
[**getStatus**](VideosAPI.md#getvideostatus) | **GET** /videos/{videoId}/status | Retrieve video status and details


# **create**
```swift
    open class func create(videoCreationPayload: VideoCreationPayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Create a video object

Creates a video object. More information on video objects can be found [here](https://docs.api.video/reference/videos-1). 


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoCreationPayload = video-creation-payload(title: "title_example", description: "description_example", source: "source_example", _public: true, panoramic: false, mp4Support: true, playerId: "playerId_example", tags: ["tags_example"], metadata: [metadata(key: "key_example", value: "value_example")], clip: video-clip(startTimecode: "startTimecode_example", endTimecode: "endTimecode_example"), watermark: video-watermark(id: "id_example", top: "top_example", _left: "_left_example", bottom: "bottom_example", _right: "_right_example", width: "width_example", height: "height_example", opacity: "opacity_example")) // VideoCreationPayload | video to create

// Create a video object
VideosAPI.create(videoCreationPayload: videoCreationPayload) { (response, error) in
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
 **videoCreationPayload** | [**VideoCreationPayload**](VideoCreationPayload.md) | video to create | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload**
```swift
    open class func upload(videoId: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload a video

To upload a video to the videoId you created. You can only upload your video to the videoId once.



We offer 2 types of upload: 

* Regular upload 

* Progressive upload

The latter allows you to split a video source into X chunks and send those chunks independently (concurrently or sequentially). The 2 main goals for our users are to

  * allow the upload of video sources > 200 MiB (200 MiB = the max. allowed file size for regular upload)

  * allow to send a video source "progressively", i.e., before before knowing the total size of the video.

  Once all chunks have been sent, they are reaggregated to one source file. The video source is considered as "completely sent" when the "last" chunk is sent (i.e., the chunk that "completes" the upload).




### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Enter the videoId you want to use to upload your video.
let file = URL(string: "https://example.com")! // URL | The path to the video you would like to upload. The path must be local. If you want to use a video from an online source, you must use the \\\"/videos\\\" endpoint and add the \\\"source\\\" parameter when you create a new video.

// Upload a video
VideosAPI.upload(videoId: videoId, file: file) { (response, error) in
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
 **videoId** | **String** | Enter the videoId you want to use to upload your video. | 
 **file** | **URL** | The path to the video you would like to upload. The path must be local. If you want to use a video from an online source, you must use the \\\&quot;/videos\\\&quot; endpoint and add the \\\&quot;source\\\&quot; parameter when you create a new video. | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadWithUploadToken**
```swift
    open class func uploadWithUploadToken(token: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload with an delegated upload token

This method allows you to send a video using an upload token. Upload tokens are especially useful when the upload is done from the client side. If you want to upload a video from your server-side application, you'd better use the [standard upload method](#upload).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let token = "token_example" // String | The unique identifier for the token you want to use to upload a video.
let file = URL(string: "https://example.com")! // URL | The path to the video you want to upload.

// Upload with an delegated upload token
VideosAPI.uploadWithUploadToken(token: token, file: file) { (response, error) in
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
 **token** | **String** | The unique identifier for the token you want to use to upload a video. | 
 **file** | **URL** | The path to the video you want to upload. | 

### Return type

[**Video**](Video.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(videoId: String, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Retrieve a video object

This call provides the same information provided on video creation. For private videos, it will generate a unique token url. Use this to retrieve any details you need about a video, or set up a private viewing URL.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want details about.

// Retrieve a video object
VideosAPI.get(videoId: videoId) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want details about. | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(videoId: String, videoUpdatePayload: VideoUpdatePayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Update a video object

Updates the parameters associated with a video ID. The video object you are updating is determined by the video ID you provide. 



NOTE: If you are updating an array, you must provide the entire array as what you provide here overwrites what is in the system rather than appending to it.




### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The video ID for the video you want to update.
let videoUpdatePayload = video-update-payload(playerId: NullableString(value: "pl4k0jvEUuaTdRAEjQ4Jfrgz"), title: "title_example", description: "description_example", _public: true, panoramic: false, mp4Support: true, tags: ["tags_example"], metadata: [metadata(key: "key_example", value: "value_example")]) // VideoUpdatePayload | 

// Update a video object
VideosAPI.update(videoId: videoId, videoUpdatePayload: videoUpdatePayload) { (response, error) in
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
 **videoId** | **String** | The video ID for the video you want to update. | 
 **videoUpdatePayload** | [**VideoUpdatePayload**](VideoUpdatePayload.md) |  | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(videoId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video object

If you do not need a video any longer, you can send a request to delete it. All you need is the videoId.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The video ID for the video you want to delete.

// Delete a video object
VideosAPI.delete(videoId: videoId) { (response, error) in
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
 **videoId** | **String** | The video ID for the video you want to delete. | 

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
    open class func list(title: String? = nil, tags: [String]? = nil, metadata: [String: String]? = nil, description: String? = nil, liveStreamId: String? = nil, sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: VideosListResponse?, _ error: Error?) -> Void)
```

List all video objects

This method returns a list of your videos (with all their details). With no parameters added, the API returns the first page of all videos. You can filter videos using the parameters described below.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let title = "title_example" // String | The title of a specific video you want to find. The search will match exactly to what term you provide and return any videos that contain the same term as part of their titles. (optional)
let tags = ["inner_example"] // [String] | A tag is a category you create and apply to videos. You can search for videos with particular tags by listing one or more here. Only videos that have all the tags you list will be returned. (optional)
let metadata = "TODO" // [String: String] | Videos can be tagged with metadata tags in key:value pairs. You can search for videos with specific key value pairs using this parameter. [Dynamic Metadata](https://api.video/blog/endpoints/dynamic-metadata) allows you to define a key that allows any value pair. (optional)
let description = "description_example" // String | If you described a video with a term or sentence, you can add it here to return videos containing this string. (optional)
let liveStreamId = "liveStreamId_example" // String | If you know the ID for a live stream, you can retrieve the stream by adding the ID for it here. (optional)
let sortBy = "sortBy_example" // String | Allowed: publishedAt, title. You can search by the time videos were published at, or by title. (optional)
let sortOrder = "sortOrder_example" // String | Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all video objects
VideosAPI.list(title: title, tags: tags, metadata: metadata, description: description, liveStreamId: liveStreamId, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **title** | **String** | The title of a specific video you want to find. The search will match exactly to what term you provide and return any videos that contain the same term as part of their titles. | [optional] 
 **tags** | [**[String]**](String.md) | A tag is a category you create and apply to videos. You can search for videos with particular tags by listing one or more here. Only videos that have all the tags you list will be returned. | [optional] 
 **metadata** | [**[String: String]**](String.md) | Videos can be tagged with metadata tags in key:value pairs. You can search for videos with specific key value pairs using this parameter. [Dynamic Metadata](https://api.video/blog/endpoints/dynamic-metadata) allows you to define a key that allows any value pair. | [optional] 
 **description** | **String** | If you described a video with a term or sentence, you can add it here to return videos containing this string. | [optional] 
 **liveStreamId** | **String** | If you know the ID for a live stream, you can retrieve the stream by adding the ID for it here. | [optional] 
 **sortBy** | **String** | Allowed: publishedAt, title. You can search by the time videos were published at, or by title. | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**VideosListResponse**](VideosListResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadThumbnail**
```swift
    open class func uploadThumbnail(videoId: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload a thumbnail

The thumbnail is the poster that appears in the player window before video playback begins.



This endpoint allows you to upload an image for the thumbnail.



To select a still frame from the video using a time stamp, use the [dedicated method](#pickThumbnail) to pick a time in the video.



Note: There may be a short delay before the new thumbnail is delivered to our CDN.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Unique identifier of the chosen video 
let file = URL(string: "https://example.com")! // URL | The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB.

// Upload a thumbnail
VideosAPI.uploadThumbnail(videoId: videoId, file: file) { (response, error) in
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
 **videoId** | **String** | Unique identifier of the chosen video  | 
 **file** | **URL** | The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB. | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pickThumbnail**
```swift
    open class func pickThumbnail(videoId: String, videoThumbnailPickPayload: VideoThumbnailPickPayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Set a thumbnail

Pick a thumbnail from the given time code. 



If you'd like to upload an image for your thumbnail, use the dedicated [method](#uploadThumbnail). 



There may be a short delay for the thumbnail to update.




### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Unique identifier of the video you want to add a thumbnail to, where you use a section of your video as the thumbnail.
let videoThumbnailPickPayload = video-thumbnail-pick-payload(timecode: "timecode_example") // VideoThumbnailPickPayload | 

// Set a thumbnail
VideosAPI.pickThumbnail(videoId: videoId, videoThumbnailPickPayload: videoThumbnailPickPayload) { (response, error) in
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
 **videoId** | **String** | Unique identifier of the video you want to add a thumbnail to, where you use a section of your video as the thumbnail. | 
 **videoThumbnailPickPayload** | [**VideoThumbnailPickPayload**](VideoThumbnailPickPayload.md) |  | 

### Return type

[**Video**](Video.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus(videoId: String, completion: @escaping (_ data: VideoStatus?, _ error: Error?) -> Void)
```

Retrieve video status and details

This method provides upload status & encoding status to determine when the video is uploaded or ready to playback. Once encoding is completed, the response also lists the available stream qualities.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want the status for.

// Retrieve video status and details
VideosAPI.getStatus(videoId: videoId) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want the status for. | 

### Return type

[**VideoStatus**](VideoStatus.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

