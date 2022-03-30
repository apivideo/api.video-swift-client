# PlayerThemesAPI

All URIs are relative to *https://ws.api.video*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PlayerThemesAPI.md#postplayers) | **POST** /players | Create a player
[**get**](PlayerThemesAPI.md#getplayersplayerid) | **GET** /players/{playerId} | Retrieve a player
[**update**](PlayerThemesAPI.md#patchplayersplayerid) | **PATCH** /players/{playerId} | Update a player
[**delete**](PlayerThemesAPI.md#deleteplayersplayerid) | **DELETE** /players/{playerId} | Delete a player
[**list**](PlayerThemesAPI.md#getplayers) | **GET** /players | List all player themes
[**uploadLogo**](PlayerThemesAPI.md#postplayersplayeridlogo) | **POST** /players/{playerId}/logo | Upload a logo
[**deleteLogo**](PlayerThemesAPI.md#deleteplayersplayeridlogo) | **DELETE** /players/{playerId}/logo | Delete logo


# **create**
```swift
    open class func create(playerThemeCreationPayload: PlayerThemeCreationPayload, completion: @escaping (_ data: PlayerTheme?, _ error: Error?) -> Void)
```

Create a player

Create a player for your video, and customise it.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerThemeCreationPayload = player-theme-creation-payload(name: "name_example", text: "text_example", link: "link_example", linkHover: "linkHover_example", linkActive: "linkActive_example", trackPlayed: "trackPlayed_example", trackUnplayed: "trackUnplayed_example", trackBackground: "trackBackground_example", backgroundTop: "backgroundTop_example", backgroundBottom: "backgroundBottom_example", backgroundText: "backgroundText_example", enableApi: false, enableControls: false, forceAutoplay: false, hideTitle: false, forceLoop: false) // PlayerThemeCreationPayload | 

// Create a player
PlayerThemesAPI.create(playerThemeCreationPayload: playerThemeCreationPayload) { (response, error) in
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
 **playerThemeCreationPayload** | [**PlayerThemeCreationPayload**](PlayerThemeCreationPayload.md) |  | 

### Return type

[**PlayerTheme**](PlayerTheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```swift
    open class func get(playerId: String, completion: @escaping (_ data: PlayerTheme?, _ error: Error?) -> Void)
```

Retrieve a player

Use a player ID to retrieve details about the player and display it for viewers.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerId = "playerId_example" // String | The unique identifier for the player you want to retrieve. 

// Retrieve a player
PlayerThemesAPI.get(playerId: playerId) { (response, error) in
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
 **playerId** | **String** | The unique identifier for the player you want to retrieve.  | 

### Return type

[**PlayerTheme**](PlayerTheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```swift
    open class func update(playerId: String, playerThemeUpdatePayload: PlayerThemeUpdatePayload, completion: @escaping (_ data: PlayerTheme?, _ error: Error?) -> Void)
```

Update a player

Use a player ID to update specific details for a player.  NOTE: It may take up to 10 min before the new player configuration is available from our CDN.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerId = "playerId_example" // String | The unique identifier for the player.
let playerThemeUpdatePayload = player-theme-update-payload(name: "name_example", text: "text_example", link: "link_example", linkHover: "linkHover_example", linkActive: "linkActive_example", trackPlayed: "trackPlayed_example", trackUnplayed: "trackUnplayed_example", trackBackground: "trackBackground_example", backgroundTop: "backgroundTop_example", backgroundBottom: "backgroundBottom_example", backgroundText: "backgroundText_example", enableApi: false, enableControls: false, forceAutoplay: false, hideTitle: false, forceLoop: false) // PlayerThemeUpdatePayload | 

// Update a player
PlayerThemesAPI.update(playerId: playerId, playerThemeUpdatePayload: playerThemeUpdatePayload) { (response, error) in
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
 **playerId** | **String** | The unique identifier for the player. | 
 **playerThemeUpdatePayload** | [**PlayerThemeUpdatePayload**](PlayerThemeUpdatePayload.md) |  | 

### Return type

[**PlayerTheme**](PlayerTheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(playerId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a player

Delete a player if you no longer need it. You can delete any player that you have the player ID for.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerId = "playerId_example" // String | The unique identifier for the player you want to delete.

// Delete a player
PlayerThemesAPI.delete(playerId: playerId) { (response, error) in
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
 **playerId** | **String** | The unique identifier for the player you want to delete. | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(sortBy: SortBy_list? = nil, sortOrder: SortOrder_list? = nil, currentPage: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PlayerThemesListResponse?, _ error: Error?) -> Void)
```

List all player themes

Retrieve a list of all the player themes you created, as well as details about each one. Tutorials that use the [player endpoint](https://api.video/blog/endpoints/player).


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let sortBy = "sortBy_example" // String | createdAt is the time the player was created. updatedAt is the time the player was last updated. The time is presented in ISO-8601 format. (optional)
let sortOrder = "sortOrder_example" // String | Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. (optional)
let currentPage = 987 // Int | Choose the number of search results to return per page. Minimum value: 1 (optional) (default to 1)
let pageSize = 987 // Int | Results per page. Allowed values 1-100, default is 25. (optional) (default to 25)

// List all player themes
PlayerThemesAPI.list(sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize) { (response, error) in
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
 **sortBy** | **String** | createdAt is the time the player was created. updatedAt is the time the player was last updated. The time is presented in ISO-8601 format. | [optional] 
 **sortOrder** | **String** | Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. | [optional] 
 **currentPage** | **Int** | Choose the number of search results to return per page. Minimum value: 1 | [optional] [default to 1]
 **pageSize** | **Int** | Results per page. Allowed values 1-100, default is 25. | [optional] [default to 25]

### Return type

[**PlayerThemesListResponse**](PlayerThemesListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLogo**
```swift
    open class func uploadLogo(playerId: String, file: URL, link: String? = nil, completion: @escaping (_ data: PlayerTheme?, _ error: Error?) -> Void)
```

Upload a logo

The uploaded image maximum size should be 200x100 and its weight should be 100KB.  It will be scaled down to 30px height and converted to PNG to be displayed in the player.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerId = "playerId_example" // String | The unique identifier for the player.
let file = URL(string: "https://example.com")! // URL | The name of the file you want to use for your logo.
let link = "link_example" // String | A public link that you want to advertise in your player. For example, you could add a link to your company. When a viewer clicks on your logo, they will be taken to this address. (optional)

// Upload a logo
PlayerThemesAPI.uploadLogo(playerId: playerId, file: file, link: link) { (response, error) in
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
 **playerId** | **String** | The unique identifier for the player. | 
 **file** | **URL** | The name of the file you want to use for your logo. | 
 **link** | **String** | A public link that you want to advertise in your player. For example, you could add a link to your company. When a viewer clicks on your logo, they will be taken to this address. | [optional] 

### Return type

[**PlayerTheme**](PlayerTheme.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLogo**
```swift
    open class func deleteLogo(playerId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete logo

Delete the logo associated to a player.


### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ApiVideoClient

let playerId = "playerId_example" // String | The unique identifier for the player.

// Delete logo
PlayerThemesAPI.deleteLogo(playerId: playerId) { (response, error) in
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
 **playerId** | **String** | The unique identifier for the player. | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

