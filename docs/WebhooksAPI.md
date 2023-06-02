# WebhooksAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WebhooksAPI.md#postwebhooks) | **POST** /webhooks | Create Webhook
[**get**](WebhooksAPI.md#getwebhook) | **GET** /webhooks/{webhookId} | Retrieve Webhook details
[**delete**](WebhooksAPI.md#deletewebhook) | **DELETE** /webhooks/{webhookId} | Delete a Webhook
[**list**](WebhooksAPI.md#listwebhooks) | **GET** /webhooks | List all webhooks


# **create**
```swift
    open class func create(webhooksCreationPayload: WebhooksCreationPayload, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Create Webhook

Webhooks can push notifications to your server, rather than polling api.video for changes. We currently offer four events:  * ```video.encoding.quality.completed``` Occurs when a new video is uploaded into your account, it will be encoded into several different HLS and mp4 qualities. When each version is encoded, your webhook will get a notification.  It will look like ```{ \"type\": \"video.encoding.quality.completed\", \"emittedAt\": \"2021-01-29T16:46:25.217+01:00\", \"videoId\": \"viXXXXXXXX\", \"encoding\": \"hls\", \"quality\": \"720p\"} ```. This request says that the 720p HLS encoding was completed. * ```live-stream.broadcast.started```  When a live stream begins broadcasting, the broadcasting parameter changes from false to true, and this webhook fires. * ```live-stream.broadcast.ended```  This event fires when a live stream has finished broadcasting. * ```video.source.recorded```  This event occurs when a live stream is recorded and submitted for encoding.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let webhooksCreationPayload = webhooks-creation-payload(events: ["events_example"], url: "url_example") // WebhooksCreationPayload | 

// Create Webhook
WebhooksAPI.create(webhooksCreationPayload: webhooksCreationPayload) { (response, error) in
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
 **webhooksCreationPayload** | [**WebhooksCreationPayload**](WebhooksCreationPayload.md) |  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(webhookId: String, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Retrieve Webhook details

Retrieve webhook details by id.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let webhookId = "webhookId_example" // String | The unique webhook you wish to retreive details on.

// Retrieve Webhook details
WebhooksAPI.get(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **String** | The unique webhook you wish to retreive details on. | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(webhookId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a Webhook

This method will delete the indicated webhook.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let webhookId = "webhookId_example" // String | The webhook you wish to delete.

// Delete a Webhook
WebhooksAPI.delete(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **String** | The webhook you wish to delete. | 

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
    open class func list(events: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: WebhooksListResponse?, _ error: Error?) -> Void)
```

List all webhooks

Thie method returns a list of your webhooks (with all their details). 

You can filter what the webhook list that the API returns using the parameters described below.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let events = "events_example" // String | The webhook event that you wish to filter on. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all webhooks
WebhooksAPI.list(events: events, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **events** | **String** | The webhook event that you wish to filter on. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**WebhooksListResponse**](WebhooksListResponse.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

