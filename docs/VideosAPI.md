# VideosAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](VideosAPI.md#deletevideo) | **DELETE** /videos/{videoId} | Delete a video
[**get**](VideosAPI.md#getvideo) | **GET** /videos/{videoId} | Show a video
[**getStatus**](VideosAPI.md#getvideostatus) | **GET** /videos/{videoId}/status | Show video status
[**list**](VideosAPI.md#listvideos) | **GET** /videos | List all videos
[**update**](VideosAPI.md#patchvideo) | **PATCH** /videos/{videoId} | Update a video
[**pickThumbnail**](VideosAPI.md#patchvideosvideoidthumbnail) | **PATCH** /videos/{videoId}/thumbnail | Pick a thumbnail
[**uploadWithUploadToken**](VideosAPI.md#postupload) | **POST** /upload | Upload with an upload token
[**create**](VideosAPI.md#postvideo) | **POST** /videos | Create a video
[**upload**](VideosAPI.md#postvideosvideoidsource) | **POST** /videos/{videoId}/source | Upload a video
[**uploadThumbnail**](VideosAPI.md#postvideosvideoidthumbnail) | **POST** /videos/{videoId}/thumbnail | Upload a thumbnail


# **delete**
```swift
    open class func delete(videoId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video

If you do not need a video any longer, you can send a request to delete it. All you need is the videoId. Tutorials using [video deletion](https://api.video/blog/endpoints/video-delete).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The video ID for the video you want to delete.

// Delete a video
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(videoId: String, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Show a video

This call provides the same JSON information provided on video creation. For private videos, it will generate a unique token url. Use this to retrieve any details you need about a video, or set up a private viewing URL. Tutorials using [video GET](https://api.video/blog/endpoints/video-get).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want details about.

// Show a video
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus(videoId: String, completion: @escaping (_ data: VideoStatus?, _ error: Error?) -> Void)
```

Show video status

This API provides upload status & encoding status to determine when the video is uploaded or ready to playback. Once encoding is completed, the response also lists the available stream qualities. Tutorials using [video status](https://api.video/blog/endpoints/video-status).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want the status for.

// Show video status
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(title: String? = nil, tags: [String]? = nil, metadata: [String: String]? = nil, description: String? = nil, liveStreamId: String? = nil, sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: VideosListResponse?, _ error: Error?) -> Void)
```

List all videos

Requests to this endpoint return a list of your videos (with all their details). With no parameters added to this query, the API returns all videos. You can filter what videos the API returns using the parameters described below.  We have [several tutorials](https://api.video/blog/endpoints/video-list) that demonstrate this endpoint.

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

// List all videos
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(videoId: String, videoUpdatePayload: VideoUpdatePayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Update a video

Use this endpoint to update the parameters associated with your video. The video you are updating is determined by the video ID you provide in the path. For each parameter you want to update, include the update in the request body. NOTE: If you are updating an array, you must provide the entire array as what you provide here overwrites what is in the system rather than appending to it. Tutorials using [video update](https://api.video/blog/endpoints/video-update).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The video ID for the video you want to delete.
let videoUpdatePayload = video-update-payload(playerId: "playerId_example", title: "title_example", description: "description_example", _public: true, panoramic: false, mp4Support: true, tags: ["tags_example"], metadata: [metadata(key: "key_example", value: "value_example")]) // VideoUpdatePayload | 

// Update a video
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
 **videoId** | **String** | The video ID for the video you want to delete. | 
 **videoUpdatePayload** | [**VideoUpdatePayload**](VideoUpdatePayload.md) |  | 

### Return type

[**Video**](Video.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pickThumbnail**
```swift
    open class func pickThumbnail(videoId: String, videoThumbnailPickPayload: VideoThumbnailPickPayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Pick a thumbnail

Pick a thumbnail from the given time code. If you'd like to upload an image for your thumbnail, use the [Upload a Thumbnail](https://docs.api.video/reference#post_videos-videoid-thumbnail) endpoint. There may be a short delay for the thumbnail to update. Tutorials using [Thumbnail picking](https://api.video/blog/endpoints/video-pick-a-thumbnail).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Unique identifier of the video you want to add a thumbnail to, where you use a section of your video as the thumbnail.
let videoThumbnailPickPayload = video-thumbnail-pick-payload(timecode: "timecode_example") // VideoThumbnailPickPayload | 

// Pick a thumbnail
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadWithUploadToken**
```swift
    open class func uploadWithUploadToken(token: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload with an upload token

When given a token, anyone can upload a file to the URI `https://ws.api.video/upload?token=<tokenId>`.  Example with cURL:  ```curl $ curl  --request POST --url 'https://ws.api.video/upload?token=toXXX'  --header 'content-type: multipart/form-data'  -F file=@video.mp4 ```  Or in an HTML form, with a little JavaScript to convert the form into JSON: ```html <!--form for user interaction--> <form name=\"videoUploadForm\" >   <label for=video>Video:</label>   <input type=file name=source/><br/>   <input value=\"Submit\" type=\"submit\"> </form> <div></div> <!--JS takes the form data      uses FormData to turn the response into JSON.     then uses POST to upload the video file.     Update the token parameter in the url to your upload token.     --> <script>    var form = document.forms.namedItem(\"videoUploadForm\");     form.addEventListener('submit', function(ev) {   ev.preventDefault();      var oOutput = document.querySelector(\"div\"),          oData = new FormData(form);      var oReq = new XMLHttpRequest();         oReq.open(\"POST\", \"https://ws.api.video/upload?token=toXXX\", true);      oReq.send(oData);   oReq.onload = function(oEvent) {        if (oReq.status ==201) {          oOutput.innerHTML = \"Your video is uploaded!<br/>\"  + oReq.response;        } else {          oOutput.innerHTML = \"Error \" + oReq.status + \" occurred when trying to upload your file.<br />\";        }      };    }, false);  </script> ```   ### Dealing with large files  You can upload large files on api.video with <a href='https://docs.api.video/reference/post_videos-videoid-source'>Progressive Upload</a>. Alternatively, if you want to use regular upload, we have created a <a href='https://api.video/blog/tutorials/uploading-large-files-with-javascript'>tutorial</a> to walk through the steps required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let token = "token_example" // String | The unique identifier for the token you want to use to upload a video.
let file = URL(string: "https://example.com")! // URL | The path to the video you want to upload.

// Upload with an upload token
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

# **create**
```swift
    open class func create(videoCreationPayload: VideoCreationPayload, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Create a video

 ## We have tutorials on: * [Creating and uploading videos](https://api.video/blog/tutorials/video-upload-tutorial) * [Uploading large videos](https://api.video/blog/tutorials/video-upload-tutorial-large-videos)   * [Using tags with videos](https://api.video/blog/tutorials/video-tagging-best-practices) * [Private videos](https://api.video/blog/tutorials/tutorial-private-videos) * [Using Dynamic Metadata](https://api.video/blog/tutorials/dynamic-metadata)  * Full list of [tutorials](https://api.video/blog/endpoints/video-create) that demonstrate this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoCreationPayload = video-creation-payload(title: "title_example", description: "description_example", source: "source_example", _public: true, panoramic: false, mp4Support: true, playerId: "playerId_example", tags: ["tags_example"], metadata: [metadata(key: "key_example", value: "value_example")]) // VideoCreationPayload | video to create

// Create a video
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload**
```swift
    open class func upload(videoId: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload a video

To upload a video to the videoId you created. Replace {videoId} with the id you'd like to use, {access_token} with your token, and /path/to/video.mp4 with the path to the video you'd like to upload. You can only upload your video to the videoId once. We offer 2 types of upload:  * Regular upload  * Progressive upload The latter allows you to split a video source into X chunks and send those chunks independently (concurrently or sequentially). The 2 main goals for our users are to   * allow the upload of video sources > 200 MiB (200 MiB = the max. allowed file size for regular upload)   * allow to send a video source \"progressively\", i.e., before before knowing the total size of the video.   Once all chunks have been sent, they are reaggregated to one source file. The video source is considered as \"completely sent\" when the \"last\" chunk is sent (i.e., the chunk that \"completes\" the upload). ```bash curl https://ws.api.video/videos/{videoId}/source \\   -H 'Authorization: Bearer {access_token}' \\   -F file=@/path/to/video.mp4    ``` Tutorials using [video upload](https://api.video/blog/endpoints/video-upload).

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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadThumbnail**
```swift
    open class func uploadThumbnail(videoId: String, file: URL, completion: @escaping (_ data: Video?, _ error: Error?) -> Void)
```

Upload a thumbnail

The thumbnail is the poster that appears in the player window before video playback begins. This endpoint allows you to upload an image for the thumbnail. To select a still frame from the video using a time stamp, use [Pick a Thumbnail](https://docs.api.video/reference#patch_videos-videoid-thumbnail) to pick a time in the video.  Note: There may be a short delay before the new thumbnail is delivered to our CDN. Tutorials using [Thumbnail upload](https://api.video/blog/endpoints/videos-upload-a-thumbnail).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Unique identifier of the chosen video 
let file = URL(string: "https://example.com")! // URL | The .jpg image to be added as a thumbnail.

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
 **file** | **URL** | The .jpg image to be added as a thumbnail. | 

### Return type

[**Video**](Video.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

