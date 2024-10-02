# TagsAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TagsAPI.md#listtags) | **GET** /tags | List all video tags


# **list**
```swift
    open class func list(value: String? = nil, sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ListTagsResponse?, _ error: Error?) -> Void)
    open class func list(value: String? = nil, sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ result: Swift.Result<Response<ListTagsResponse>, ErrorResponse>) -> Void)
```

List all video tags

This endpoint enables you to search for video tags in a project and see how many videos are tagged with them. If you do not define any query parameters, the endpoint lists all video tags and the numbers of times they are used in a project.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let value = "value_example" // String | Use this parameter to search for specific video tags. The API filters results even on partial values, and ignores accents, uppercase, and lowercase.  (optional)
let sortBy = "sortBy_example" // String | Use this parameter to choose which field the API will use to sort the response data. The default is `value`.  These are the available fields to sort by:  - `value`: Sorts the results based on tag values in alphabetic order. - `videoCount`: Sorts the results based on the number of times a video tag is used.  (optional)
let sortOrder = "sortOrder_example" // String | Use this parameter to sort results. `asc` is ascending and sorts from A to Z. `desc` is descending and sorts from Z to A. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all video tags
TagsAPI.list(value: value, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **value** | **String** | Use this parameter to search for specific video tags. The API filters results even on partial values, and ignores accents, uppercase, and lowercase.  | [optional] 
 **sortBy** | **String** | Use this parameter to choose which field the API will use to sort the response data. The default is &#x60;value&#x60;.  These are the available fields to sort by:  - &#x60;value&#x60;: Sorts the results based on tag values in alphabetic order. - &#x60;videoCount&#x60;: Sorts the results based on the number of times a video tag is used.  | [optional] 
 **sortOrder** | **String** | Use this parameter to sort results. &#x60;asc&#x60; is ascending and sorts from A to Z. &#x60;desc&#x60; is descending and sorts from Z to A. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**ListTagsResponse**](ListTagsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

