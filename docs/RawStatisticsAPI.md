# RawStatisticsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLiveStreamSessions**](RawStatisticsAPI.md#getanalyticslivestreamslivestreamid) | **GET** /analytics/live-streams/{liveStreamId} | List live stream player sessions
[**listSessionEvents**](RawStatisticsAPI.md#getanalyticssessionssessionidevents) | **GET** /analytics/sessions/{sessionId}/events | List player session events
[**listVideoSessions**](RawStatisticsAPI.md#getanalyticsvideosvideoid) | **GET** /analytics/videos/{videoId} | List video player sessions


# **listLiveStreamSessions**
```swift
    open class func listLiveStreamSessions(liveStreamId: String, period: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: RawStatisticsListLiveStreamAnalyticsResponse?, _ error: Error?) -> Void)
```

List live stream player sessions


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let liveStreamId = "liveStreamId_example" // String | The unique identifier for the live stream you want to retrieve analytics for.
let period = "period_example" // String | Period must have one of the following formats:  - For a day : \"2018-01-01\", - For a week: \"2018-W01\",  - For a month: \"2018-01\" - For a year: \"2018\" For a range period:  -  Date range: \"2018-01-01/2018-01-15\"  (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List live stream player sessions
RawStatisticsAPI.listLiveStreamSessions(liveStreamId: liveStreamId, period: period, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **liveStreamId** | **String** | The unique identifier for the live stream you want to retrieve analytics for. | 
 **period** | **String** | Period must have one of the following formats:  - For a day : \&quot;2018-01-01\&quot;, - For a week: \&quot;2018-W01\&quot;,  - For a month: \&quot;2018-01\&quot; - For a year: \&quot;2018\&quot; For a range period:  -  Date range: \&quot;2018-01-01/2018-01-15\&quot;  | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**RawStatisticsListLiveStreamAnalyticsResponse**](RawStatisticsListLiveStreamAnalyticsResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessionEvents**
```swift
    open class func listSessionEvents(sessionId: String, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: RawStatisticsListPlayerSessionEventsResponse?, _ error: Error?) -> Void)
```

List player session events

Useful to track and measure video's engagement.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let sessionId = "sessionId_example" // String | A unique identifier you can use to reference and track a session with.
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List player session events
RawStatisticsAPI.listSessionEvents(sessionId: sessionId, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **sessionId** | **String** | A unique identifier you can use to reference and track a session with. | 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**RawStatisticsListPlayerSessionEventsResponse**](RawStatisticsListPlayerSessionEventsResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVideoSessions**
```swift
    open class func listVideoSessions(videoId: String, period: String? = nil, metadata: [String: String]? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: RawStatisticsListSessionsResponse?, _ error: Error?) -> Void)
```

List video player sessions

Retrieve all available user sessions for a specific video. Tutorials that use the [analytics endpoint](https://api.video/blog/endpoints/analytics).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let videoId = "videoId_example" // String | The unique identifier for the video you want to retrieve session information for.
let period = "period_example" // String | Period must have one of the following formats:  - For a day : 2018-01-01, - For a week: 2018-W01,  - For a month: 2018-01 - For a year: 2018 For a range period:  -  Date range: 2018-01-01/2018-01-15  (optional)
let metadata = "TODO" // [String: String] | Metadata and [Dynamic Metadata](https://api.video/blog/endpoints/dynamic-metadata) filter. Send an array of key value pairs you want to filter sessios with. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List video player sessions
RawStatisticsAPI.listVideoSessions(videoId: videoId, period: period, metadata: metadata, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **videoId** | **String** | The unique identifier for the video you want to retrieve session information for. | 
 **period** | **String** | Period must have one of the following formats:  - For a day : 2018-01-01, - For a week: 2018-W01,  - For a month: 2018-01 - For a year: 2018 For a range period:  -  Date range: 2018-01-01/2018-01-15  | [optional] 
 **metadata** | [**[String: String]**](String.md) | Metadata and [Dynamic Metadata](https://api.video/blog/endpoints/dynamic-metadata) filter. Send an array of key value pairs you want to filter sessios with. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**RawStatisticsListSessionsResponse**](RawStatisticsListSessionsResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

