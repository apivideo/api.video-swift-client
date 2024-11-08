# SummariesAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SummariesAPI.md#postsummaries) | **POST** /summaries | Generate video summary
[**update**](SummariesAPI.md#patchsummariessummaryidsource) | **PATCH** /summaries/{summaryId}/source | Update summary details
[**delete**](SummariesAPI.md#deletesummariessummaryid) | **DELETE** /summaries/{summaryId} | Delete video summary
[**list**](SummariesAPI.md#getsummaries) | **GET** /summaries | List summaries
[**getSummarySource**](SummariesAPI.md#getsummariessummaryidsource) | **GET** /summaries/{summaryId}/source | Get summary details


# **create**
```swift
    open class func create(summaryCreationPayload: SummaryCreationPayload, completion: @escaping (_ data: Summary?, _ error: Error?) -> Void)
    open class func create(summaryCreationPayload: SummaryCreationPayload, completion: @escaping (_ result: Swift.Result<Response<Summary>, ErrorResponse>) -> Void)
```

Generate video summary

Generate an abstract and key takeaways for a video.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryCreationPayload = SummaryCreationPayload(videoId: "videoId_example", origin: "origin_example", attributes: ["attributes_example"]) // SummaryCreationPayload | 

// Generate video summary
SummariesAPI.create(summaryCreationPayload: summaryCreationPayload) { (response, error) in
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
 **summaryCreationPayload** | [**SummaryCreationPayload**](SummaryCreationPayload.md) |  | 

### Return type

[**Summary**](Summary.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(summaryId: String, summaryUpdatePayload: SummaryUpdatePayload, completion: @escaping (_ data: SummarySource?, _ error: Error?) -> Void)
    open class func update(summaryId: String, summaryUpdatePayload: SummaryUpdatePayload, completion: @escaping (_ result: Swift.Result<Response<SummarySource>, ErrorResponse>) -> Void)
```

Update summary details

Update details for a summary.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryId = "summaryId_example" // String | The unique identifier of the summary source you want to update.
let summaryUpdatePayload = SummaryUpdatePayload(abstract: "abstract_example", takeaways: ["takeaways_example"]) // SummaryUpdatePayload | 

// Update summary details
SummariesAPI.update(summaryId: summaryId, summaryUpdatePayload: summaryUpdatePayload) { (response, error) in
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
 **summaryId** | **String** | The unique identifier of the summary source you want to update. | 
 **summaryUpdatePayload** | [**SummaryUpdatePayload**](SummaryUpdatePayload.md) |  | 

### Return type

[**SummarySource**](SummarySource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(summaryId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
    open class func delete(summaryId: String, completion: @escaping (_ result: Swift.Result<Response<Void>, ErrorResponse>) -> Void)
```

Delete video summary

Delete a summary tied to a video.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryId = "summaryId_example" // String | The unique identifier of the summary you want to delete.

// Delete video summary
SummariesAPI.delete(summaryId: summaryId) { (response, error) in
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
 **summaryId** | **String** | The unique identifier of the summary you want to delete. | 

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
    open class func list(videoId: String? = nil, origin: Origin_list? = nil, sourceStatus: SourceStatus_list? = nil, sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: SummariesListResponse?, _ error: Error?) -> Void)
    open class func list(videoId: String? = nil, origin: Origin_list? = nil, sourceStatus: SourceStatus_list? = nil, sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ result: Swift.Result<Response<SummariesListResponse>, ErrorResponse>) -> Void)
```

List summaries

List all summarries for your videos in a project.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | Use this parameter to filter for a summary that belongs to a specific video. (optional)
let origin = "origin_example" // String | Use this parameter to filter for summaries based on the way they were created: automatically or manually via the API. (optional)
let sourceStatus = "sourceStatus_example" // String | Use this parameter to filter for summaries based on the current status of the summary source.  These are the available statuses:  `missing`: the input for a summary is not present. `waiting` : the input video is being processed and a summary will be generated. `failed`: a technical issue prevented summary generation. `completed`: the summary is generated. `unprocessable`: the API rules the source video to be unsuitable for summary generation. An example for this is an input video that has no audio.  (optional)
let sortBy = "sortBy_example" // String | Use this parameter to choose which field the API will use to sort the response data. The default is `value`.  These are the available fields to sort by:  - `createdAt`: Sorts the results based on date and timestamps when summaries were created. - `updatedAt`: Sorts the results based on date and timestamps when summaries were last updated. - `videoId`: Sorts the results based on video IDs.  (optional)
let sortOrder = "sortOrder_example" // String | Use this parameter to sort results. `asc` is ascending and sorts from A to Z. `desc` is descending and sorts from Z to A. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List summaries
SummariesAPI.list(videoId: videoId, origin: origin, sourceStatus: sourceStatus, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **videoId** | **String** | Use this parameter to filter for a summary that belongs to a specific video. | [optional] 
 **origin** | **String** | Use this parameter to filter for summaries based on the way they were created: automatically or manually via the API. | [optional] 
 **sourceStatus** | **String** | Use this parameter to filter for summaries based on the current status of the summary source.  These are the available statuses:  &#x60;missing&#x60;: the input for a summary is not present. &#x60;waiting&#x60; : the input video is being processed and a summary will be generated. &#x60;failed&#x60;: a technical issue prevented summary generation. &#x60;completed&#x60;: the summary is generated. &#x60;unprocessable&#x60;: the API rules the source video to be unsuitable for summary generation. An example for this is an input video that has no audio.  | [optional] 
 **sortBy** | **String** | Use this parameter to choose which field the API will use to sort the response data. The default is &#x60;value&#x60;.  These are the available fields to sort by:  - &#x60;createdAt&#x60;: Sorts the results based on date and timestamps when summaries were created. - &#x60;updatedAt&#x60;: Sorts the results based on date and timestamps when summaries were last updated. - &#x60;videoId&#x60;: Sorts the results based on video IDs.  | [optional] 
 **sortOrder** | **String** | Use this parameter to sort results. &#x60;asc&#x60; is ascending and sorts from A to Z. &#x60;desc&#x60; is descending and sorts from Z to A. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**SummariesListResponse**](SummariesListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSummarySource**
```swift
    open class func getSummarySource(summaryId: String, completion: @escaping (_ data: SummarySource?, _ error: Error?) -> Void)
    open class func getSummarySource(summaryId: String, completion: @escaping (_ result: Swift.Result<Response<SummarySource>, ErrorResponse>) -> Void)
```

Get summary details

Get all details for a summary.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryId = "summaryId_example" // String | The unique identifier of the summary source you want to retrieve.

// Get summary details
SummariesAPI.getSummarySource(summaryId: summaryId) { (response, error) in
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
 **summaryId** | **String** | The unique identifier of the summary source you want to retrieve. | 

### Return type

[**SummarySource**](SummarySource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

