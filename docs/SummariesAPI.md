# SummariesAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SummariesAPI.md#postsummaries) | **POST** /summaries | Generate video summary
[**get**](SummariesAPI.md#getsummariessummaryidsource) | **GET** /summaries/{summaryId}/source | Get summary details
[**update**](SummariesAPI.md#patchsummariessummaryidsource) | **PATCH** /summaries/{summaryId}/source | Update summary details
[**delete**](SummariesAPI.md#deletesummariessummaryid) | **DELETE** /summaries/{summaryId} | Delete video summary
[**list**](SummariesAPI.md#getsummaries) | **GET** /summaries | List summaries


# **create**
```swift
    open class func create(inlineObject: InlineObject, completion: @escaping (_ data: SummaryObject?, _ error: Error?) -> Void)
    open class func create(inlineObject: InlineObject, completion: @escaping (_ result: Swift.Result<Response<SummaryObject>, ErrorResponse>) -> Void)
```

Generate video summary

Generate a title, abstract, and key takeaways for a video.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let inlineObject = InlineObject(videoId: "videoId_example", origin: "origin_example") // InlineObject | 

// Generate video summary
SummariesAPI.create(inlineObject: inlineObject) { (response, error) in
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
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | 

### Return type

[**SummaryObject**](SummaryObject.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: applictaion/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(summaryId: String, completion: @escaping (_ data: SummarySource?, _ error: Error?) -> Void)
    open class func get(summaryId: String, completion: @escaping (_ result: Swift.Result<Response<SummarySource>, ErrorResponse>) -> Void)
```

Get summary details

Get all details for a summary.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryId = "summaryId_example" // String | The unique identifier of the summary source you want to retrieve.

// Get summary details
SummariesAPI.get(summaryId: summaryId) { (response, error) in
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

# **update**
```swift
    open class func update(summaryId: String, updateSummaryRequest: UpdateSummaryRequest, completion: @escaping (_ data: SummarySource?, _ error: Error?) -> Void)
    open class func update(summaryId: String, updateSummaryRequest: UpdateSummaryRequest, completion: @escaping (_ result: Swift.Result<Response<SummarySource>, ErrorResponse>) -> Void)
```

Update summary details

Update details for a summary. Note that this operation is only allowed for summary objects where `sourceStatus` is `missing`.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let summaryId = "summaryId_example" // String | The unique identifier of the summary source you want to update.
let updateSummaryRequest = UpdateSummaryRequest(title: "title_example", abstract: "abstract_example", takeaways: ["takeaways_example"]) // UpdateSummaryRequest | 

// Update summary details
SummariesAPI.update(summaryId: summaryId, updateSummaryRequest: updateSummaryRequest) { (response, error) in
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
 **updateSummaryRequest** | [**UpdateSummaryRequest**](UpdateSummaryRequest.md) |  | 

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
    open class func list(completion: @escaping (_ data: GetSummaries?, _ error: Error?) -> Void)
    open class func list(completion: @escaping (_ result: Swift.Result<Response<GetSummaries>, ErrorResponse>) -> Void)
```

List summaries

List all summarries for your videos in a project.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient


// List summaries
SummariesAPI.list() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**GetSummaries**](GetSummaries.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

